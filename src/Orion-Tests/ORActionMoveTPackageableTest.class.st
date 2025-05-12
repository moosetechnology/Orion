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
		orionModel: modelV2; 
		entity: (modelV2 entityNamed: 'Class5'); 
		to: (modelV2 entityNamed: #'OrionForTest1')
		yourself.
]

{ #category : 'testing' }
ORActionMoveTPackageableTest >> testAddsNoEntity [

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size
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
		assert: (modelV2 entityNamed: 'Class5') parentPackage
		identicalTo: (modelV2 entityNamed: 'OrionForTest1').

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
		assert: (modelV1 entityNamed: 'Class5') parentPackage
		identicalTo: (modelV1 entityNamed: 'OrionForTest2').

]
