Class {
	#name : 'ORActionAddJavaAnnotationTypeTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAnnotationTypeTest >> createEntities [
	modelV1 newAnnotationTypeNamed: 'TestAnnotationType'
]

{ #category : 'running' }
ORActionAddJavaAnnotationTypeTest >> setUpAction [ 

action := ORActionAddJavaAnnotationType new 
yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeTest >> testAddsCorrectEntity [
			self assert: modelV2 allAnnotationTypes size equals: 1.
			action run.
			self assert: modelV2 allAnnotationTypes size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationTypeTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
