"
A ORActionAddAttribute is a generated class useful to Orion. It corresponds to an action that can be performed on a type of model element. See OrionGenerator in Moose/Orion on SmalltalkHub for more information.
"
Class {
	#name : 'ORActionAddAttribute',
	#superclass : 'ORActionAddEntity',
	#instVars : [
		'declaredType',
		'name',
		'parentType',
		'isStub',
		'isClassSide'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'accessing - generated' }
ORActionAddAttribute >> declaredType [
	^ declaredType
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> declaredType: aValue [
	declaredType := aValue
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> isClassSide [
	^ isClassSide
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> isClassSide: aValue [
	isClassSide := aValue
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> isStub [
	^ isStub
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> name [
	^ name
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> name: aValue [
	name := aValue
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> parentType [
	^ parentType
]

{ #category : 'accessing - generated' }
ORActionAddAttribute >> parentType: aValue [
	parentType := aValue
]

{ #category : 'method execution - generated' }
ORActionAddAttribute >> run [

	| newAttribute |
	super run.
	newAttribute := self orionModel newAttribute.

	self name ifNotNil: [ :string | newAttribute name: string ].
	self isStub ifNotNil: [ :bool | newAttribute isStub: bool ].
	self isClassSide ifNotNil: [ :bool | newAttribute isClassSide: bool ].

	self parentType ifNotNil: [ :parent |
		self setOn: newAttribute bidirectionalProperty: #parentType value: parent	].

	self declaredType ifNotNil: [ :type |
		self setOn: newAttribute bidirectionalProperty: #declaredType value: type ].

	newAttribute resetMooseName.

	entity := newAttribute.
	^ entity
]
