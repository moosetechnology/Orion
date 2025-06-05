Class {
	#name : 'ORActionAddTType',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'typeContainer',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTType >> createVersionnedEntitySelector [

	^ #newType
]

{ #category : 'accessing' }
ORActionAddTType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTType >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTType >> run [

	super run.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTType >> typeContainer: aValue [ typeContainer := aValue
]
