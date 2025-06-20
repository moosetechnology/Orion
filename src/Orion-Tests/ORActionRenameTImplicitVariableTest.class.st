Class {
	#name : 'ORActionRenameTImplicitVariableTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTImplicitVariableTest >> setUpAction [ action := ORActionRenameTImplicitVariable new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
