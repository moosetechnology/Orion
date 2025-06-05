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
