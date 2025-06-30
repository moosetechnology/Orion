Class {
	#name : 'ORActionAddJavaClassTest',
	#superclass : 'ORActionAddJavaTest',
	#instVars : [
		'testClass'
	],
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaClassTest >> createBasicEntities [

	modelV1 newClassNamed: 'TestClass'

]

{ #category : 'entity creation' }
ORActionAddJavaClassTest >> createComplexEntities [

]

{ #category : 'entity creation' }
ORActionAddJavaClassTest >> linkBasicEntities [

]

{ #category : 'running' }
ORActionAddJavaClassTest >> setUpAction [ 

	action := ORActionAddJavaClass new
		orionModel: modelV2;
		name: 'NewClass' ;
		yourself.
]

{ #category : 'tests' }
ORActionAddJavaClassTest >> testAddsCorrectEntity [

	| initialCount |
	initialCount := modelV1 allClasses size.
	action run.
	self assert: modelV2 allClasses size equals: initialCount + 1
]

{ #category : 'tests' }
ORActionAddJavaClassTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
