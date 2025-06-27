Class {
	#name : 'ORActionAddJavaAnnotationInstanceTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaAnnotationInstanceTest >> setUpAction [ action := ORActionAddJavaAnnotationInstance new orionModel: modelV2; sourceAnchor: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allAnnotationInstances size.
	action run.
	self
		assert: modelV2 allAnnotationInstances size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
