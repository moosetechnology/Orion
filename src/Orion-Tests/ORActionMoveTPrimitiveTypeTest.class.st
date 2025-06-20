Class {
	#name : 'ORActionMoveTPrimitiveTypeTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTPrimitiveTypeTest >> setUpAction [ action := ORActionMoveTPrimitiveType new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
