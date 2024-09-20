Extension { #name : 'MooseEntity' }

{ #category : '*Orion' }
MooseEntity >> addWithoutInverse: propertyName value: aValue [

	((self class slotNamed: propertyName) orionPrimitiveRead: self)
		unsafeAdd: aValue
]

{ #category : '*Orion' }
MooseEntity >> orionContext [
	^self attributeAt: #orionContext ifAbsent: [ self mooseModel ]
]

{ #category : '*Orion' }
MooseEntity >> orionContext: anOrionModel [
	self attributeAt: #orionContext put: anOrionModel 
]

{ #category : '*Orion' }
MooseEntity >> orionCopy [
	"Make a shallow copy of receiver to become a new version of it.

	 For properties that are collection, we must also make a shallow copy of the collection otherwise
	 adding/removing something from the orionCopy's property will add/remove it from the receiver
	 This is tricky because there are some automatic actions set on the slots (for Orion access and Famix
	 reciprocal property setting)

	 This is also needed for the cache that is still shared between receiver and copy"

	| theCopy |
	theCopy := super orionCopy.
	theCopy resetPrivateState.
	
	self mooseDescription allPropertiesDo: [ :prop |
		prop isMultivalued ifTrue: [
			prop orionPrimitiveSetOn: theCopy values: (prop orionPrimitiveGetFrom: self) shallowCopy
		]
	].
	^theCopy
]

{ #category : '*Orion' }
MooseEntity >> orionModel [
	^self mooseModel
]

{ #category : '*Orion' }
MooseEntity >> setWithoutInverse: propertyName value: aValue [

	(self class slotNamed: propertyName)
		orionPrimitiveWrite: aValue to: self
]

{ #category : '*Orion' }
MooseEntity >> versionLookup: anOrionModel [
	"looks up the receiver in the context of anOrionModel
	 The result might be a newer version of the receiver
	 Sets anOrionModel as the context of returned entity for the next query irt might do"

	^anOrionModel
		ifNil: [ self ]
		ifNotNil: [ anOrionModel versionLookup: self ].

]
