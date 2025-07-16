Class {
	#name : 'ORActionRenameJavaParameterTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaParameterTest >> createEntities [

	modelV1 newParameterNamed: 'oldParameter'
]

{ #category : 'running' }
ORActionRenameJavaParameterTest >> setUpAction [ action := ORActionRenameJavaParameter new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]
