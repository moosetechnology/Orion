Class {
	#name : 'ORActionRemoveTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionRemoveTest class >> isAbstract [ 

	^self == ORActionRemoveTest 
]

{ #category : 'tests' }
ORActionRemoveTest >> testEntityWrongType [

	self
		should: [ action entity: FamixStLocalVariable new ]
		raise: IllegalType
]

{ #category : 'tests' }
ORActionRemoveTest >> testRemovesOneEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size - 1.
]
