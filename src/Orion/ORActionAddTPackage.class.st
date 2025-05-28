Class {
	#name : 'ORActionAddTPackage',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTPackage >> childEntities [ ^childEntities
]

{ #category : 'accessing' }
ORActionAddTPackage >> childEntities: aValue [ childEntities := aValue
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTPackage >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTPackage >> name: aValue [ name := aValue
]

{ #category : 'method execution' }
ORActionAddTPackage >> run [

	| newEntity |
	newEntity := self orionModel newPackage.

	self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
