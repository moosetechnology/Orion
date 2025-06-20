Class {
	#name : 'ORActionMoveTParameterTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTParameterTest >> setUpAction [ action := ORActionMoveTParameter new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
