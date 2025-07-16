Class {
	#name : 'ORActionRenameJavaEnumValueTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
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
