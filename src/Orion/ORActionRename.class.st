Class {
	#name : 'ORActionRename',
	#superclass : 'ORAction',
	#instVars : [
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRename >> run [

	self setFamixProperty: #name on: self entity to: self name.

	^ entity
]
