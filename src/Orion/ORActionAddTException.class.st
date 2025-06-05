Class {
	#name : 'ORActionAddTException',
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
ORActionAddTException >> createVersionnedEntitySelector [

	^ #newException
]

{ #category : 'accessing' }
ORActionAddTException >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTException >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTException >> run [

	super run.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTException >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTException >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTException >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTException >> typeContainer: aValue [ typeContainer := aValue
]
