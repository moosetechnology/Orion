Class {
	#name : 'ORActionRenameJavaExceptionTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaExceptionTest >> createEntities [

	modelV1 newExceptionNamed: 'oldException'
]

{ #category : 'running' }
ORActionRenameJavaExceptionTest >> setUpAction [ 

	action := ORActionRenameJavaException new 
		orionModel: modelV2;
		name: 'newException'.
	action entity: (modelV1 entityNamed: 'oldException')
]
