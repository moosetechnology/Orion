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

	self name ifNotNil: [ :string | newAttribute name: string ].
	self isStub ifNotNil: [ :bool | newAttribute isStub: bool ].

	self parentType ifNotNil: [ :parent |
		self
			setFamixProperty: #parentType
			on: newAttribute
			to: parent ].

	self declaredType ifNotNil: [ :type |
		self
			setFamixProperty: #declaredType
			on: newAttribute
			to: type ].

	newAttribute resetMooseName.

	entity := newAttribute.
	^ entity
]
