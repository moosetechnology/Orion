Class {
	#name : 'ORActionRenameJavaTypeTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaTypeTest >> createEntities [

	modelV1 newTypeNamed: 'oldType'
]

{ #category : 'running' }
ORActionRenameJavaTypeTest >> setUpAction [ action := ORActionRenameJavaType new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; methods: nil; yourself.
]
