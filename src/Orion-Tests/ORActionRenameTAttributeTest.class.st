Class {
	#name : 'ORActionRenameTAttributeTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTAttributeTest >> setUpAction [ action := ORActionRenameTAttribute new orionModel: modelV2; parentType: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
