Class {
	#name : 'ORActionRenameTTypeTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTTypeTest >> setUpAction [ action := ORActionRenameTType new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
