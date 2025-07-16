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

{ #category : 'tests' }
ORActionRenameJavaAnnotationTypeAttributeTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allAnnotationTypeAttributes size
		equals: modelV1 allAnnotationTypeAttributes size
]

{ #category : 'tests' }
ORActionRenameJavaAnnotationTypeAttributeTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldAnnotationTypeAttribute') isNil.
	self assert: (modelV2 entityNamed: 'newAnnotationTypeAttribute') isNotNil.
]
