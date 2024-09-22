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

	self setFamixProperty: #parentPackage on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]
