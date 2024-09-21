Class {
	#name : 'ORActionRenameTNamedEntity',
	#superclass : 'ORAction',
	#instVars : [
		'name'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRenameTNamedEntity >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTNamedEntity.

	super entity: anEntity
]

{ #category : 'accessing' }
ORActionRenameTNamedEntity >> name [
	
	^ name
]

{ #category : 'accessing' }
ORActionRenameTNamedEntity >> name: anObject [
	
	name := anObject asString
]

{ #category : 'accessing' }
ORActionRenameTNamedEntity >> run [

	self setFamixProperty: #name on: self entity to: self name.

	^ entity
]
