Class {
	#name : 'ORActionRenameJavaImplicitVariableTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaImplicitVariableTest >> createEntities [

	modelV1 newImplicitVariableNamed: 'oldImplicitVariable'
]

{ #category : 'running' }
ORActionRenameJavaImplicitVariableTest >> setUpAction [ 

	action := ORActionRenameJavaImplicitVariable new 
		orionModel: modelV2;
		name: 'newImplicitVariable'.
	action entity: (modelV1 entityNamed: 'oldImplicitVariable')
]
