Class {
	#name : 'ORActionAddTAnnotationTypeAttributeTest',
	#superclass : 'ORActionAddNamedEntityTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'running' }
ORActionAddTAnnotationTypeAttributeTest >> setUpAction [

	action := ORActionAddTAnnotationTypeAttribute new
		          orionModel: modelV2;
		          name: 'annotationTypeAttribute';
		          parentType: nil;
		          isStub: nil;
		          sourceAnchor: nil;
		          declaredType: nil;
		          yourself
]

{ #category : 'tests' }
ORActionAddTAnnotationTypeAttributeTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allAnnotationTypeAttributes size.
	action run.
	self
		assert: modelV2 allAnnotationTypeAttributes size
		equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddTAnnotationTypeAttributeTest >> testEntityIsVersioned [

	| entity |
	action run.
	entity := modelV2 entityNamed: 'annotationTypeAttribute'.
	self assert: entity notNil.
	self assert: (modelV2 includes: entity).
	self deny: (modelV1 includes: entity)
]
