Class {
	#name : 'ORActionVisitor',
	#superclass : 'ORActionFactory',
	#instVars : [
		'targetPackage',
		'testPackage'
	],
	#category : 'Orion-Core',
	#package : 'Orion',
	#tag : 'Core'
}

{ #category : 'testing' }
ORActionVisitor class >> isDeprecated [
		" Uses ORActionFactory instead of ORActionVisitor"
		^ true
]
