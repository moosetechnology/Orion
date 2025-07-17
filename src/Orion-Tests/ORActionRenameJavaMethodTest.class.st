Class {
	#name : 'ORActionRenameJavaMethodTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
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

{ #category : 'tests' }
ORActionRenameJavaMethodTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allMethods size
		equals: modelV1 allMethods size
]

{ #category : 'tests' }
ORActionRenameJavaMethodTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldMethod') isNil.
	self assert: (modelV2 entityNamed: 'newMethod') isNotNil.
]
