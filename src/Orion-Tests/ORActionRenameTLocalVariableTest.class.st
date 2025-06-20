Class {
	#name : 'ORActionRenameTLocalVariableTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTLocalVariableTest >> setUpAction [ action := ORActionRenameTLocalVariable new orionModel: modelV2; parentBehaviouralEntity: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
