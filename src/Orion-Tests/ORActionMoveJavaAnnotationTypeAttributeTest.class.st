Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionMoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionMoveJavaAnnotationTypeAttributeTest >> setUpAction [ action := ORActionMoveJavaAnnotationTypeAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]
