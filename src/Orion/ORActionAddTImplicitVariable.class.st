Class {
	#name : 'ORActionAddTImplicitVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'parentBehaviouralEntity',
		'isStub',
		'sourceAnchor',
		'declaredType'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> name [ ^name
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> name: aValue [ name := aValue
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> parentBehaviouralEntity [ ^parentBehaviouralEntity
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> parentBehaviouralEntity: aValue [ parentBehaviouralEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTImplicitVariable >> run [

	| newEntity |
	newEntity := self orionModel newImplicitVariable.

	self setFamixProperty: #parentBehaviouralEntity on: newEntity to: self parentBehaviouralEntity. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #declaredType on: newEntity to: self declaredType.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImplicitVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
