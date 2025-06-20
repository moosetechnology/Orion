"
An ORActionMoveTAttributeTest is a test class for testing the behavior of ORActionMoveTAttribute
"
Class {
	#name : 'ORActionMoveTAttributeTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTAttributeTest >> setUpAction [ action := ORActionMoveTAttribute new orionModel: modelV2; parentType: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
