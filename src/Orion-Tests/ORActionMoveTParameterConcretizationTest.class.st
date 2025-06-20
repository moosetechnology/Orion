Class {
	#name : 'ORActionMoveTParameterConcretizationTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTParameterConcretizationTest >> setUpAction [ action := ORActionMoveTParameterConcretization new orionModel: modelV2; genericParameter: nil; concreteParameter: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]
