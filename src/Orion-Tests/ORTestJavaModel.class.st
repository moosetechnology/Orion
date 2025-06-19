Class {
	#name : 'ORTestJavaModel',
	#superclass : 'TestCase',
	#instVars : [
		'modelV1',
		'modelV2'
	],
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORTestJavaModel >> setUp [
	super setUp.

	modelV1 := (ORTestJavaModel new) buildFullTestModel.
	modelV1 name: 'theModel'.
	
	modelV1 beForOrion.
	modelV2 := modelV1 makeNewVersion name: #orionModel.

	self setUpAction
]

{ #category : 'initialization' }
ORTestJavaModel >> setUpAction [

	self subclassResponsibility 
]
