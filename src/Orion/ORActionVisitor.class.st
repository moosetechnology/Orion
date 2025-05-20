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
