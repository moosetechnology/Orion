Class {
	#name : 'ORActionRenameClass',
	#superclass : 'ORAction',
	#instVars : [
		'newName'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'accessing' }
ORActionRenameClass >> newName [
	
	^ newName
]

{ #category : 'accessing' }
ORActionRenameClass >> newName: anObject [
	
	newName := anObject
]

{ #category : 'accessing' }
ORActionRenameClass >> run [

	| theEntity |

	super run.
	theEntity := (self orionModel ensureOrionEntity: entity).
	theEntity name: newName.
	entity := theEntity.

	^ entity
]
