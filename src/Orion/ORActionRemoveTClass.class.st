"
I add a new FamixTClass in an OrionModel.
I need the following properties of the new class:
- `name`
- `parentPackage` (/!\ This is not from TClass but a common property)
- whether it is a stub (`isStub`)
"
Class {
	#name : 'ORActionRemoveTClass',
	#superclass : 'ORActionRemove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTClass >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTClass.

	super entity: anEntity
]

{ #category : 'method execution' }
ORActionRemoveTClass >> run [

	| versionedEntity |
	versionedEntity := self orionModel versionLookup: self entity.

	self setFamixProperty: #parentPackage on: versionedEntity to: nil.
	self orionModel remove: versionedEntity.

	^ entity
]
