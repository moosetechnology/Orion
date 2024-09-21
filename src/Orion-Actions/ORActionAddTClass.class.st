"
I add a new FamixTClass in an OrionModel.
I need the following properties of the new class:
- `name`
- `parentPackage` (/!\ This is not from TClass but a common property)
- whether it is a stub (`isStub`)
"
Class {
	#name : 'ORActionAddTClass',
	#superclass : 'ORActionAdd',
	#instVars : [
		'isStub',
		'parentPackage',
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'accessing' }
ORActionAddTClass >> isStub [
	^ isStub
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> name [
	^ name
]

{ #category : 'accessing' }
ORActionAddTClass >> name: aValue [
	name := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> parentPackage [
	^ parentPackage
]

{ #category : 'accessing' }
ORActionAddTClass >> parentPackage: aValue [
	parentPackage := aValue
]

{ #category : 'printing' }
ORActionAddTClass >> printWorkspace [

	^ super printWorkspace , self entity mooseName, ' in ', self parentPackage mooseName
]

{ #category : 'method execution' }
ORActionAddTClass >> run [

	| newClass |
	newClass := self orionModel newClass.

	self name ifNotNil: [ :string | newClass name: string ].
	self isStub ifNotNil: [ :bool | newClass isStub: bool ].

	self parentPackage ifNotNil: [ :parent |
		self setOn: newClass bidirectionalProperty: #parentPackage value: parent ].

	entity := newClass.
	^ entity
]
