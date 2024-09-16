Extension { #name : 'FMOne' }

{ #category : '*NewOrion' }
FMOne >> read: anObject [

	^(super read: anObject)
		versionLookup: (anObject orionContext)
]
