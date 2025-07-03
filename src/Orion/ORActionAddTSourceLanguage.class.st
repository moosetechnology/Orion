"
I add a FamixTSourceLanguage in a MooseModel
I need the following properties of the  sourcelanguage

-`sourcedEntities`
"
Class {
	#name : 'ORActionAddTSourceLanguage',
	#superclass : 'ORActionAdd',
	#instVars : [
		'sourcedEntities'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTSourceLanguage class >> run [
	super run.
	entity sourcedEntities: self sourcedEntities.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTSourceLanguage >> run [

	super run.
	entity sourcedEntities: self sourcedEntities.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionAddTSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
