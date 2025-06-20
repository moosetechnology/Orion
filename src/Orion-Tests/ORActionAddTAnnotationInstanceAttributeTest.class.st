Class {
	#name : 'ORActionAddTAnnotationInstanceAttributeTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTAnnotationInstanceAttributeTest >> setUpAction [ action := ORActionAddTAnnotationInstanceAttribute new orionModel: modelV2; annotationTypeAttribute: nil; parentAnnotationInstance: nil; value: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTAnnotationInstanceAttributeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allAnnotationInstanceAttributes size. action run. self assert: (modelV2 allAnnotationInstanceAttributes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTAnnotationInstanceAttributeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
