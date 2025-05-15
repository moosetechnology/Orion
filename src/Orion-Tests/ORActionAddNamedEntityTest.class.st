Class {
	#name : 'ORActionAddNamedEntityTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionAddNamedEntityTest class >> isAbstract [ 

	^self == ORActionAddNamedEntityTest
]

{ #category : 'tests' }
ORActionAddNamedEntityTest >> testAddsOneEntity [

	action run.

	self assert: modelV2 size equals: (modelV1 size + 1).

]

{ #category : 'tests' }
ORActionAddNamedEntityTest >> testNewEntityInModelV2 [

	action run.

	self assert: (modelV2 contains: [ :each | each name = action name]).

]

{ #category : 'tests' }
ORActionAddNamedEntityTest >> testNewEntityNotInModelV1 [

	action run.

	self deny: (modelV1 contains: [ :each | each name = action name]).

]
