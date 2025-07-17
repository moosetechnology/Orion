Extension { #name : 'FMMany' }

{ #category : '*Orion' }
FMMany >> read: anObject [
	"Does an orionLookup: for all elements in the collection"

	| value orionContext |
	value := super read: anObject.
	orionContext := anObject orionContext.

	value doWithIndex: [ :entity :ind |
			(entity versionLookup: orionContext)
				ifNil: [ self halt: 'Not sure #ifNil should be possible, we leave it that way for now' ]
				ifNotNil: [ :versionnedEntity |
				value at: ind put: versionnedEntity ] ].

	^ value
]
