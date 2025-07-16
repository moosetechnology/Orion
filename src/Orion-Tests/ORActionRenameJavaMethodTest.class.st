Class {
	#name : 'ORActionRenameJavaMethodTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaMethodTest >> createEntities [

	modelV1 newMethodNamed: 'oldMethod'
]

{ #category : 'running' }
ORActionRenameJavaMethodTest >> setUpAction [ action := ORActionRenameJavaMethod new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; isSynchronized: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; kind: nil; visibility: nil; incomingImports: nil; comments: nil; caughtExceptions: nil; declaredExceptions: nil; thrownExceptions: nil; yourself.
]
