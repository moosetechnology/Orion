Class {
	#name : 'ORActionMoveTMethodTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionMoveTMethodTest >> setUpAction [

	action := ORActionMoveTMethod new
		orionModel: orionModel; 
		entity: (orionModel entityNamed: 'Class5.accessClass3'); 
		to: (orionModel entityNamed: #'Class4')
		yourself.
]

{ #category : 'testing' }
ORActionMoveTMethodTest >> testAddsNoEntity [

	action run.

	self assert: orionModel size equals: model size.
	self
		assert: orionModel allClasses size
		equals: model allClasses size
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

	self assert: (orionModel entityNamed: 'Class4.accessClass3') isNotNil.
	self assert: (orionModel entityNamed: 'Class5.accessClass3') isNil.

	self
		assert: (orionModel entityNamed: 'Class4.accessClass3') parentType
		identicalTo: (orionModel entityNamed: 'Class4').

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

	self assert: (model entityNamed: 'Class4.accessClass3') isNil.
	self assert: (model entityNamed: 'Class5.accessClass3') isNotNil.

	self
		assert: (model entityNamed: 'Class5.accessClass3') parentType
		identicalTo: (model entityNamed: 'Class5').

]
