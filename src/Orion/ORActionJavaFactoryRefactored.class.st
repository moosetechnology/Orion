Class {
	#name : 'ORActionJavaFactoryRefactored',
	#superclass : 'ORActionFactoryRefactored',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORActionJavaFactoryRefactored >> generate [

	self initialize.
	self generateFrom:(FamixJavaEntity allSubclasses reject: [ :e | e = MooseQueryMockSpecializedInvocation or: [e name includesSubstring: 'Entity']])
]

{ #category : 'initialization' }
ORActionJavaFactoryRefactored >> initialize [

	super initialize.
	type := 'Java'.
	package := 'Orion-Java'
]
