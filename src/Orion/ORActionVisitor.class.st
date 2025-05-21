Class {
	#name : 'ORActionVisitor',
	#superclass : 'Object',
	#instVars : [
		'targetPackage',
		'testPackage'
	],
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'as yet unclassified' }
ORActionVisitor >> createAssessors: aClass [

	| slotNames |
	slotNames := aClass slots.
	Transcript
		show: slotNames;
		cr.
	slotNames do: [ :slot |
		| get set |
		get := slot name , ' ^' , slot name.
		set := slot name , ': aValue ' , slot name , ' := aValue'.
		aClass compile: get classified: 'accessing'.
		aClass compile: set classified: 'accessing' ]
]

{ #category : 'as yet unclassified' }
ORActionVisitor >> fillSlots: aClass [

	| fullClassName target slots |
	fullClassName := ('FamixJava', (aClass asString) ).

	target := Smalltalk at: fullClassName asSymbol ifAbsent: [ 
		Transcript show: 'Class not found: ', fullClassName; cr.
		^ #()
	].

	slots := target instVarNames.

	^ slots collect: [ :each | each asSymbol ]

]

{ #category : 'as yet unclassified' }
ORActionVisitor >> getSubclasses: aClass [

	| subclasses |
	subclasses := aClass subclasses.

	^ subclasses
	  , (subclasses flatCollect: [ :each | self getSubclasses: each ])
]

{ #category : 'visiting' }
ORActionVisitor >> visitAddClass: aClass [

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

{ #category : 'visiting' }
ORActionVisitor >> visitClass: aClass [

	aClass superclass name = 'ORActionAdd' ifTrue: [
		self createAssessors: aClass.
		self visitAddClass: aClass ].
	aClass superclass name = 'ORActionRemove' ifTrue: [
		self visitDelClass: aClass ].
	aClass superclass name = 'ORActionMove' ifTrue: [
		self visitMovClass: aClass ].
	aClass superclass name = 'ORActionRename' ifTrue: [
		self visitRenClass: aClass ]
]

{ #category : 'visiting' }
ORActionVisitor >> visitDelClass: aClass [

	| code setFamixLines entityName |
	entityName := aClass copyFrom: 'ORActionRemoveT' size + 1.
	setFamixLines := aClass slots do: [ :slot |
		                 ^ 'self setFamixProperty: #' , slot
		                   , ' on: entity to: nil.' ].
	code := 'run

	' , setFamixLines , '

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity'.

	aClass compile: code classified: 'method execution'
]

{ #category : 'visiting' }
ORActionVisitor >> visitFor: aFamixLanguageEntityClass [

	| classes cleanedNames prefixLength |
	classes := aFamixLanguageEntityClass withAllSubclasses.
	prefixLength := 'FamixJava' size. "aFamixLanguageEntityClass name"

	cleanedNames := classes collect: [ :each |
		                | name |
		                name := each name asString.

		                name size > prefixLength
			                ifTrue: [
			                name := name
				                        copyFrom: prefixLength + 1
				                        to: name size ]
			                ifFalse: [ name := name ].

		                name ].
	^ cleanedNames
]

{ #category : 'visiting' }
ORActionVisitor >> visitSuperclass: aSuperclass with: aFamixEntitiesClass [

	| superclassSuffix famixEntitySuffixList |
	superclassSuffix := aSuperclass name
		                    copyFrom: 'ORAction' size + 1
		                    to: aSuperclass name size. "Extract Add, Move, Remove or Rename"
	famixEntitySuffixList := self visitFor: aFamixEntitiesClass.


	famixEntitySuffixList do: [ :famixEntitySuffix |
		| className superclass |
		className := 'ORAction' , superclassSuffix , 'T' , famixEntitySuffix.
		superclass := Smalltalk
			              at: ('ORAction' , superclassSuffix) asSymbol
			              ifAbsent: [ nil ].
		((self getSubclasses: aSuperclass) includes:
			 (Smalltalk at: className asSymbol ifAbsent: [ nil ])) ifFalse: [
			Smalltalk classInstaller make: [ :builder |
				builder
					superclass: superclass;
					name: className;
					slots: (self fillSlots: famixEntitySuffix);
					sharedVariablesFromString: '';
					sharedPools: '';
					tag: #Actions;
					package: aSuperclass package;
					environment: Object environment ] ].
		self visitClass:
			(Smalltalk at: className asSymbol ifAbsent: [ nil ]) ]
]

{ #category : 'visiting' }
ORActionVisitor >> visitSuperclassTest: aSuperclass with: aFamixEntitiesClass [

	| superclassSuffix famixEntitySuffixList |
	superclassSuffix := aSuperclass name
		                    copyFrom: 'ORAction' size + 1
		                    to: aSuperclass name size. "Extract Add, Move, Remove or Rename"
	famixEntitySuffixList := self visitFor: aFamixEntitiesClass.


	famixEntitySuffixList do: [ :famixEntitySuffix |
		| className superclass |
		className := 'ORAction' , superclassSuffix , 'T' , famixEntitySuffix, 'Test'.
		superclass := Smalltalk
			              at: ('ORAction' , superclassSuffix) asSymbol
			              ifAbsent: [ nil ].
		((self getSubclasses: aSuperclass) includes:
			 (Smalltalk at: className asSymbol ifAbsent: [ nil ])) ifFalse: [
			Smalltalk classInstaller make: [ :builder |
				builder
					superclass: superclass;
					name: className;
					slots: {};
					sharedVariablesFromString: '';
					sharedPools: '';
					tag: #Actions;
					package: aSuperclass package;
					environment: Object environment ] ].
		self visitClassTest:
			(Smalltalk at: className asSymbol ifAbsent: [ nil ]) ]
]
