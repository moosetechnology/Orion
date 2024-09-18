"
A ORActionAddAttribute is a generated class useful to Orion. It corresponds to an action that can be performed on a type of model element. See OrionGenerator in Moose/Orion on SmalltalkHub for more information.
"
Class {
	#name : 'ORActionAddMethod',
	#superclass : 'ORActionAddEntity',
	#instVars : [
		'declaredType',
		'name',
		'signature',
		'parentType',
		'parentPackage',
		'isStub',
		'isClassSide'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'accessing - generated' }
ORActionAddMethod >> declaredType [
	^ declaredType
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> declaredType: aValue [
	declaredType := aValue
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> isClassSide [
	^ isClassSide
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> isClassSide: aValue [
	isClassSide := aValue
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> isStub [
	^ isStub
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> name [
	^ name
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> name: aValue [
	name := aValue
]

{ #category : 'accessing' }
ORActionAddMethod >> parentPackage [

	^ parentPackage
]

{ #category : 'accessing' }
ORActionAddMethod >> parentPackage: anObject [

	parentPackage := anObject
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> parentType [
	^ parentType
]

{ #category : 'accessing - generated' }
ORActionAddMethod >> parentType: aValue [
	parentType := aValue
]

{ #category : 'method execution - generated' }
ORActionAddMethod >> run [

	| newMethod |
	super run.
	newMethod := self orionModel newMethod.

	self name ifNotNil: [ :string | newMethod name: string ].
	self isStub ifNotNil: [ :bool | newMethod isStub: bool ].
	self isClassSide ifNotNil: [ :bool | newMethod isClassSide: bool ].
	self signature ifNotNil: [ :string | newMethod signature: string ].

	self parentType ifNotNil: [ :parent |
		self setOn: newMethod bidirectionalProperty: #parentType value: parent	].

	self parentPackage ifNotNil: [ :parent |
		self setOn: newMethod bidirectionalProperty: #parentPackage value: parent	].

	self declaredType ifNotNil: [ :type |
		self setOn: newMethod bidirectionalProperty: #declaredType value: type ].

	newMethod resetMooseName.

	entity := newMethod.
	^ entity
]

{ #category : 'accessing' }
ORActionAddMethod >> signature [

	^ signature
]

{ #category : 'accessing' }
ORActionAddMethod >> signature: anObject [

	signature := anObject
]
