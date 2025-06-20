Class {
	#name : 'ORActionMoveTUnknownVariableTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTUnknownVariableTest >> setUpAction [ action := ORActionMoveTUnknownVariable new orionModel: modelV2; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
