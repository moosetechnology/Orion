"
I add a new FamixTAttribute in an OrionModel.
I need the following properties of the new attribute:
- `name`
- `parentType`
- `declaredType`
- whether it is a stub (`isStub`)
"
Class {
	#name : 'ORActionAddTAttribute',
	#superclass : 'ORActionAdd',
	#instVars : [
		'declaredType',
		'name',
		'parentType',
		'isStub'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> declaredType [
	^ declaredType
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> declaredType: aValue [
	declaredType := aValue
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> isStub [
	^ isStub
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> name [
	^ name
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> name: aValue [
	name := aValue
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> parentType [
	^ parentType
]

{ #category : 'accessing - generated' }
ORActionAddTAttribute >> parentType: aValue [
	parentType := aValue
]

{ #category : 'method execution - generated' }
ORActionAddTAttribute >> run [

	| newAttribute |
	newAttribute := self orionModel newAttribute.

	self setFamixProperty: #name on: newAttribute to: self name.
	self setFamixProperty: #isStub on: newAttribute to: self isStub.

	self setFamixProperty: #parentType on: newAttribute to: self parentType.
	self setFamixProperty: #declaredType on: newAttribute to: self declaredType.

	newAttribute resetMooseName.

	entity := newAttribute.
	^ entity
]
