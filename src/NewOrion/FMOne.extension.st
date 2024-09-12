Extension { #name : 'FMOne' }

{ #category : '*NewOrion' }
FMOne >> read: anObject [
'FMOne>>read: ' traceCr.

	^(super read: anObject)
		versionLookup: (anObject orionContext)
]
