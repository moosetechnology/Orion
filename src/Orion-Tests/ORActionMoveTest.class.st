Class {
	#name : 'ORActionMoveTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionMoveTest class >> isAbstract [ 

	^self == ORActionMoveTest
]

{ #category : 'tests' }
ORActionMoveTest >> testAddsNoEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size
]

{ #category : 'tests' }
ORActionMoveTest >> testDestinationWrongType [

	self
		should: [ action to: FamixStMethod new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveTest >> testEntityIsMoved [
	self subclassResponsibility.
]

{ #category : 'tests' }
ORActionMoveTest >> testEntityWrongType [

	self
		should: [ action entity: FamixStLocalVariable new ]
		raise: IllegalType
]

{ #category : 'tests' }
ORActionMoveTest >> testOldEntityIsNotMoved [
	self subclassResponsibility.
]
