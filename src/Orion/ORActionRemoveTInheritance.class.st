"
I add a new FamixTClass in an OrionModel.
I need the following properties of the new class:
- `name`
- `parentPackage` (/!\ This is not from TClass but a common property)
- whether it is a stub (`isStub`)
"
Class {
	#name : 'ORActionRemoveTInheritance',
	#superclass : 'ORActionRemove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveTInheritance >> entity: anEntity [

	IllegalType check: anEntity useTrait: FamixTInheritance.

	super entity: anEntity
]

{ #category : 'method execution' }
ORActionRemoveTInheritance >> run [

	self setFamixProperty: #superclass on: entity to: nil.
	self setFamixProperty: #subclass on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]
