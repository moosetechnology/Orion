Class {
	#name : 'ORActionRenameJavaAttributeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaAttributeTest >> createEntities [

	modelV1 newClassNamed: 'TestClass1'.
	modelV1 newAttributeNamed: 'oldAttribute'.
	(modelV1 entityNamed: 'TestClass1') addAttribute: (modelV1 entityNamed: 'oldAttribute').
	
]

{ #category : 'running' }
ORActionRenameJavaAttributeTest >> setUpAction [ 

	action := ORActionRenameJavaAttribute new 
		orionModel: modelV2;
		name: 'newAttribute'.
	action entity: (modelV1 entityNamed: 'oldAttribute').
]

{ #category : 'tests' }
ORActionRenameJavaAttributeTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allAttributes size
		equals: modelV1 allAttributes size
]

{ #category : 'tests' }
ORActionRenameJavaAttributeTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldAttribute') isNil.
	self assert: (modelV2 entityNamed: 'newAttribute') isNotNil.
]
