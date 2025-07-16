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

{ #category : 'accessing' }
ORActionRename >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTNamedEntity.

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionRename >> name [
	
	^ name
]

{ #category : 'accessing' }
ORActionRename >> name: anObject [
	
	name := anObject asString
]

{ #category : 'method execution' }
ORActionRename >> run [

	self entity name: self name.
	entity resetMooseName.

	^ entity
]
