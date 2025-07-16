Class {
	#name : 'ORActionRenameJavaLocalVariableTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaLocalVariableTest >> createEntities [

	modelV1 newLocalVariableNamed: 'oldLocalVariable'
]

{ #category : 'running' }
ORActionRenameJavaLocalVariableTest >> setUpAction [ 

	action := ORActionRenameJavaLocalVariable new 
		orionModel: modelV2;
		name: 'newLocalVariable'.
	action entity: (modelV1 entityNamed: 'oldLocalVariable')
]

{ #category : 'tests' }
ORActionRenameJavaLocalVariableTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allLocalVariables size
		equals: modelV1 allLocalVariables size
]

{ #category : 'tests' }
ORActionRenameJavaLocalVariableTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldLocalVariable') isNil.
	self assert: (modelV2 entityNamed: 'newLocalVariable') isNotNil.
]
