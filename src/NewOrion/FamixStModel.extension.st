Extension { #name : 'FamixStModel' }

{ #category : '*NewOrion' }
FamixStModel >> addChildVersion: anObject [

	self childrenVersions add: anObject
]

{ #category : '*NewOrion' }
FamixStModel >> basename [

	| i |
	i := self name indexOf: $_ ifAbsent: [self name size + 1].
	^self name
		copyFrom: 1 to: (i - 1)
]

{ #category : '*NewOrion' }
FamixStModel >> beForOrion [
	"take a MooseModel and convert it in a ORModel"

	| oldStorage |
	self isOrionModel
		ifTrue: [ ^self ].

	oldStorage := self entities.
	self orionInitialization.

	oldStorage
		do: [ :anEntity | 
			"| myNewClass newAtt |
			myNewClass := self mapping at: anEntity class ifAbsent: [ nil ].
			myNewClass
				ifNotNil: [ anEntity primitiveChangeClassTo: myNewClass new.
					state := anEntity privateState.
					state primitiveChangeClassTo: anEntity defaultStateClass new.
					newAtt := SmallDictionary new.
					state privateAttributes do: [ :attr | newAtt at: attr key put: attr value ].
					state privateAttributes: newAtt.
					anEntity privateState: state."
					self add: anEntity ]
]

{ #category : '*NewOrion' }
FamixStModel >> childrenVersions [

	^self attributeAt: #childrenVersions ifAbsent: [ OrderedCollection new ]
]

{ #category : '*NewOrion' }
FamixStModel >> contains: anElement [
	^ anElement orionModel = self
]

{ #category : '*NewOrion' }
FamixStModel >> createEntityFrom: anEntity [
	| newEntity |
	self remove: anEntity.
	newEntity := anEntity shallowCopy.
	newEntity mooseModel: self.
	^ newEntity
]

{ #category : '*NewOrion' }
FamixStModel >> initialize [

	super initialize.
	self orionInitialization
]

{ #category : '*NewOrion' }
FamixStModel >> isFirstVersion [

	^self parentVersion isNil
]

{ #category : '*NewOrion' }
FamixStModel >> isLastVersion [

	^self childrenVersions isEmpty
]

{ #category : '*NewOrion' }
FamixStModel >> makeNewVersion [
	"Creates a new child version of the receiver"

	^self class newVersionOf: self
]

{ #category : '*NewOrion' }
FamixStModel class >> newVersionOf: aModel [

	| childVersion |
	childVersion := self new.
	aModel addChildVersion: childVersion.

	childVersion
		parentVersion: aModel ;
		name: (aModel basename , '_' , Date current yyyymmdd , '_' , Time current print24) ;
		populateFrom: aModel.

		^childVersion
]

{ #category : '*NewOrion' }
FamixStModel >> orionInitialization [

	self attributeAt: #childrenVersions put: OrderedCollection new.
	storage := ORStorage new.
	storage model: self
]

{ #category : '*NewOrion' }
FamixStModel >> parentVersion [

	^self attributeAt: #parentVersion ifAbsent: [ nil ]
]

{ #category : '*NewOrion' }
FamixStModel >> parentVersion: anObject [

	self attributeAt: #parentVersion put: anObject
]

{ #category : '*NewOrion' }
FamixStModel >> populateFrom: aModel [
	"All entities from aModel are also put in the receiver
	 Note that the entities are not duplicated"

	aModel entityStorage
		do: [ :anElement | 
			self entityStorage add: anElement.
			"anElement addModel: self" ]
]

{ #category : '*NewOrion' }
FamixStModel >> retrieveEntity: anEntity [
	^ (self contains: anEntity)
		ifTrue: [ anEntity ]
		ifFalse: [ | old new |
			old := self at: anEntity mooseID.
			new := self createEntityFrom: old.
			new ]
]
