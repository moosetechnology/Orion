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

{ #category : 'tests' }
SlotNotFoundTest >> setUp [

	super setUp.

	modelV1 := FamixJavaModel new.
	modelV2 := modelV1 copy.
	modelV2 beForOrion.

	action := ORActionAddJavaAnnotationTypeAttribute new.
	action orionModel: modelV2.
]

{ #category : 'tests' }
SlotNotFoundTest >> testRunFailsWhenSettingAnnotationInstances [
	self
		should: [ action run ]
		raise: SlotNotFound
]
