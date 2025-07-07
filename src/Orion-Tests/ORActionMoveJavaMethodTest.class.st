Class {
	#name : 'ORActionMoveJavaMethodTest',
	#superclass : 'ORActionMoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionMoveJavaMethodTest >> createBasicEntities [

	modelV1 newClassNamed: 'TestClass1'.
	modelV1 newMethodNamed: 'testMethod'.
	1flag: 'PROBLEM: testMethod is not added to TestClass1'.
	(modelV1 entityNamed: 'TestClass1') addMethod: (modelV1 entityNamed: 'testMethod').
	modelV1 newClassNamed: 'TestClass2'.
]

{ #category : 'running' }
ORActionMoveJavaMethodTest >> setUpAction [

	action := ORActionMoveJavaMethod new
		orionModel: modelV2 ; 
		entity: (modelV2 entityNamed: 'testMethod'); 
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
