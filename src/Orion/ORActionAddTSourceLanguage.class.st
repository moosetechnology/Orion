Class {
	#name : 'ORActionAddTSourceLanguage',
	#superclass : 'ORActionAdd',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTSourceLanguage >> run [

	| newEntity |
	newEntity := self orionModel newSourceLanguage.

	self setFamixProperty: #sourcedEntities on: newEntity to: self sourcedEntities. self setFamixProperty: #sourcedEntities on: newEntity to: self sourcedEntities.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionAddTSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
