Class {
	#name : 'ORActionRenameJavaPackageTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'entity creation' }
ORActionRenameJavaPackageTest >> createEntities [

	modelV1 newPackageNamed: 'oldPackage'
]

{ #category : 'running' }
ORActionRenameJavaPackageTest >> setUpAction [ 

	action := ORActionRenameJavaPackage new 
		orionModel: modelV2;
		name: 'newPackage'.
	action entity: (modelV1 entityNamed: 'oldPackage')
]

{ #category : 'tests' }
ORActionRenameJavaPackageTest >> testAddsNoEntity [ 

	action run.

	self assert: modelV2 size equals: modelV1 size.
	self
		assert: modelV2 allPackages size
		equals: modelV1 allPackages size
]

{ #category : 'tests' }
ORActionRenameJavaPackageTest >> testEntityIsRenamed [

	action run.

	self assert: (modelV2 entityNamed: 'oldPackage') isNil.
	self assert: (modelV2 entityNamed: 'newPackage') isNotNil.
]
