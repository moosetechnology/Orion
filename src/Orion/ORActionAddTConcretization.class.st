"
I add a new FamixTConcretization in an OrionModel.
I need the following properties :
- `concreteEntity`
- `genericEntity`
"
Class {
	#name : 'ORActionAddTConcretization',
	#superclass : 'ORActionAdd',
	#instVars : [
		'genericEntity',
		'concreteEntity'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTConcretization >> concreteEntity [

	^ concreteEntity
]

{ #category : 'accessing' }
ORActionAddTConcretization >> concreteEntity: anObject [

	concreteEntity := anObject
]

{ #category : 'accessing' }
ORActionAddTConcretization >> genericEntity [

	^ genericEntity
]

{ #category : 'accessing' }
ORActionAddTConcretization >> genericEntity: anObject [

	genericEntity := anObject
]

{ #category : 'method execution' }
ORActionAddTConcretization >> run [
	| newConcretization |
	newConcretization := self orionModel newConcretization.

	self setFamixProperty: #concreteEntity on: newConcretization to: self concreteEntity .
	self setFamixProperty: #genericEntity on: newConcretization to: self genericEntity .

	newConcretization resetMooseName.
	entity := newConcretization .
	^entity
]
