Class {
	#name : 'ORActionAddJavaAnnotationInstanceTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaAnnotationInstanceTest >> createEntities [
	modelV1 newAnnotationInstanceNamed: 'TestAnnotationInstance'
]

{ #category : 'running' }
ORActionAddJavaAnnotationInstanceTest >> setUpAction [ 

action := ORActionAddJavaAnnotationInstance new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceTest >> testAddsCorrectEntity [
			self assert: modelV2 allAnnotationInstances size equals: 1.
			action run.
			self assert: modelV2 allAnnotationInstances size equals: 2.
]

{ #category : 'tests' }
ORActionAddJavaAnnotationInstanceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 entityNamed: 'involvedEntity'.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
