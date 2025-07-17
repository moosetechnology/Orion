Class {
	#name : 'ORActionMoveJavaMethodTest',
	#superclass : 'ORActionMoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'entity creation' }
ORActionMoveJavaMethodTest >> createEntities [

	modelV1 newClassNamed: 'TestClass1'.
	modelV1 newMethodNamed: 'testMethod'.
	(modelV1 entityNamed: 'testMethod') parentType: (modelV1 entityNamed: 'TestClass1').
	modelV1 newClassNamed: 'TestClass2'.

]

{ #category : 'running' }
ORActionMoveJavaMethodTest >> setUpAction [

	action := ORActionMoveJavaMethod new
		orionModel: modelV2 ; 
		entity: (modelV2 entityNamed: 'TestClass1.testMethod'); 
		to: (modelV2 entityNamed: #'TestClass2')
		yourself.
]

{ #category : 'tests' }
ORActionMoveJavaMethodTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size
]

{ #category : 'tests' }
ORActionMoveJavaMethodTest >> testDestinationWrongType [

	self
		should: [ action to: FamixJavaMethod new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveJavaMethodTest >> testEntityIsMoved [

	action run.

	self assert: (modelV2 entityNamed: 'TestClass2.testMethod') isNotNil.
	self assert: (modelV2 entityNamed: 'TestClass1.testMethod') isNil.

	self
		assert: (modelV2 entityNamed: 'TestClass2.testMethod') parentType
		identicalTo: (modelV2 entityNamed: 'TestClass2').
]

{ #category : 'tests' }
ORActionMoveJavaMethodTest >> testEntityWrongType [

	self
		should: [ action entity: FamixJavaLocalVariable new ]
		raise: IllegalType 
]

{ #category : 'tests' }
ORActionMoveJavaMethodTest >> testOldEntityIsNotMoved [

	action run.

	self assert: (modelV1 entityNamed: 'TestClass2.testMethod') isNil.
	self assert: (modelV1 entityNamed: 'TestClass1.testMethod') isNotNil.

	self
		assert: (modelV1 entityNamed: 'TestClass1.testMethod') parentType
		identicalTo: (modelV1 entityNamed: 'TestClass1')
]
