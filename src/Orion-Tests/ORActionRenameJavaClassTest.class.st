Class {
	#name : 'ORActionRenameJavaClassTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaClassTest >> createEntities [

	modelV1 newClassNamed: 'oldClass'.
]

{ #category : 'running' }
ORActionRenameJavaClassTest >> setUpAction [ action := ORActionRenameJavaClass new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; lowerBoundedWildcards: nil; upperBoundedWildcards: nil; concreteEntities: nil; generics: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; interfaceImplementations: nil; visibility: nil; incomingImports: nil; parentPackage: nil; imports: nil; yourself.
]
