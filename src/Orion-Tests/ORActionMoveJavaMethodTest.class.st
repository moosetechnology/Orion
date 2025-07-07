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
	modelV1 newMethodNamed: 'TestClass1.testMethod'.
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
