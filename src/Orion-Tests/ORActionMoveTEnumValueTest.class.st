Class {
	#name : 'ORActionMoveTEnumValueTest',
	#superclass : 'ORActionMoveNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionMoveTEnumValueTest >> setUpAction [ action := ORActionMoveTEnumValue new orionModel: modelV2; parentEnum: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
