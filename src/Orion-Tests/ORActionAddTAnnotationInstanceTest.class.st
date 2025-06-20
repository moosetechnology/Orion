Class {
	#name : 'ORActionAddTAnnotationInstanceTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTAnnotationInstanceTest >> setUpAction [ action := ORActionAddTAnnotationInstance new orionModel: modelV2; annotatedEntity: nil; annotationType: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTAnnotationInstanceTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allAnnotationInstances size. action run. self assert: (modelV2 allAnnotationInstances size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTAnnotationInstanceTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
