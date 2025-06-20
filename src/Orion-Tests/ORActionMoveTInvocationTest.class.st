Class {
	#name : 'ORActionMoveTInvocationTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTInvocationTest >> setUpAction [ action := ORActionMoveTInvocation new orionModel: modelV2; receiver: nil; sender: nil; next: nil; previous: nil; sourceAnchor: nil; signature: nil; yourself.
]
