Class {
	#name : 'ORActionAddJavaInheritanceTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> createEntities [

]

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> setUpAction [ 

	action := ORActionAddJavaInheritance new 
		orionModel: modelV2;
		yourself.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> testAddsCorrectEntity [
			self assert: modelV2 allInheritances size equals: 0.
			action run.
			self assert: modelV2 allInheritances size equals: 1.
]

{ #category : 'as yet unclassified' }
ORActionAddJavaInheritanceTest >> testEntityIsVersioned [
			| entity |
			action run.
			entity := modelV2 allInheritances at:1.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).
]
