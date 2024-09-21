Class {
	#name : 'ORActionMoveClass',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionMoveClass >> run [

	| versionedEntity |
	versionedEntity := self orionModel ensureOrionEntity: entity.

	self to ifNotNil: [ :newParent |
		self
			setFamixProperty: #parentPackage
			on: versionedEntity
			to: newParent ].

	versionedEntity resetMooseName.

	^ versionedEntity
]
