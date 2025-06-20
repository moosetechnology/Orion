Class {
	#name : 'ORActionRenameTEnumTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTEnumTest >> setUpAction [ action := ORActionRenameTEnum new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
