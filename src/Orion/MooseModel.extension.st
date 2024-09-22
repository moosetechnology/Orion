Extension { #name : 'MooseModel' }

{ #category : '*Orion' }
MooseModel >> addChildVersion: anObject [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	self childrenVersions add: anObject
]

{ #category : '*Orion' }
MooseModel >> basename [

	| i |
	i := self name indexOf: $_ ifAbsent: [self name size + 1].
	^self name
		copyFrom: 1 to: (i - 1)
]

{ #category : '*Orion' }
MooseModel >> beForOrion [
	"take a MooseModel and convert it in a ORModel"

	| oldStorage |
	self isOrionModel
		ifTrue: [ ^self ].

	self attributeAt: #childrenVersions put: OrderedCollection new.

	oldStorage := self entities.
	storage := ORStorage new.
	storage model: self.
	oldStorage do: [ :anEntity | storage add: anEntity ].

	self flush
]

{ #category : '*Orion' }
MooseModel >> childrenVersions [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self attributeAt: #childrenVersions ifAbsent: [ OrderedCollection new ]
]

{ #category : '*Orion' }
MooseModel >> containsOrion: anElement [

	^anElement orionModel = self
]

{ #category : '*Orion' }
MooseModel >> createEntityFrom: anEntity [
	| newEntity |
	
	self remove: anEntity.
	newEntity := anEntity orionCopy.
	newEntity mooseModel: self.
	^ newEntity
]

{ #category : '*Orion' }
MooseModel >> ensureVersioned: aValue [

	| myEntity |
	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	aValue isMooseEntity ifFalse: [ ^aValue ].

	myEntity := self versionLookup: aValue.
	^ (self containsOrion: myEntity)
		ifTrue: [ myEntity ]
		ifFalse: [ self createEntityFrom: (self at: myEntity mooseID) ]
]

{ #category : '*Orion' }
MooseModel >> isFirstVersion [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self parentVersion isNil
]

{ #category : '*Orion' }
MooseModel >> isLastVersion [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self childrenVersions isEmpty
]

{ #category : '*Orion' }
MooseModel >> isOrionModel [

	^storage isOrion
]

{ #category : '*Orion' }
MooseModel >> makeNewVersion [
	"Creates a new child version of the receiver"

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self class newOrionVersionOf: self
]

{ #category : '*Orion' }
MooseModel class >> newOrionVersionOf: aModel [

	| newVersion |
	aModel isOrionModel
		ifFalse: [ Exception signal: 'Must be an Orion model to create a new version of it (see #beForOrion)' ].

	newVersion := self new.

	newVersion
		name: (aModel basename , '_' , Date current yyyymmdd , '_' , Time current print24) ;
		populateFrom: aModel ;
		parentVersion: aModel ;
		attributeAt: #childrenVersions put: OrderedCollection new.

	aModel addChildVersion: newVersion.

	^newVersion
]

{ #category : '*Orion' }
MooseModel >> parentVersion [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self attributeAt: #parentVersion ifAbsent: [ nil ]
]

{ #category : '*Orion' }
MooseModel >> parentVersion: anObject [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	self attributeAt: #parentVersion put: anObject
]

{ #category : '*Orion' }
MooseModel >> populateFrom: aModel [
	"All entities from aModel are also put in the receiver
	 Note that the entities are not duplicated"
	
	| oldStorage |

	oldStorage := aModel entities.
	storage := ORStorage new.
	storage model: self.
	oldStorage do: [ :anEntity | storage add: anEntity ].

	self flush.
]

{ #category : '*Orion' }
MooseModel >> versionLookup: anEntity [

	| myEntity |
	anEntity ifNil: [ ^nil ].

	myEntity := self entityStorage
		atID: anEntity mooseID
		ifAbsent: [ "OREntityNotFoundInCurrentModel signal: self model: anOrionModel."
			^ nil
			"Should NEVER happen (excepted in one cases. See (*))... If it is happening, you are NOT in the right model and currentContext of the caller should have been set to the right model where the considered entity is existing. By set, I mean for at least the first entity where you begin the query; the currentContext is transmitted to the other entities  ---VB---
			(*) In fact, this method should answer nil only in one case, and only in this one: 	if an entity of a previous model has been deleted and is acceeded by a single value selector (i.e. not a multivalued one). E.g:						
				Let M1 and M2, 2 models. M1 is the parent of M2. 
				Let A and B 2 entites of M1, where we can access B from A through a method called m(). m() answers either an object or nil.
				If B is deleted in M2, the call of m() on A, in M1 should give B and in M2, nil.
				Calling m(), call privateM() that gives all the B in all the models: B. But, B does not exists in M2.
				I, versionIn:, do not find B in M2 (as expected), so fall in this absent block. AND SHOULD RETURN nil... (so disagree with Jannik Thesis: https://tel.archives-ouvertes.fr/tel-00601546...)" ].

	myEntity orionContext: self.
	^ myEntity
]
