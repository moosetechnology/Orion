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
