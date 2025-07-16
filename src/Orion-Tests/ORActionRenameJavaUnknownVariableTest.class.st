Class {
	#name : 'ORActionRenameJavaUnknownVariableTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaUnknownVariableTest >> createEntities [

	modelV1 newUnknownVariableNamed: 'oldUnknownVariable'
]

{ #category : 'running' }
ORActionRenameJavaUnknownVariableTest >> setUpAction [ action := ORActionRenameJavaUnknownVariable new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; yourself.
]
