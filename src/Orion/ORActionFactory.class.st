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

{ #category : 'as yet unclassified' }
ORActionFactory >> buildAddClass: aClass [
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
ORActionFactory >> buildAddJavaClass: aClass [

	| code setFamixLines entityName |
	aClass slots size > 0 ifFalse: [ ^ nil ].
	entityName := aClass name
		              copyFrom: 'ORActionAddJava' size + 1
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

{ #category : 'as yet unclassified' }
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

{ #category : 'as yet unclassified' }
ORActionFactory >> buildDelJavaClass: aClass [

	| code setFamixLines entityName |
	entityName := aClass copyFrom: 'ORActionRemoveJava' size + 1.
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
ORActionFactory >> buildJavaClass: aClass ofType: aType [

	self createAssessors: aClass.
	aType = 'Add' ifTrue: [ self buildAddJavaClass: aClass ].
	aType = 'Del' ifTrue: [ self buildDelJavaClass: aClass ].
	"aType = 'Move' ifTrue: [ self buildMoveClass: aClass ].
	aType = 'Ren' ifTrue: [ self buildRenClass: aClass ]"
]

{ #category : 'as yet unclassified' }
ORActionFactory >> buildMoveClass: aClass [
]

{ #category : 'as yet unclassified' }
ORActionFactory >> buildRenClass: aClass [
]

{ #category : 'as yet unclassified' }
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

{ #category : 'as yet unclassified' }
ORActionFactory >> orActionBuilder: aPackage [
	self orActionCreator: aPackage ofType: 'Add'.
	self orActionCreator: aPackage ofType: 'Remove'.
	self orActionCreator: aPackage ofType: 'Move'.
	self orActionCreator: aPackage ofType: 'Rename'.
]

{ #category : 'as yet unclassified' }
ORActionFactory >> orActionCreator: aPackageName ofType: aType [

	| package classes fj |
	package := PackageOrganizer default packageNamed: aPackageName.
	classes := package classes asOrderedCollection
		           "copyFrom: 1
		           to: (50 min: package classes size)".

	fj := FamixJavaTEntityCreator allMethods asOrderedCollection.
	fj := fj collect: [ :e | e signature ].
	fj := fj select: [ :e | (e asString includes: $:) not ].
	fj := fj collect: [ :e | e copyFrom: 1 to: e size - 2 ].
	fj := fj collect: [ :e | e copyFrom: 4 to: e size ].

	classes do: [ :class |
		| className superclass classSuffix |
		classSuffix := class name
			               copyFrom: 'FamixT' size + 1
			               to: class name size.

		(fj includes: classSuffix) ifTrue: [
			className := 'ORAction' , aType , 'T' , classSuffix.
			superclass := Smalltalk
				              at: ('ORAction' , aType) asSymbol
				              ifAbsent: [ nil ].

			(((Smalltalk at: ('FamixT' , classSuffix) asSymbol) allSlots
				  collect: [ :each | each name ]) includes: 'name') ifTrue: [
				superclass := Smalltalk
					              at: ('ORAction' , aType , 'NamedEntity') asSymbol
					              ifAbsent: [ nil ] ].

			(package classes asOrderedCollection includes:
				 (Smalltalk at: className asSymbol ifAbsent: [ nil ])) ifFalse: [
				Smalltalk classInstaller make: [ :builder |
					builder
						superclass: superclass;
						name: className;
						slots: (class allSlots collect: [ :e | e name ]);
						sharedVariablesFromString: '';
						sharedPools: '';
						tag: #Actions;
						package: 'Orion';
						environment: Object environment ] ].
			self
				buildClass: (Smalltalk at: className asSymbol ifAbsent: [ nil ])
				ofType: aType ] ]
]

{ #category : 'as yet unclassified' }
ORActionFactory >> orJavaActionCreatorOfType: aType [

	| classes package |
	package := PackageOrganizer default packageNamed: 'Orion'.
	classes := ((Smalltalk at: ('ORAction' , aType) asSymbol)
		           allSubclasses "copyFrom: 1 to: 15") union: ((Smalltalk at: ('ORAction' , aType, 'NamedEntity') asSymbol)
		           allSubclasses "copyFrom: 1 to: 15").


	classes do: [ :class |
		| className classSuffix traitSlots javaSlots slots |
		class hasSubclasses ifFalse: [
			class name size >= (('ORAction' , aType , 'T') size + 1) ifTrue: [
				classSuffix := class name
					               copyFrom: ('ORAction' , aType , 'T') size + 1
					               to: class name size.

				className := 'ORAction' , aType , 'Java' , classSuffix.

				traitSlots := (Smalltalk at: ('FamixT' , classSuffix) asSymbol)
					              allSlots collect: [ :e | e name ].
				javaSlots := (Smalltalk at: ('FamixJava' , classSuffix) asSymbol)
					             allSlots collect: [ :e | e name ].
				slots := javaSlots reject: [ :e | traitSlots includes: e ].

				slots := slots reject: [ :e | e = 'mooseID' ].
				slots := slots reject: [ :e | e = 'mooseName' ].
				slots := slots reject: [ :e | e = 'mooseModel' ].
				slots := slots reject: [ :e | e = 'cache' ].
				slots := slots reject: [ :e | e = 'entityAttributes' ].

				slots isEmpty ifFalse: [
					Smalltalk classInstaller make: [ :builder |
						builder
							superclass: class;
							name: className;
							slots: slots;
							sharedVariablesFromString: '';
							sharedPools: '';
							tag: #Actions;
							package: 'Orion';
							environment: Object environment ].
					self
						buildJavaClass:
						(Smalltalk at: className asSymbol ifAbsent: [ nil ])
						ofType: aType ] ] ] ]
]
