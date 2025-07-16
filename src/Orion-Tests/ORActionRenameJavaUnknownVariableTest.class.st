Class {
	#name : 'ORActionRenameJavaUnknownVariableTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaUnknownVariableTest >> createEntities [

	modelV1 newUnknownVariableNamed: 'oldUnknownVariable'
]

{ #category : 'running' }
ORActionRenameJavaUnknownVariableTest >> setUpAction [ 

	action := ORActionRenameJavaUnknownVariable new 
		orionModel: modelV2;
		name: 'newUnknownVariable'.
	action entity: (modelV1 entityNamed: 'oldUnknownVariable')
]

{ #category : 'tests' }
ORActionRenameJavaUnknownVariableTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allUnknownVariables size
		equals: modelV1 allUnknownVariables size
]
