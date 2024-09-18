Extension { #name : 'FMRelationSlot' }

{ #category : '*Orion' }
FMRelationSlot >> orionPrimitiveRead: anObject [
	"the default #read: without using #orionLookup:
	 needed when we want to access the collection itself to modify it (add/remove element)"

	^super read: anObject
]

{ #category : '*Orion' }
FMRelationSlot >> orionPrimitiveWrite: aValue to: anObject [
	"the default #write:to: without using #orionLookup:
	 needed when we want to access the collection itself to modify it (add/remove element)"

	^super write: aValue to: anObject
]
