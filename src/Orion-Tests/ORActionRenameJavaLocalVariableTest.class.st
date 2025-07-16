Class {
	#name : 'ORActionRenameJavaLocalVariableTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaLocalVariableTest >> createEntities [

	modelV1 newLocalVariableNamed: 'oldLocalVariable'
]

{ #category : 'running' }
ORActionRenameJavaLocalVariableTest >> setUpAction [ action := ORActionRenameJavaLocalVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]
