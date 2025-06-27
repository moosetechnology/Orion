Class {
	#name : 'ORActionRemoveJavaMethodTest',
	#superclass : 'ORActionRemoveJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionRemoveJavaMethodTest >> setUpAction [ action := ORActionRemoveJavaMethod new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; isSynchronized: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; kind: nil; visibility: nil; incomingImports: nil; comments: nil; caughtExceptions: nil; declaredExceptions: nil; thrownExceptions: nil; yourself.
]

{ #category : 'tests' }
ORActionRemoveJavaMethodTest >> testRemovesCorrectEntity [ | initialCount entityToRemove | entityToRemove := modelV1 allavaMethods anyOne. self assert: entityToRemove notNil description: 'Le modèle V1 doit contenir une entité à supprimer pour ce test'. action entity: entityToRemove. initialCount := modelV1 allavaMethods size. action run. self assert: (modelV2 allavaMethods size) equals: (initialCount - 1).
]
