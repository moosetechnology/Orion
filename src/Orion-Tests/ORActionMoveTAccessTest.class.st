Class {
	#name : 'ORActionMoveTAccessTest',
	#superclass : 'ORActionMoveTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTAccessTest >> setUpAction [ action := ORActionMoveTAccess new orionModel: modelV2; accessor: nil; isWrite: nil; variable: nil; next: nil; previous: nil; sourceAnchor: nil; yourself.
]
