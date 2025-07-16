Class {
	#name : 'ORActionRenameJavaPrimitiveTypeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaPrimitiveTypeTest >> createEntities [

	modelV1 newPrimitiveTypeNamed: 'oldPrimitiveType' 
]

{ #category : 'running' }
ORActionRenameJavaPrimitiveTypeTest >> setUpAction [ 

	action := ORActionRenameJavaPrimitiveType new 
		orionModel: modelV2;
		name: 'newPrimitiveType'.
	action entity: (modelV1 entityNamed: 'oldPrimitiveType')
]

{ #category : 'tests' }
ORActionRenameJavaPrimitiveTypeTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allPrimitiveTypes size
		equals: modelV1 allPrimitiveTypes size
]
