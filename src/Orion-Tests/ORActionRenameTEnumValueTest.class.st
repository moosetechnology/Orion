Class {
	#name : 'ORActionRenameTEnumValueTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTEnumValueTest >> setUpAction [ action := ORActionRenameTEnumValue new orionModel: modelV2; parentEnum: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
