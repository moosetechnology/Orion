Class {
	#name : 'ORActionMoveTReferenceTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTReferenceTest >> setUpAction [ action := ORActionMoveTReference new orionModel: modelV2; referencer: nil; referredEntity: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]
