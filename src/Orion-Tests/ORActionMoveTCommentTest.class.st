Class {
	#name : 'ORActionMoveTCommentTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTCommentTest >> setUpAction [ action := ORActionMoveTComment new orionModel: modelV2; commentedEntity: nil; sourceAnchor: nil; yourself.
]
