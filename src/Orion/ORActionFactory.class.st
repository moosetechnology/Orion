"
The Builder that creates ORAction based on Traits 
"
Class {
	#name : 'ORActionFactory',
	#superclass : 'Object',
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'class building' }
ORActionFactory >> buildAddClass: aClass [

	| code setFamixLines entityName |
	aClass slots isEmpty ifTrue: [ ^ nil ].
	entityName := aClass name
		              copyFrom: 'ORActionAddT' size + 1
		              to: aClass name size.
	setFamixLines := self getSetFamixLines: aClass.
	code := 'run

	super run.

	' , setFamixLines , '

	newEntity resetMooseName.

	entity := newEntity.
	^ entity'.
	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionFactory >> buildClass: aClass ofType: aType [

	| selector |
	self createAssessors: aClass.

	selector := 'build' , aType , 'Class:'.
	self perform: selector asSymbol with:  aClass.
	"aType = 'Add' ifTrue: [ self buildAddClass: aClass ].
	aType = 'Del' ifTrue: [ self buildDelClass: aClass ].
	aType = 'Move' ifTrue: [ self buildMoveClass: aClass ].
	aType = 'Ren' ifTrue: [ self buildRenClass: aClass ]"
]

{ #category : 'class building' }
ORActionFactory >> buildMoveClass: aClass [
]

{ #category : 'class building' }
ORActionFactory >> buildRemoveClass: aClass [

	| code setFamixLines entityName |
	aClass slots isEmpty ifTrue: [ ^ nil ].
	entityName := aClass copyFrom: 'ORActionRemoveT' size + 1.
	setFamixLines := aClass slots do: [ :slot |
		                 ^ 'self setFamixProperty: #' , slot name
		                   , ' on: entity to: nil.' ].
	setFamixLines := setFamixLines allButFirst
		                 inject: setFamixLines first
		                 into: [ :str :each | str , ' ' , each ].
		
	code := 'run

	' , setFamixLines , '

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity'.

	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionFactory >> buildRenameClass: aClass [
]

{ #category : 'class building' }
ORActionFactory >> createAssessors: aClass [

	| slotNames |
	slotNames := aClass slots.
	slotNames do: [ :slot |
		| get set |
		get := slot name , ' ^' , slot name.
		set := slot name , ': aValue ' , slot name , ' := aValue'.
		aClass compile: get classified: 'accessing'.
		aClass compile: set classified: 'accessing' ]
]

{ #category : 'class building' }
ORActionFactory >> createClass: class with: aType ofType: famixJava [

	| className classSuffix slots superclass |
	classSuffix := class name
		               copyFrom: 'FamixT' size + 1
		               to: class name size.

	^ (famixJava includes: classSuffix) ifTrue: [
		  className := 'ORAction' , aType , 'T' , classSuffix.
		  superclass := Smalltalk
			                at: ('ORAction' , aType) asSymbol
			                ifAbsent: [ nil ].

		  slots := class allSlots select: [ :e | e isToOne ].

		  (((Smalltalk at: ('FamixT' , classSuffix) asSymbol) allSlots
			    collect: [ :each | each name ]) includes: 'name') ifTrue: [
			  superclass := Smalltalk
				                at: ('ORAction' , aType , 'NamedEntity') asSymbol
				                ifAbsent: [ nil ].
			  slots := slots reject: [ :e | e name = 'name' ] ].

		  self
			  makeClass: className
			  with: slots
			  inheriting: superclass
			  in: 'Orion'.
		  self
			  buildClass: (Smalltalk at: className asSymbol ifAbsent: [ nil ])
			  ofType: aType ]
]

{ #category : 'class building' }
ORActionFactory >> getNewEntitySelector [

	| famixJava |
	famixJava := FamixJavaTEntityCreator allMethods asOrderedCollection. "methods of FamixJavaTEntityCreator"
	famixJava := famixJava select: [ :m | m argumentNames isEmpty ] thenCollect: #selector. "extracting selectors that does not take any parameters"
	famixJava := famixJava collect: [ :e | e copyFrom: 4 to: e size ]. "removing the 'new' at the beginning of method signature"

	^ famixJava
]

{ #category : 'class building' }
ORActionFactory >> getSetFamixLines: aClass [

	| setFamixLines |
	setFamixLines := aClass slots collect: [ :slot |
		                 'self setFamixProperty: #' , slot name
		                 , ' on: newEntity to: self ' , slot name , '.' ].
	setFamixLines := setFamixLines allButFirst
		                 inject: setFamixLines first
		                 into: [ :str :each | str , ' ' , each ].
	^ setFamixLines
]

{ #category : 'class building' }
ORActionFactory >> makeClass: className with: slots inheriting: superclass in: package [

	Smalltalk classInstaller make: [ :builder |
		builder
			superclass: superclass;
			name: className;
			slots: (slots collect: [ :e | e name ]);
			sharedVariablesFromString: '';
			sharedPools: '';
			tag: #Actions;
			package: package;
			environment: Object environment ]
]

{ #category : 'class building' }
ORActionFactory >> orActionBuilder: aPackageName [

	| package classes |
	package := PackageOrganizer default packageNamed: aPackageName.
	classes := package classes asOrderedCollection.

	self orActionCreator: classes ofType: 'Add'.
	self orActionCreator: classes ofType: 'Remove'.
	self orActionCreator: classes ofType: 'Move'.
	self orActionCreator: classes ofType: 'Rename'
]

{ #category : 'class building' }
ORActionFactory >> orActionCreator: classes ofType: aType [

	| famixJava |
	famixJava := self getNewEntitySelector.


	classes do: [ :class | self createClass: class with: aType ofType: famixJava ]
]
