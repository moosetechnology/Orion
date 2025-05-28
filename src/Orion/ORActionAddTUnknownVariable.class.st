Class {
	#name : 'ORActionAddTUnknownVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> name: aValue [ name := aValue
]

{ #category : 'method execution' }
ORActionAddTUnknownVariable >> run [

	| newEntity |
	newEntity := self orionModel newUnknownVariable.

	self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
