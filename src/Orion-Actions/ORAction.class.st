"
An ORAction is an abstract class corresponding to any action that can be performed on an entity.

Instance Variables
	childrenActions:		corresponds to the collection of actions composing the given action
	cost:		<Object>
	entity:		entity on which the action is performed
	orionModel:		the Orion model on which the action is performed
	parentAction:		the parent action if it has been performed inside the execution of another action.

"
Class {
	#name : 'ORAction',
	#superclass : 'Object',
	#instVars : [
		'entity',
		'orionModel'
	],
	#category : 'Orion-Actions',
	#package : 'Orion-Actions'
}

{ #category : 'accessing' }
ORAction >> entity [
	^ entity
]

{ #category : 'accessing' }
ORAction >> entity: anObject [
	entity := anObject
]

{ #category : 'testing' }
ORAction >> isAddition [
	^false
]

{ #category : 'testing' }
ORAction >> isMove [
	^false
]

{ #category : 'testing' }
ORAction >> isPairedChange [
	^ false
]

{ #category : 'testing' }
ORAction >> isRemoval [
	^false
]

{ #category : 'testing' }
ORAction >> isRename [
	^false
]

{ #category : 'accessing' }
ORAction >> orionModel [
	^ orionModel
]

{ #category : 'accessing' }
ORAction >> orionModel: anObject [
	orionModel := anObject.
	"anObject changes add: self"
]

{ #category : 'method execution - generated' }
ORAction >> orionPrimitiveSetSlot: aSlot on: anEntity value: aValue [

	aSlot isToOne
		ifTrue: [ aSlot orionPrimitiveWrite: aValue to: anEntity ]
		ifFalse: [ (aSlot orionPrimitiveRead: anEntity) unsafeAdd: aValue ]

]

{ #category : 'initialize-release' }
ORAction >> postRun [

	orionModel addToListOfChanges: self.
	"orionModel system announcer announce: ORAnnouncement"
]

{ #category : 'printing' }
ORAction >> printOn: stream [ 

	stream 
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: entity class name;
		nextPut: $);
		nextPutAll:  entity mooseName
]

{ #category : 'printing' }
ORAction >> printWorkspace [

	^ '>', self class description, '>> '
]

{ #category : 'method execution' }
ORAction >> run [

	"aVersion system announcer announce: ORAnnouncement."
	entity := entity versionLookup: self orionModel.
]

{ #category : 'method execution - generated' }
ORAction >> setOn: sourceEntity bidirectionalProperty: propertyName value: targetEntity [

	| aSlot versionedTarget |
	versionedTarget := self orionModel ensureOrionEntity: targetEntity.
	
	aSlot := sourceEntity class slotNamed: propertyName.
	self orionPrimitiveSetSlot: aSlot on: sourceEntity value: versionedTarget.

	aSlot := aSlot realInverseSlotFor: targetEntity.
	self orionPrimitiveSetSlot: aSlot on: versionedTarget value: sourceEntity.

]
