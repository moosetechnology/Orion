Class {
	#name : 'ORActionRenameJavaAttributeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaAttributeTest >> createEntities [

	modelV1 newClassNamed: 'TestClass1'.
	modelV1 newAttributeNamed: 'oldAttribute'.
	(modelV1 entityNamed: 'TestClass1') addAttribute: (modelV1 entityNamed: 'oldAttribute').
	
]

{ #category : 'running' }
ORActionRenameJavaAttributeTest >> setUpAction [ 

	action := ORActionRenameJavaAttribute new 
		orionModel: modelV2;
		name: 'newAttribute'.
	action entity: (modelV1 entityNamed: 'oldAttribute').
]
