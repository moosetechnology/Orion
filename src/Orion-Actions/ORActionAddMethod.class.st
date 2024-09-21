"
A ORActionAddAttribute is a generated class useful to Orion. It corresponds to an action that can be performed on a type of model element. See OrionGenerator in Moose/Orion on SmalltalkHub for more information.
"
Class {
	#name : 'ORActionAddMethod',
	#superclass : 'ORActionAdd',
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

{ #category : 'accessing' }
ORActionAddMethod >> declaredType [
	^ declaredType
]

{ #category : 'accessing' }
ORActionAddMethod >> declaredType: aValue [
	declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddMethod >> isClassSide [
	^ isClassSide
]

{ #category : 'accessing' }
ORActionAddMethod >> isClassSide: aValue [
	isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddMethod >> isStub [
	^ isStub
]

{ #category : 'accessing' }
ORActionAddMethod >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing' }
ORActionAddMethod >> name [
	^ name
]

{ #category : 'accessing' }
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

{ #category : 'accessing' }
ORActionAddMethod >> parentType [
	^ parentType
]

{ #category : 'accessing' }
ORActionAddMethod >> parentType: aValue [
	parentType := aValue
]

{ #category : 'method execution' }
ORActionAddMethod >> run [

	| newMethod |

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
