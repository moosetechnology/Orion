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
	^ self class isAddition
]

{ #category : 'testing' }
ORAction >> isMove [
	^ self class isMove
]

{ #category : 'testing' }
ORAction >> isPairedChange [
	^ false
]

{ #category : 'testing' }
ORAction >> isRemoval [
	^ self class isRemoval
]

{ #category : 'testing' }
ORAction >> isRename [
	^ self class isRename
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
