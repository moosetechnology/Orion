"
An ORActionMoveTPackageTest is a test class for testing the behavior of ORActionMoveTPackage
"
Class {
	#name : 'ORActionMoveTPackageTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTPackageTest >> setUpAction [ action := ORActionMoveTPackage new orionModel: modelV2; isStub: nil; sourceAnchor: nil; yourself.
]
