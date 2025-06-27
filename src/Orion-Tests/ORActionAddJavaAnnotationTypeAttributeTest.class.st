Class {
	#name : 'ORActionAddJavaAnnotationTypeAttributeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaAnnotationTypeAttributeTest >> setUpAction [ action := ORActionAddJavaAnnotationTypeAttribute new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeAttributeTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allAnnotationTypeAttributes size.
	action run.
	self
		assert: modelV2 allAnnotationTypeAttributes size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeAttributeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
