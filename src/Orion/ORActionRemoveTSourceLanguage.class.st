"
I remove a FamixTSourceLanguage in a MooseModel
I need the following properties of the  sourcelanguage

-`sourcedEntities`
"
Class {
	#name : 'ORActionRemoveTSourceLanguage',
	#superclass : 'ORActionRemove',
	#instVars : [
		'sourcedEntities'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTSourceLanguage class >> createVersionnedEntitySelector [ ^ #newSourceLanguage
]

{ #category : 'method execution' }
ORActionRemoveTSourceLanguage class >> run [
	super run.
	entity sourcedEntities: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'method execution' }
ORActionRemoveTSourceLanguage >> createVersionnedEntitySelector [ ^ #newSourceLanguage
]

{ #category : 'method execution' }
ORActionRemoveTSourceLanguage >> run [

	super run.
	entity sourcedEntities: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionRemoveTSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
