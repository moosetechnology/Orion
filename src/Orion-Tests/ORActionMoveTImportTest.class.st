Class {
	#name : 'ORActionMoveTImportTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTImportTest >> setUpAction [ action := ORActionMoveTImport new orionModel: modelV2; importedEntity: nil; importingEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]
