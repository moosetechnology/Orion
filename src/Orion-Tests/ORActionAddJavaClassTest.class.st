Class {
	#name : 'ORActionAddJavaClassTest',
	#superclass : 'ORActionAddJavaTest',
	#instVars : [
		'testClass'
	],
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionAddJavaClassTest >> createEntities [

	modelV1 newClassNamed: 'TestClass'

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

	self assert: modelV2 allClasses size equals: 1.

	action run.

	self assert: modelV2 allClasses size equals: 2
]

{ #category : 'tests' }
ORActionAddJavaClassTest >> testEntityIsVersioned [
	| entity |

	action run.

	entity := modelV2 entityNamed: 'NewClass'.

	self assert: entity notNil.
	self assert: (modelV2 includes: entity).

	self deny: (modelV1 includes: entity).
]

{ #category : 'tests' }
ORActionAddJavaClassTest >> testEntityProperyIsAbstract [
	| entity |

	action isAbstract: true.

	action run.

	entity := modelV2 entityNamed: 'NewClass'.

	self assert: entity notNil.
	self assert: entity isAbstract
]
