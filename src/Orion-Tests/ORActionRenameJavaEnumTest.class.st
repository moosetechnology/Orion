Class {
	#name : 'ORActionRenameJavaEnumTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaEnumTest >> createEntities [

	modelV1 newEnumNamed: 'oldEnum'
]

{ #category : 'running' }
ORActionRenameJavaEnumTest >> setUpAction [ 

	action := ORActionRenameJavaEnum new 
		orionModel: modelV2;
		name: 'newEnum'.
	action entity: (modelV1 entityNamed: 'oldEnum')
]
