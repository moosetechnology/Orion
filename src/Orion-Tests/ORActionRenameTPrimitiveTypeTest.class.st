Class {
	#name : 'ORActionRenameTPrimitiveTypeTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTPrimitiveTypeTest >> setUpAction [ action := ORActionRenameTPrimitiveType new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
