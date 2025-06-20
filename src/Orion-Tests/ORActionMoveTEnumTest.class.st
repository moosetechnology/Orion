Class {
	#name : 'ORActionMoveTEnumTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTEnumTest >> setUpAction [ action := ORActionMoveTEnum new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
