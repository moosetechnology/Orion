Class {
	#name : 'ORActionMoveClassTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Actions-Tests-Move',
	#package : 'Orion-Actions-Tests',
	#tag : 'Move'
}

{ #category : 'testing' }
ORActionMoveClassTest >> setUpAction [

	action := ORActionMoveClass new
		orionModel: orionModel; 
		entity: (orionModel entityNamed: 'Class5'); 
		to: (orionModel entityNamed: #'OrionForTest1')
		yourself.
]

{ #category : 'testing' }
ORActionMoveClassTest >> testAddsNoEntity [

	action run.

	self assert: orionModel size equals: model size.
	self
		assert: orionModel allClasses size
		equals: model allClasses size
]

{ #category : 'tests' }
ORActionMoveClassTest >> testEntityIsMoved [

	action run.

	self
		assert: (orionModel entityNamed: 'Class5') parentPackage
		identicalTo: (orionModel entityNamed: 'OrionForTest1').

]

{ #category : 'tests' }
ORActionMoveClassTest >> testOldEntityIsNotMoved [

	action run.

	self
		assert: (model entityNamed: 'Class5') parentPackage
		identicalTo: (model entityNamed: 'OrionForTest2').

]
