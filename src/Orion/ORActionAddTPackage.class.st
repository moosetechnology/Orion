"
I add a new FamixTPackage in an OrionModel.
I need the following properties :
- `isStub`
- `name`
- `parentPackage`
"
Class {
	#name : 'ORActionAddTPackage',
	#superclass : 'ORActionAdd',
	#instVars : [
		'name',
		'parentPackage',
		'isStub'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTPackage >> isStub [

	^ isStub
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub: anObject [

	isStub := anObject
]

{ #category : 'accessing' }
ORActionAddTPackage >> name [

	^ name
]

{ #category : 'accessing' }
ORActionAddTPackage >> name: anObject [

	name := anObject
]

{ #category : 'accessing' }
ORActionAddTPackage >> parentPackage [

	^ parentPackage
]

{ #category : 'accessing' }
ORActionAddTPackage >> parentPackage: anObject [

	parentPackage := anObject
]

{ #category : 'method execution' }
ORActionAddTPackage >> run [
	| newPackage |
	newPackage := self orionModel newPackage .

	self setFamixProperty: #isStub on: newPackage to: self isStub .
	self setFamixProperty: #name on: newPackage to: self name .

	newPackage resetMooseName.
	entity := newPackage .
	^entity
]
