Class {
	#name : 'ORActionMoveTMethodTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionMoveTMethodTest >> setUpAction [

	action := ORActionMoveTMethod new
		orionModel: modelV2; 
		entity: (modelV2 entityNamed: 'Class5.accessClass3'); 
		to: (modelV2 entityNamed: #'Class4')
		yourself.
]

{ #category : 'testing' }
ORActionMoveTMethodTest >> testAddsNoEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size
]

{ #category : 'testing' }
ORActionMoveTMethodTest >> testDestinationWrongType [

	self
		should: [ action to: FamixStMethod new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveTMethodTest >> testEntityIsMoved [

	action run.

	self assert: (modelV2 entityNamed: 'Class4.accessClass3') isNotNil.
	self assert: (modelV2 entityNamed: 'Class5.accessClass3') isNil.

	self
		assert: (modelV2 entityNamed: 'Class4.accessClass3') parentType
		identicalTo: (modelV2 entityNamed: 'Class4').

]

{ #category : 'testing' }
ORActionMoveTMethodTest >> testEntityWrongType [

	self
		should: [ action entity: FamixStLocalVariable new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveTMethodTest >> testOldEntityIsNotMoved [

	action run.

	self assert: (modelV1 entityNamed: 'Class4.accessClass3') isNil.
	self assert: (modelV1 entityNamed: 'Class5.accessClass3') isNotNil.

	self
		assert: (modelV1 entityNamed: 'Class5.accessClass3') parentType
		identicalTo: (modelV1 entityNamed: 'Class5').

]
