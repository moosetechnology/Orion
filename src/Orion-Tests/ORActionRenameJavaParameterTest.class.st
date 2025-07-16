Class {
	#name : 'ORActionRenameJavaParameterTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaParameterTest >> createEntities [

	modelV1 newParameterNamed: 'oldParameter'
]

{ #category : 'running' }
ORActionRenameJavaParameterTest >> setUpAction [ 

	action := ORActionRenameJavaParameter new 
		orionModel: modelV2;
		name: 'newParameter'.
	action entity: (modelV1 entityNamed: 'oldParameter')
]

{ #category : 'tests' }
ORActionRenameJavaParameterTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allParameters size
		equals: modelV1 allParameters size
]
