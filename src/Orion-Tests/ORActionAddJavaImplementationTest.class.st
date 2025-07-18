Class {
	#name : 'ORActionAddJavaImplementationTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> setUpAction [ 

	action := ORActionAddJavaImplementation new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> testAddsCorrectEntity [
			self assert: modelV2 allImplementations size equals: 0.
			action run.
			self assert: modelV2 allImplementations size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaImplementationTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allImplementations first.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
