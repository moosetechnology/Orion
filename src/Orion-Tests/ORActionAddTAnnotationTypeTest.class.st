Class {
	#name : 'ORActionAddTAnnotationTypeTest',
	#superclass : 'ORActionAddTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTAnnotationTypeTest >> setUpAction [ action := ORActionAddTAnnotationType new orionModel: modelV2; annotationTypesContainer: nil; yourself.
]

{ #category : 'tests' }
ORActionAddTAnnotationTypeTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allAnnotationTypes size. action run. self assert: (modelV2 allAnnotationTypes size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddTAnnotationTypeTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
