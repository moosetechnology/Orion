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
ORActionFactory >> actionBuilder [

	| package classes |
	package := PackageOrganizer default packageNamed: 'Famix-Traits'.
	classes := package classes asOrderedCollection.

	self actionCreator: classes ofType: 'Add'.
	self actionCreator: classes ofType: 'Remove'.
	self actionCreator: classes ofType: 'Move'.
	self actionCreator: classes ofType: 'Rename'
]

{ #category : 'class building' }
ORActionFactory >> actionCreator: classes ofType: aType [

	| famixJava |
	famixJava := self getNewEntitySelector.


	classes do: [ :class | self createClass: class with: aType ofType: famixJava ]
]

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
	self cleanClass: aClass.
	selector := 'build' , aType , 'Class:'.
	self perform: selector asSymbol with:  aClass.
	self getCreateVersionnedEntitySelector: aClass ofType: aType.
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
	entityName := aClass name
		              copyFrom: 'ORActionRemoveT' size + 1
		              to: aClass name size.
	setFamixLines := aClass slots collect: [ :slot |
		                 'self setFamixProperty: #' , slot name
		                   , ' on: entity to: nil.' ].
	setFamixLines := setFamixLines allButFirst
		                 inject: setFamixLines first
		                 into: [ :str :each | str , ' ' , each ].
	code := 'run

	' , setFamixLines , '

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity'.
	Transcript show: code;cr.
	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionFactory >> buildRenameClass: aClass [
]

{ #category : 'class cleaning' }
ORActionFactory >> cleanClass: aClass [

	| gettersNameFromSlots settersNameFromSlots accessorsNameFromSlots methodsSelectorFromClass unusedMethodsSelector unusedMethods system|
	system := SystemNavigation new.
	
	gettersNameFromSlots := aClass slots collect: [ :e | e name ].
	settersNameFromSlots := aClass slots collect: [ :e | e name , ':' ].
	accessorsNameFromSlots := gettersNameFromSlots union: settersNameFromSlots.
	methodsSelectorFromClass := aClass methods collect: [ :e | e selector ].
	methodsSelectorFromClass := (methodsSelectorFromClass select: [ :e | accessorsNameFromSlots includes: e ]) asOrderedCollection.
	
	unusedMethodsSelector := (aClass methods collect: [ :e | e selector ]) reject: [ :e |
		       methodsSelectorFromClass includes: e ].
	unusedMethodsSelector := unusedMethodsSelector reject: [ :e | e = 'run' ].
	unusedMethodsSelector := unusedMethodsSelector reject: [ :e | e = 'createVersionnedEntitySelector' ].
	
	unusedMethods := unusedMethodsSelector collect: [ :m | (aClass compiledMethodAt: m) ].
	unusedMethods do: [ :e | system removeMethod: e inClass: aClass ]
	
	
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
ORActionFactory >> getCreateVersionnedEntitySelector: aClass ofType: aType [

	| code entity|
	entity := aClass name
		              copyFrom: ('ORAction',aType,'T') size + 1
		              to: aClass name size.
	
	code := 'createVersionnedEntitySelector

	^ #new',entity.
	aClass compile: code classified: 'method execution'
	

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

{ #category : 'writing' }
ORActionFactory >> writeAllComments [

	| superclasses |
	superclasses := #( ORActionAdd ORActionRemove ORActionRename
	                   ORActionMove ).
	superclasses do: [ :e |
		| subclasses type |
		type := e copyFrom: 'ORAction' size + 1 to: e size.
		subclasses := (Smalltalk at: e asSymbol) allSubclasses.
		subclasses do: [ :f | self writeComment: f ofType: type ] ]
]

{ #category : 'writing' }
ORActionFactory >> writeComment: aClass ofType: aType [

	| comment entity src|
	(aClass name includesSubstring: 'Java') ifTrue: [src:= 'Java'] ifFalse: [src:= 'T'].
	entity := aClass name
		          copyFrom: ('ORAction' , aType , src) size + 1
		          to: aClass name size.
	comment := 'I ' , aType asLowercase , ' a new Famix', src, entity
	           , ' in a MooseModel'.
	comment := comment , Character cr asString
	           , 'I need the following properties of the new '
	           , entity asLowercase , Character cr asString.
	aClass slotNames do: [ :e |
		comment := comment , Character cr asString , '-`' , e , '`' ].
	aClass comment: comment
]
