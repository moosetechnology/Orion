Class {
	#name : 'ORActionRenameTClassTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTClassTest >> setUpAction [ action := ORActionRenameTClass new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
