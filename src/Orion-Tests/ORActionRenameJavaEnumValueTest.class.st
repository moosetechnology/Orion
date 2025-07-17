Class {
	#name : 'ORActionRenameJavaEnumValueTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'entity creation' }
ORActionRenameJavaEnumValueTest >> createEntities [

	modelV1 newEnumValueNamed: 'oldEnumValue'. 
]

{ #category : 'running' }
ORActionRenameJavaEnumValueTest >> setUpAction [ 

	action := ORActionRenameJavaEnumValue new 
		orionModel: modelV2;
		name: 'newEnumValue'.
	action entity: (modelV1 entityNamed: 'oldEnumValue')
]

{ #category : 'tests' }
ORActionRenameJavaEnumValueTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allEnumValues size
		equals: modelV1 allEnumValues size
]

{ #category : 'tests' }
ORActionRenameJavaEnumValueTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldEnumValue') isNil.
	self assert: (modelV2 entityNamed: 'newEnumValue') isNotNil.
]
