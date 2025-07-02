Class {
	#name : 'ORActionTFactoryRefactored',
	#superclass : 'ORActionFactoryRefactored',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORActionTFactoryRefactored >> generate [

	self initialize.
	self generateFrom: self getNewEntitySelector
]

{ #category : 'class building' }
ORActionTFactoryRefactored >> getNewEntitySelector [

	| famixJava |
	famixJava := FamixJavaTEntityCreator allMethods asOrderedCollection. "methods of FamixJavaTEntityCreator"
	famixJava := famixJava
		             select: [ :m | m argumentNames isEmpty ]
		             thenCollect: #selector. "extracting selectors that does not take any parameters"
	famixJava := famixJava collect: [ :e | e copyFrom: 4 to: e size ]. "removing the 'new' at the beginning of method signature"
	famixJava := famixJava collect: [:e | Smalltalk at: ('FamixT',e) asSymbol ifAbsent: []].
	famixJava := famixJava select: [ :e | e isNotNil ].
	^ famixJava
]

{ #category : 'initialization' }
ORActionTFactoryRefactored >> initialize [

	super initialize.
	type := 'T'.
	package := 'Orion'
]
