Class {
	#name : 'ORActionAddTImportTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTImportTest >> setUpAction [ action := ORActionAddTImport new orionModel: modelV2; importedEntity: nil; importingEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTImportTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allImports size. action run. self assert: (modelV2 allImports size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTImportTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
