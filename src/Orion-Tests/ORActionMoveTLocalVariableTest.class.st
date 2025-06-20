Class {
	#name : 'ORActionMoveTLocalVariableTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTLocalVariableTest >> setUpAction [ action := ORActionMoveTLocalVariable new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
