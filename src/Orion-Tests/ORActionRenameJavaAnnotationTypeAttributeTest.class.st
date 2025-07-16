Class {
	#name : 'ORActionRenameJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaAnnotationTypeAttributeTest >> createEntities [

	modelV1 newAnnotationTypeAttributeNamed: 'oldAnnotationTypeAttribute'
]

{ #category : 'running' }
ORActionRenameJavaAnnotationTypeAttributeTest >> setUpAction [ 

	action := ORActionRenameJavaAnnotationTypeAttribute new 
		orionModel: modelV2;
		name: 'newAnnotationTypeAttribute'.
	action entity: (modelV1 entityNamed: 'oldAnnotationTypeAttribute')
]
