Class {
	#name : 'ORActionAddTPrimitiveType',
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
ORActionAddTPrimitiveType >> createVersionnedEntitySelector [

	^ #newPrimitiveType
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTPrimitiveType >> run [

	super run.

	self setFamixProperty: #typeContainer on: newEntity to: self typeContainer. self setFamixProperty: #isStub on: newEntity to: self isStub. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTPrimitiveType >> typeContainer: aValue [ typeContainer := aValue
]
