Class {
	#name : 'ORActionMoveTConcretizationTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTConcretizationTest >> setUpAction [ action := ORActionMoveTConcretization new orionModel: modelV2; genericEntity: nil; concreteEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]
