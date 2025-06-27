Class {
	#name : 'ORActionMoveJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionMoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionMoveJavaAnnotationTypeAttributeTest >> setUpAction [ action := ORActionMoveJavaAnnotationTypeAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]
