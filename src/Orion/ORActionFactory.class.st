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
	aClass slots size > 0 ifFalse: [ ^ nil ].
	entityName := aClass name
		              copyFrom: 'ORActionAddT' size + 1
		              to: aClass name size.
	setFamixLines := aClass slots collect: [ :slot |
		                 'self setFamixProperty: #' , slot name
		                 , ' on: newEntity to: self ' , slot name , '.' ].
	setFamixLines := setFamixLines allButFirst 
		                 inject: setFamixLines first
		                 into: [ :str :each | str , ' ' , each ].
	code := 'run

	| newEntity |
	newEntity := self orionModel new' , entityName , '.

	' , setFamixLines , '

	newEntity resetMooseName.

	entity := newEntity.
	^ entity'.
	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionFactory >> buildClass: aClass ofType: aType [

	self createAssessors: aClass.
	aType = 'Add' ifTrue: [
		self buildAddClass: aClass ].
	aType = 'Del' ifTrue: [
		self buildDelClass: aClass ].
	aType = 'Move' ifTrue: [
		self buildMoveClass: aClass ].
	aType = 'Ren' ifTrue: [
		self buildRenClass: aClass ]
]

{ #category : 'class building' }
ORActionFactory >> buildDelClass: aClass [

	| code setFamixLines entityName |
	entityName := aClass copyFrom: 'ORActionRemoveT' size + 1.
	setFamixLines := aClass slots do: [ :slot |
		                 ^ 'self setFamixProperty: #' , slot name
		                   , ' on: entity to: nil.' ].
	code := 'run

	' , setFamixLines , '

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity'.

	aClass compile: code classified: 'method execution'
]

{ #category : 'class building' }
ORActionFactory >> buildMoveClass: aClass [
]

{ #category : 'class building' }
ORActionFactory >> buildRenClass: aClass [
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
ORActionFactory >> orActionBuilder: aPackage [
	self orActionCreator: aPackage ofType: 'Add'.
	self orActionCreator: aPackage ofType: 'Remove'.
	self orActionCreator: aPackage ofType: 'Move'.
	self orActionCreator: aPackage ofType: 'Rename'.
]

{ #category : 'class building' }
ORActionFactory >> orActionCreator: aPackageName ofType: aType [

	| package classes fj |
	package := PackageOrganizer default packageNamed: aPackageName.
	classes := package classes asOrderedCollection.
	"copyFrom: 1
		           to: (50 min: package classes size)"

	fj := FamixJavaTEntityCreator allMethods asOrderedCollection. "methods of FAmixJavaTEntityCreator"
	fj := fj collect: [ :e | e signature ]. "keeping only their signature"
	fj := fj select: [ :e | (e asString includes: $:) not ]. "removing the methods that have a parameter"
	fj := fj collect: [ :e | e copyFrom: 1 to: e size - 2 ]. "removing the '()' at the end of method signature"
	fj := fj collect: [ :e | e copyFrom: 4 to: e size ]. "removing the 'new' at the beginning of method signature"

	classes do: [ :class | "]"
		| className superclass classSuffix slots |
		classSuffix := class name
			               copyFrom: 'FamixT' size + 1
			               to: class name size.

		(fj includes: classSuffix) ifTrue: [
			className := 'ORAction' , aType , 'T' , classSuffix.
			superclass := Smalltalk
				              at: ('ORAction' , aType) asSymbol
				              ifAbsent: [ nil ].

			slots := class allSlots select: [ :e | e isToOne ].

			(((Smalltalk at: ('FamixT' , classSuffix) asSymbol) allSlots
				  collect: [ :each | each name ]) includes: 'name') ifTrue: [
				superclass := Smalltalk
					              at: ('ORAction' , aType , 'NamedEntity') asSymbol
					              ifAbsent: [ nil ] .
					slots := slots reject: [:e|e name = 'name']].

			"(package classes asOrderedCollection includes:
				 (Smalltalk at: className asSymbol ifAbsent: [ nil ])) ifFalse: ["
			Smalltalk classInstaller make: [ :builder |
				builder
					superclass: superclass;
					name: className;
					slots: (slots collect: [ :e | e name ]);
					sharedVariablesFromString: '';
					sharedPools: '';
					tag: #Actions;
					package: 'Orion';
					environment: Object environment ].
			self
				buildClass: (Smalltalk at: className asSymbol ifAbsent: [ nil ])
				ofType: aType ] ]
]
