Class {
	#name : 'ORActionAddJavaAnnotationInstanceAttributeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAnnotationInstanceAttributeTest >> createEntities [
	modelV1 newAnnotationInstanceAttributeNamed: 'TestAnnotationInstanceAttribute'
]

{ #category : 'running' }
ORActionAddJavaAnnotationInstanceAttributeTest >> setUpAction [ 

action := ORActionAddJavaAnnotationInstanceAttribute new 
		orionModel: modelV2;
		name: 'AnnotationInstanceAttribute' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceAttributeTest >> testAddsCorrectEntity [
			self assert: modelV2 allAnnotationInstanceAttributes size equals: 1.
			action run.
			self assert: modelV2 allAnnotationInstanceAttributes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceAttributeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'AnnotationInstanceAttribute'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
