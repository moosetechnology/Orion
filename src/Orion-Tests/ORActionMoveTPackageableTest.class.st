Class {
	#name : 'ORActionMoveTPackageableTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionMoveTPackageableTest >> setUpAction [

	action := ORActionMoveTPackageable new
		orionModel: orionModel; 
		entity: (orionModel entityNamed: 'Class5'); 
		to: (orionModel entityNamed: #'OrionForTest1')
		yourself.
]

{ #category : 'testing' }
ORActionMoveTPackageableTest >> testAddsNoEntity [

	action run.

	self assert: orionModel size equals: model size.
	self
		assert: orionModel allClasses size
		equals: model allClasses size
]

{ #category : 'testing' }
ORActionMoveTPackageableTest >> testDestinationWrongType [

	self
		should: [ action to: FamixStMethod new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveTPackageableTest >> testEntityIsMoved [

	action run.

	self
		assert: (orionModel entityNamed: 'Class5') parentPackage
		identicalTo: (orionModel entityNamed: 'OrionForTest1').

]

{ #category : 'testing' }
ORActionMoveTPackageableTest >> testEntityWrongType [

	self
		should: [ action entity: FamixStLocalVariable new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveTPackageableTest >> testOldEntityIsNotMoved [

	action run.

	self
		assert: (model entityNamed: 'Class5') parentPackage
		identicalTo: (model entityNamed: 'OrionForTest2').

]
