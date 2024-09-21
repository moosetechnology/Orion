"
I add a new FamixTMethod in an OrionModel.
I need the following properties of the new method:
- `name`
- `signature`
- `parentType`
- `declaredType`
- whether it is a stub (`isStub`)
"
Class {
	#name : 'ORActionAddTMethod',
	#superclass : 'ORActionAdd',
	#instVars : [
		'declaredType',
		'name',
		'signature',
		'parentType',
		'isStub'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType [
	^ declaredType
]

{ #category : 'accessing' }
ORActionAddTMethod >> declaredType: aValue [
	declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub [
	^ isStub
]

{ #category : 'accessing' }
ORActionAddTMethod >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> name [
	^ name
]

{ #category : 'accessing' }
ORActionAddTMethod >> name: aValue [
	name := aValue
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType [
	^ parentType
]

{ #category : 'accessing' }
ORActionAddTMethod >> parentType: aValue [
	parentType := aValue
]

{ #category : 'method execution' }
ORActionAddTMethod >> run [

	| newMethod |
	newMethod := self orionModel newMethod.

	self setFamixProperty: #name on: newMethod to: self name.
	self setFamixProperty: #isStub on: newMethod to: self isStub.
	self setFamixProperty: #signature on: newMethod to: self signature.

	self setFamixProperty: #parentType on: newMethod to: self parentType.
	self setFamixProperty: #declaredType on: newMethod to: self declaredType.

	newMethod resetMooseName.

	entity := newMethod.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTMethod >> signature [

	^ signature
]

{ #category : 'accessing' }
ORActionAddTMethod >> signature: anObject [

	signature := anObject
]
