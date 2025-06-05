Class {
	#name : 'ORActionAddTReference',
	#superclass : 'ORActionAdd',
	#instVars : [
		'referencer',
		'referredEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTReference >> createVersionnedEntitySelector [

	^ #newReference
]

{ #category : 'accessing' }
ORActionAddTReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionAddTReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionAddTReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionAddTReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionAddTReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTReference >> run [

	super run.

	self setFamixProperty: #referencer on: newEntity to: self referencer. self setFamixProperty: #referredEntity on: newEntity to: self referredEntity. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
