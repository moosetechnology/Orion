Class {
	#name : 'ORActionRenameTPackageTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTPackageTest >> setUpAction [ action := ORActionRenameTPackage new orionModel: modelV2; isStub: nil; sourceAnchor: nil; yourself.
]
