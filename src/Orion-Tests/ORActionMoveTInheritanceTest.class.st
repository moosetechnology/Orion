Class {
	#name : 'ORActionMoveTInheritanceTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTInheritanceTest >> setUpAction [ action := ORActionMoveTInheritance new orionModel: modelV2; subclass: nil; superclass: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]
