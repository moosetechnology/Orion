Class {
	#name : 'ORActionRenameTAnnotationTypeAttributeTest',
	#superclass : 'ORActionRenameNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionRenameTAnnotationTypeAttributeTest >> setUpAction [ action := ORActionRenameTAnnotationTypeAttribute new orionModel: modelV2; parentType: nil; isStub: nil; sourceAnchor: nil; declaredType: nil; yourself.
]
