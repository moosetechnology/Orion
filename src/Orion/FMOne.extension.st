Extension { #name : 'FMOne' }

{ #category : '*Orion' }
FMOne >> read: anObject [

	^(super read: anObject)
		versionLookup: (anObject orionContext)
]
