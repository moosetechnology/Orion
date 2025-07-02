Class {
	#name : 'ORRunMethodGenerator',
	#superclass : 'Object',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'generating' }
ORRunMethodGenerator >> actionType [
	"Returns action type (ex: 'Add', 'Remove')."

	^ self class name
		  copyFrom: 'OR' size + 1
		  to: self class name size - 'RunMethodGenerator' size
]

{ #category : 'generating' }
ORRunMethodGenerator >> generateRunMethodFor: aClass [ 
	self subclassResponsibility
]
