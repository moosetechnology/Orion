Class {
	#name : 'ORTestSourceGenerator',
	#superclass : 'Object',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORTestSourceGenerator >> actionType [
	"Returns action type (ex: 'Add', 'Remove')."

	^ self class name
		  copyFrom: 'OR' size + 1
		  to: self class name size - 'TestSourceGenerator' size
]

{ #category : 'as yet unclassified' }
ORTestSourceGenerator >> generateTestMethodsFor: anActionClass [

	self subclassResponsibility
]
