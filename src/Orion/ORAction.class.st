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
	#package : 'Orion',
	#tag : 'Actions'
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

{ #category : 'writing low-level' }
ORAction >> oneWaySetSlot: aSlot on: anEntity to: aValue [

	aSlot isToOne
		ifTrue: [ aSlot orionPrimitiveWrite: aValue to: anEntity ]
		ifFalse: [ (aSlot orionPrimitiveRead: anEntity) unsafeAdd: aValue ]

]

{ #category : 'writing low-level' }
ORAction >> oneWayUnsetSlot: aSlot on: anEntity to: aValue [
	"removes the link between anEntity and aValue
	 if aSlot contains a collection, aValue is removed from it
	 if it contains aValue, aSlot is set to nil"

	aSlot isToOne
		ifTrue: [ aSlot orionPrimitiveWrite: nil to: anEntity ]
		ifFalse: [ (aSlot orionPrimitiveRead: anEntity) unsafeRemove: aValue ]

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

{ #category : 'printing' }
ORAction >> printOn: stream [ 

	stream 
		nextPutAll: self class name;
		nextPut: $(;
		nextPutAll: entity class name;
		nextPut: $);
		nextPutAll:  entity mooseName
]

{ #category : 'method execution' }
ORAction >> run [

	self subclassResponsibility 
]

{ #category : 'writing properties' }
ORAction >> setFamixProperty: propertyName on: sourceEntity to: targetValue [
	"puts targetValue in propertyName of sourceEntity, removing the old value before
	 if targetValue is an entity, will also set and unset the inverse property
	 SourceEntity (and possibly targetValue) must be versionned in the receiver's #orionodel"

	| versionedSource versionedTarget aSlot |

	versionedSource := self orionModel ensureOrionEntity: sourceEntity.
	versionedTarget := targetValue isMooseEntity
		ifTrue:  [ self orionModel ensureOrionEntity: targetValue ]
		ifFalse: [ targetValue ].

	aSlot := versionedSource class slotNamed: propertyName.

	(aSlot orionPrimitiveRead: versionedSource) ifNotNil: [ :oldValue |
		self twoWaysUnsetSlot: aSlot on: versionedSource to: oldValue ].

	versionedTarget ifNotNil: [
		self twoWaysSetSlot: aSlot on: versionedSource to: versionedTarget ].

	^versionedSource
]

{ #category : 'writing low-level' }
ORAction >> twoWaysSetSlot: aSlot on: anEntity to: aValue [
	"Set aSlot to aValue for anEntity and set the inverse slot if there is one"

	| inverseSlot |

	self oneWaySetSlot: aSlot on: anEntity to: aValue.

	aSlot hasInverse ifFalse: [ ^self ].

	inverseSlot := aSlot realInverseSlotFor: aValue.
	self oneWaySetSlot: inverseSlot on: aValue to: anEntity

]

{ #category : 'writing low-level' }
ORAction >> twoWaysUnsetSlot: aSlot on: anEntity to: aValue [
	"unet aSlot to aValue for anEntity and unset the inverse slot if there is one
	 his is different from setting because if there is a collection we need to remove from it
	 whereas setting adds to it"

	| inverseSlot |

	self oneWayUnsetSlot: aSlot on: anEntity to: aValue.

	aSlot hasInverse ifFalse: [ ^self ].

	inverseSlot := aSlot realInverseSlotFor: aValue.
	self oneWayUnsetSlot: inverseSlot on: aValue to: anEntity

]
