"
I move a new FamixTSourceLanguage in a MooseModel
I need the following properties of the new sourcelanguage

"
Class {
	#name : 'ORActionMoveTSourceLanguage',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveTSourceLanguage >> createVersionnedEntitySelector [

	^ #newSourceLanguage
]
