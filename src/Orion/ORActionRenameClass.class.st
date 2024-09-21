Class {
	#name : 'ORActionRenameClass',
	#superclass : 'ORAction',
	#instVars : [
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameClass >> name [
	
	^ name
]

{ #category : 'accessing' }
ORActionRenameClass >> name: anObject [
	
	name := anObject
]

{ #category : 'accessing' }
ORActionRenameClass >> run [

	self setFamixProperty: #name on: self entity to: self name.

	^ entity
]
