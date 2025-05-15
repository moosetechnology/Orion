"
I add a new FamixTParameterConcretization in an OrionModel.
I need the following properties :
- `concreteParameter`
- `genericParameter`
"
Class {
	#name : 'ORActionAddTParameterConcretization',
	#superclass : 'ORActionAdd',
	#instVars : [
		'concreteParameter',
		'genericParameter'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concreteParameter [

	^ concreteParameter
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> concreteParameter: anObject [

	concreteParameter := anObject
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> genericParameter [

	^ genericParameter
]

{ #category : 'accessing' }
ORActionAddTParameterConcretization >> genericParameter: anObject [

	genericParameter := anObject
]

{ #category : 'method execution' }
ORActionAddTParameterConcretization >> run [
	| newParameterConcretization |
	newParameterConcretization := self orionModel newParameterConcretization .

	self setFamixProperty: #concreteParameter on: newParameterConcretization to: self concreteParameter .
	self setFamixProperty: #genericParameter on: newParameterConcretization to: self genericParameter .

	newParameterConcretization resetMooseName.
	entity := newParameterConcretization .
	^entity
]
