Class {
	#name : 'ORActionAddTest',
	#superclass : 'ORActionTest',
	#category : 'Orion-Tests-Actions',
	#package : 'Orion-Tests',
	#tag : 'Actions'
}

{ #category : 'testing' }
ORActionAddTest class >> isAbstract [ 

	^self == ORActionAddTest
]

{ #category : 'running' }
ORActionAddTest >> setUpAction [ action := ORActionAdd new orionModel: modelV2; yourself.
]

{ #category : 'tests' }
ORActionAddTest >> testAddsCorrectEntity [ 
	self subclassResponsibility .
]

{ #category : 'tests' }
ORActionAddTest >> testAddsOneEntity [

	action run.

	self assert: modelV2 size equals: (modelV1 size + 1).
]

{ #category : 'tests' }
ORActionAddTest >> testEntityIsVersioned [
	self subclassResponsibility .
]
