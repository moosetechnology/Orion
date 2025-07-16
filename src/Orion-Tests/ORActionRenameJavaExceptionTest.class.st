Class {
	#name : 'ORActionRenameJavaExceptionTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaExceptionTest >> createEntities [

	modelV1 newExceptionNamed: 'oldException'
]

{ #category : 'running' }
ORActionRenameJavaExceptionTest >> setUpAction [ 

	action := ORActionRenameJavaException new 
		orionModel: modelV2;
		name: 'newException'.
	action entity: (modelV1 entityNamed: 'oldException')
]

{ #category : 'tests' }
ORActionRenameJavaExceptionTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allExceptions size
		equals: modelV1 allExceptions size
]
