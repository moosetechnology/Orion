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
ORActionVisitor >> visitPackage: aPackage with: aFamixEntitiesClass [

	| packageSuffix famixEntitySuffixList |
	Transcript
		show: aPackage name;
		cr.
	packageSuffix := aPackage name
		                 copyFrom: 'ORAction' size + 1
		                 to: aPackage name size. "Extract Add, Move, Remove ou Rename"
	famixEntitySuffixList := self visitFor: aFamixEntitiesClass.
	Transcript
		show: famixEntitySuffixList;
		cr.

	famixEntitySuffixList do: [ :famixEntitySuffix |
		| className superclass |
		className := 'ORAction' , packageSuffix , famixEntitySuffix.
		superclass := Smalltalk
			              at: ('ORAction' , packageSuffix) asSymbol
			              ifAbsent: [ nil ].
		((self getSubclasses: aPackage) includes: className)
			ifFalse: [
				Transcript
					show: (self fillSlots: famixEntitySuffix);
					cr.
				Transcript
					show: famixEntitySuffix;
					cr.
				Smalltalk classInstaller make: [ :builder |
					builder
						superclass: superclass;
						name: className;
						slots: (self fillSlots: famixEntitySuffix);
						sharedVariablesFromString: '';
						sharedPools: '';
						package: aPackage package;
						environment: Object environment ] ]
 ]
]
