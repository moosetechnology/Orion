Class {
	#name : 'ORActionAddJavaMethodTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaMethodTest >> setUpAction [ action := ORActionAddJavaMethod new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; isSynchronized: nil; isAbstract: nil; isClassSide: nil; isFinal: nil; kind: nil; visibility: nil; incomingImports: nil; comments: nil; caughtExceptions: nil; declaredExceptions: nil; thrownExceptions: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaMethodTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allMethods size.
	action run.
	self assert: modelV2 allMethods size equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaMethodTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
