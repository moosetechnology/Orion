Extension { #name : 'FMMany' }

{ #category : '*NewOrion' }
FMMany >> read: anObject [
	"Does an orionLookup: for all elements in the collection"

	| srcCollection context tgtCollection |

	srcCollection := super read: anObject.
	context := anObject orionContext.

	tgtCollection := OrderedCollection new: srcCollection size.
	srcCollection do: [ :each |
		(each versionLookup: context)
			ifNotNil: [ :versionedEach | tgtCollection add: versionedEach ]
			"not sure #ifNil should really be possible"
	].

	^tgtCollection
]
