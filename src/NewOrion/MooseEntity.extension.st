Extension { #name : 'MooseEntity' }

{ #category : '*NewOrion' }
MooseEntity >> addWithoutInverse: propertyName value: aValue [

	((self class slotNamed: propertyName) orionPrimitiveRead: self)
		unsafeAdd: aValue
]

{ #category : '*NewOrion' }
MooseEntity >> orionContext [
	^self attributeAt: #orionContext ifAbsent: [ self mooseModel ]
]

{ #category : '*NewOrion' }
MooseEntity >> orionContext: anOrionModel [
	self attributeAt: #orionContext put: anOrionModel 
]

{ #category : '*NewOrion' }
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

{ #category : '*NewOrion' }
MooseEntity >> orionModel [
	^self mooseModel
]

{ #category : '*NewOrion' }
MooseEntity >> setWithoutInverse: propertyName value: aValue [

	(self class slotNamed: propertyName)
		orionPrimitiveWrite: aValue to: self
]

{ #category : '*NewOrion' }
MooseEntity >> versionLookup: anOrionModel [
	"looks up the receiver in the context of anOrionModel
	 The result might be a newer version of the receiver
	 Sets anOrionModel as the context of returned entity for the next query irt might do"

	| upEntity |
	anOrionModel ifNil: [ ^self ].

	upEntity := anOrionModel entityStorage
		            atID: self mooseID
		            ifAbsent: [ "OREntityNotFoundInCurrentModel signal: self model: anOrionModel."
			            ^ nil "Should NEVER happen (excepted in one cases. See (*))... If it is happening, you are NOT in the right model and currentContext of the caller should have been set to the right model where the considered entity is existing. By set, I mean for at least the first entity where you begin the query; the currentContext is transmitted to the other entities  ---VB---
				(*) In fact, this method should answer nil only in one case, and only in this one: 	if an entity of a previous model has been deleted and is acceeded by a single value selector (i.e. not a multivalued one). E.g:						
						Let M1 and M2, 2 models. M1 is the parent of M2. 
						Let A and B 2 entites of M1, where we can access B from A through a method called m(). m() answers either an object or nil.
						If B is deleted in M2, the call of m() on A, in M1 should give B and in M2, nil.
						Calling m(), call privateM() that gives all the B in all the models: B. But, B does not exists in M2.
						I, versionIn:, do not find B in M2 (as expected), so fall in this absent block. AND SHOULD RETURN nil... (so disagree with Jannik Thesis: https://tel.archives-ouvertes.fr/tel-00601546...)" ].

	upEntity orionContext: anOrionModel.
	^ upEntity
]
