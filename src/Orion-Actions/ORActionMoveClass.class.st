Class {
	#name : 'ORActionMoveClass',
	#superclass : 'ORActionMove',
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'method execution' }
ORActionMoveClass >> run [

	| versionedEntity |

	versionedEntity := self orionModel ensureOrionEntity: entity.

	versionedEntity parentPackage ifNotNil: [ :oldParent |
		self unsetBidirectionalProperty: #parentPackage on: versionedEntity value: oldParent
	].

	self to ifNotNil: [ :newParent |
		self setOn: versionedEntity bidirectionalProperty: #parentPackage value: newParent
	].

	versionedEntity resetMooseName.

	^ versionedEntity
]
