"
I add a new FamixTEnum in an OrionModel.
I need the following properties :
- `isStub`
- `name`
- `typeContainer`
- `visibility`
"
Class {
	#name : 'ORActionAddTEnum',
	#superclass : 'ORActionAddTNamedEntity',
	#instVars : [
		'name',
		'typeContainer',
		'isStub',
		'visibility'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTEnum >> isStub [ 
	^isStub 
]

{ #category : 'accessing' }
ORActionAddTEnum >> isStub: aValue [
	isStub := aValue 
]

{ #category : 'accessing' }
ORActionAddTEnum >> name [
	^name 
]

{ #category : 'accessing' }
ORActionAddTEnum >> name: aValue [
	name := aValue 
]

{ #category : 'method execution' }
ORActionAddTEnum >> run [
	| newEnum |
	newEnum := self orionModel newClass .

	self setFamixProperty: #isStub  on: newEnum to: self isStub .
	self setFamixProperty: #name on: newEnum to: self name .
	self setFamixProperty: #typeContainer on: newEnum to: self typeContainer .
	"self setFamixProperty: #visibility on: newEnum to: self visibility ."

	newEnum resetMooseName.
	entity := newEnum .
	^entity
]

{ #category : 'accessing' }
ORActionAddTEnum >> typeContainer [ 
	^typeContainer 
]

{ #category : 'accessing' }
ORActionAddTEnum >> typeContainer: aValue [
	typeContainer := aValue 
]

{ #category : 'accessing' }
ORActionAddTEnum >> visibility [
	^visibility 
]

{ #category : 'accessing' }
ORActionAddTEnum >> visibility: aValue [
	visibility := aValue 
]
