Class {
	#name : 'ORActionRenameJavaTypeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
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

{ #category : 'tests' }
ORActionRenameJavaTypeTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allTypes size
		equals: modelV1 allTypes size
]

{ #category : 'tests' }
ORActionRenameJavaTypeTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldType') isNil.
	self assert: (modelV2 entityNamed: 'newType') isNotNil.
]
