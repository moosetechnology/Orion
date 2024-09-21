Extension { #name : 'InstanceVariableSlot' }

{ #category : '*Orion' }
InstanceVariableSlot >> orionPrimitiveRead: anObject [
	"the default #read: without using #orionLookup:
	 needed when we want to access the collection itself to modify it (add/remove element)"

	^super read: anObject
]

{ #category : '*Orion' }
InstanceVariableSlot >> orionPrimitiveWrite: aValue to: anObject [
	"the default #write:to: without using #orionLookup:
	 needed when we want to access the collection itself to modify it (add/remove element)"

	^super write: aValue to: anObject
]
