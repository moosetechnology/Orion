Class {
	#name : 'ORActionRenameJavaMethodTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaMethodTest >> createEntities [

	modelV1 newMethodNamed: 'oldMethod'
]

{ #category : 'running' }
ORActionRenameJavaMethodTest >> setUpAction [ 

	action := ORActionRenameJavaMethod new 
		orionModel: modelV2;
		name: 'newMethod'.
	action entity: (modelV1 entityNamed: 'oldMethod')
]
