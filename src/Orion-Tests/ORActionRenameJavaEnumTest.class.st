Class {
	#name : 'ORActionRenameJavaEnumTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaEnumTest >> createEntities [

	modelV1 newEnumNamed: 'oldEnum'
]

{ #category : 'running' }
ORActionRenameJavaEnumTest >> setUpAction [ action := ORActionRenameJavaEnum new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; visibility: nil; incomingImports: nil; receivingInvocations: nil; attributes: nil; comments: nil; imports: nil; superInheritances: nil; subInheritances: nil; yourself.
]
