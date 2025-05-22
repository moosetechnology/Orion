"
The Builder that creates ORAction based on Traits 
"
Class {
	#name : 'ORActionBuilder',
	#superclass : 'Object',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'as yet unclassified' }
ORActionBuilder >> buildAddClass: aClass [
	| code setFamixLines entityName |
	aClass slots size > 0 ifFalse: [ ^ nil ].
	entityName := aClass name
		              copyFrom: 'ORActionAddT' size + 1
		              to: aClass name size.
	setFamixLines := aClass slots collect: [ :slot |
		                 'self setFamixProperty: #' , slot name
		                 , ' on: newEntity to: self ' , slot name , '.' ].
	setFamixLines := setFamixLines
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

{ #category : 'as yet unclassified' }
ORActionBuilder >> buildClass: aClass ofType: aType [

	aType = 'Add' ifTrue: [
		self createAssessors: aClass.
		self buildAddClass: aClass ].
	aType = 'Del' ifTrue: [
		self buildDelClass: aClass ].
	aType = 'Move' ifTrue: [
		self buildMoveClass: aClass ].
	aType = 'Ren' ifTrue: [
		self buildRenClass: aClass ]
]

{ #category : 'as yet unclassified' }
ORActionBuilder >> buildDelClass: aClass [

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

{ #category : 'as yet unclassified' }
ORActionBuilder >> buildMoveClass: aClass [
]

{ #category : 'as yet unclassified' }
ORActionBuilder >> buildRenClass: aClass [
]

{ #category : 'as yet unclassified' }
ORActionBuilder >> createAssessors: aClass [

	| slotNames |
	slotNames := aClass slots.
	slotNames do: [ :slot |
		| get set |
		get := slot name , ' ^' , slot name.
		set := slot name , ': aValue ' , slot name , ' := aValue'.
		aClass compile: get classified: 'accessing'.
		aClass compile: set classified: 'accessing' ]
]

{ #category : 'as yet unclassified' }
ORActionBuilder >> orActionBuilder: aPackage [
	self orActionCreator: aPackage ofType: 'Add'.
	self orActionCreator: aPackage ofType: 'Del'.
	self orActionCreator: aPackage ofType: 'Move'.
	"self orActionCreator: aPackage ofType: 'Ren'."
]

{ #category : 'as yet unclassified' }
ORActionBuilder >> orActionCreator: aPackageName ofType: aType [

	| package classes |
	package := PackageOrganizer default packageNamed: aPackageName.
	classes := package classes asOrderedCollection.


	classes do: [ :class |
		| className superclass classSuffix |
		classSuffix := class name
			               copyFrom: 'Famix' size + 1
			               to: class name size.
		className := 'ORAction' , aType , classSuffix.
		superclass := Smalltalk
			              at: ('ORAction' , aType) asSymbol
			              ifAbsent: [ nil ].
		((FamixTPackage allSlots collect: [ :each | each name ]) includes:
			 #name) ifTrue: [
			superclass := Smalltalk
				              at: ('ORAction' , aType , 'NamedEntity') asSymbol
				              ifAbsent: [ nil ] ].
		(package classes asOrderedCollection includes:
			 (Smalltalk at: className asSymbol ifAbsent: [ nil ])) ifFalse: [
			Smalltalk classInstaller make: [ :builder |
				builder
					superclass: superclass;
					name: className;
					slots: class allSlots;
					sharedVariablesFromString: '';
					sharedPools: '';
					tag: #Actions;
					package: 'Orion';
					environment: Object environment ] ].
		self
			buildClass: (Smalltalk at: className asSymbol ifAbsent: [ nil ])
			ofType: aType ]
]
