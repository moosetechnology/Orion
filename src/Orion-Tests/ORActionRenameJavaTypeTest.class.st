Class {
	#name : 'ORActionRenameJavaTypeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaTypeTest >> createEntities [

	modelV1 newTypeNamed: 'oldType'
]

{ #category : 'running' }
ORActionRenameJavaTypeTest >> setUpAction [ 

	action := ORActionRenameJavaType new 
		orionModel: modelV2;
		name: 'newType'.
	action entity: (modelV1 entityNamed: 'oldType')
]
