Class {
	#name : 'ORActionRenameJavaClassTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaClassTest >> createEntities [

	modelV1 newClassNamed: 'oldClass'.
]

{ #category : 'running' }
ORActionRenameJavaClassTest >> setUpAction [ 

	action := ORActionRenameJavaClass new 
		orionModel: modelV2;
		name: 'newClass'.
	action entity: (modelV1 entityNamed: 'oldClass').
]

{ #category : 'tests' }
ORActionRenameJavaClassTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allClasses size
		equals: modelV1 allClasses size
]

{ #category : 'tests' }
ORActionRenameJavaClassTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldClass') isNil.
	self assert: (modelV2 entityNamed: 'newClass') isNotNil.
]
