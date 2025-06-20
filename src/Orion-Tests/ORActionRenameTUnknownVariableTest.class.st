Class {
	#name : 'ORActionRenameTUnknownVariableTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTUnknownVariableTest >> setUpAction [ action := ORActionRenameTUnknownVariable new orionModel: modelV2; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
