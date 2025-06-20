Class {
	#name : 'ORActionMoveTExceptionTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTExceptionTest >> setUpAction [ action := ORActionMoveTException new orionModel: modelV2; typeContainer: nil; isStub: nil; sourceAnchor: nil; yourself.
]
