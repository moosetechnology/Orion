Class {
	#name : 'ORActionAddJavaAnnotationInstanceAttributeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaAnnotationInstanceAttributeTest >> setUpAction [ action := ORActionAddJavaAnnotationInstanceAttribute new orionModel: modelV2; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceAttributeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaAnnotationInstanceAttributes size. action run. self assert: (modelV2 allavaAnnotationInstanceAttributes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceAttributeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
