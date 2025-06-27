Class {
	#name : 'ORActionRenameJavaLocalVariableTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRenameJavaLocalVariableTest >> setUpAction [ action := ORActionRenameJavaLocalVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]
