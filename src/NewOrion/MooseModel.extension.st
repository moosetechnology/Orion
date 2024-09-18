Extension { #name : 'MooseModel' }

{ #category : '*NewOrion' }
MooseModel >> addChildVersion: anObject [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	self childrenVersions add: anObject
]

{ #category : '*NewOrion' }
MooseModel >> basename [

	| i |
	i := self name indexOf: $_ ifAbsent: [self name size + 1].
	^self name
		copyFrom: 1 to: (i - 1)
]

{ #category : '*NewOrion' }
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

{ #category : '*NewOrion' }
MooseModel >> childrenVersions [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self attributeAt: #childrenVersions ifAbsent: [ OrderedCollection new ]
]

{ #category : '*NewOrion' }
MooseModel >> containsOrion: anElement [

	^anElement orionModel = self
]

{ #category : '*NewOrion' }
MooseModel >> createEntityFrom: anEntity [
	| newEntity |
	
	self remove: anEntity.
	newEntity := anEntity orionCopy.
	newEntity name: (newEntity name , 'x').
	newEntity mooseModel: self.
	^ newEntity
]

{ #category : '*NewOrion' }
MooseModel >> ensureOrionEntity: anEntity [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^ (self containsOrion: anEntity)
		ifTrue: [ anEntity ]
		ifFalse: [ self createEntityFrom: (self at: anEntity mooseID) ]
]

{ #category : '*NewOrion' }
MooseModel >> isFirstVersion [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self parentVersion isNil
]

{ #category : '*NewOrion' }
MooseModel >> isLastVersion [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self childrenVersions isEmpty
]

{ #category : '*NewOrion' }
MooseModel >> isOrionModel [

	^storage isOrion
]

{ #category : '*NewOrion' }
MooseModel >> makeNewVersion [
	"Creates a new child version of the receiver"

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self class newOrionVersionOf: self
]

{ #category : '*NewOrion' }
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

{ #category : '*NewOrion' }
MooseModel >> parentVersion [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	^self attributeAt: #parentVersion ifAbsent: [ nil ]
]

{ #category : '*NewOrion' }
MooseModel >> parentVersion: anObject [

	self isOrionModel ifFalse: [ NotAnOrionModel signal ].

	self attributeAt: #parentVersion put: anObject
]

{ #category : '*NewOrion' }
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
