"
I remove a new FamixTSourceLanguage in a MooseModel
I need the following properties of the new sourcelanguage

"
Class {
	#name : 'ORActionRemoveTSourceLanguage',
	#superclass : 'ORActionRemove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTSourceLanguage >> createVersionnedEntitySelector [

	^ #newSourceLanguage
]
