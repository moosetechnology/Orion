Class {
	#name : 'ORActionRenameTExceptionTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTExceptionTest >> setUpAction [ action := ORActionRenameTException new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
