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
