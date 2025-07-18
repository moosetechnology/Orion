Class {
	#name : 'ORActionAddJavaReferenceTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> setUpAction [ 

	action := ORActionAddJavaReference new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> testAddsCorrectEntity [
			self assert: modelV2 allReferences size equals: 0.
			action run.
			self assert: modelV2 allReferences size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaReferenceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allReferences first.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
