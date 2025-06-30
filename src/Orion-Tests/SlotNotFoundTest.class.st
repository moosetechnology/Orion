Class {
	#name : 'SlotNotFoundTest',
	#superclass : 'TestCase',
	#instVars : [
		'modelV1',
		'modelV2',
		'action'
	],
	#category : 'Orion-Tests-Bug',
	#package : 'Orion-Tests',
	#tag : 'Bug'
}

{ #category : 'running' }
SlotNotFoundTest >> setUp [

	super setUp.

	modelV1 := FamixJavaModel new.
	modelV2 := modelV1 copy.
	modelV2 beForOrion.

	action := ORActionAddJavaAnnotationTypeAttribute new.
	action orionModel: modelV2.
]

{ #category : 'tests' }
SlotNotFoundTest >> testAddAnnotationTypeAttribute [

	action run.
]

{ #category : 'tests' }
SlotNotFoundTest >> testFailsToAddAnnotationTypeAttribute [
	self
		should: [ action run ]
		raise: SlotNotFound
]
