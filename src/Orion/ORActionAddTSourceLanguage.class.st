"
I add a new FamixTSourceLanguage in a MooseModel
I need the following properties of the new sourcelanguage

"
Class {
	#name : 'ORActionAddTSourceLanguage',
	#superclass : 'ORActionAdd',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTSourceLanguage >> createVersionnedEntitySelector [

	^ #newSourceLanguage
]

{ #category : 'method execution' }
ORActionAddTSourceLanguage >> run [

	| newEntity |
	newEntity := self orionModel newSourceLanguage.

	self setFamixProperty: #sourcedEntities on: newEntity to: self sourcedEntities. self setFamixProperty: #sourcedEntities on: newEntity to: self sourcedEntities.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]
