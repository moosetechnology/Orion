"
A ORActionAddClass is a generated class useful to Orion. It corresponds to an action that can be performed on a type of model element. See OrionGenerator in Moose/Orion on SmalltalkHub for more information.
"
Class {
	#name : 'ORActionAddClass',
	#superclass : 'ORActionAddEntity',
	#instVars : [
		'definedAnnotationTypes',
		'typeAliases',
		'instances',
		'declaredSourceLanguage',
		'container',
		'annotationInstances',
		'structuresWithDeclaredType',
		'isStub',
		'parentPackage',
		'subInheritances',
		'types',
		'isInterface',
		'attributes',
		'modifiers',
		'behavioursWithDeclaredType',
		'functions',
		'comments',
		'incomingReferences',
		'superInheritances',
		'receivingInvocations',
		'sourceAnchor',
		'methods',
		'name'
	],
	#category : 'NewOrion-actions',
	#package : 'NewOrion',
	#tag : 'actions'
}

{ #category : 'accessing - generated' }
ORActionAddClass >> attributes [
	^ attributes
]

{ #category : 'accessing - generated' }
ORActionAddClass >> attributes: aValue [
	attributes := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> comments [
	^ comments
]

{ #category : 'accessing - generated' }
ORActionAddClass >> comments: aValue [
	comments := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> incomingReferences [
	^ incomingReferences
]

{ #category : 'accessing - generated' }
ORActionAddClass >> incomingReferences: aValue [
	incomingReferences := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> isStub [
	^ isStub
]

{ #category : 'accessing - generated' }
ORActionAddClass >> isStub: aValue [
	isStub := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> methods [
	^ methods
]

{ #category : 'accessing - generated' }
ORActionAddClass >> methods: aValue [
	methods := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> name [
	^ name
]

{ #category : 'accessing - generated' }
ORActionAddClass >> name: aValue [
	name := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> parentPackage [
	^ parentPackage
]

{ #category : 'accessing - generated' }
ORActionAddClass >> parentPackage: aValue [
	parentPackage := aValue
]

{ #category : 'printing' }
ORActionAddClass >> printWorkspace [

	^ super printWorkspace , self entity mooseName, ' in ', self parentPackage mooseName
]

{ #category : 'accessing - generated' }
ORActionAddClass >> receivingInvocations [
	^ receivingInvocations
]

{ #category : 'accessing - generated' }
ORActionAddClass >> receivingInvocations: aValue [
	receivingInvocations := aValue
]

{ #category : 'method execution - generated' }
ORActionAddClass >> run [

	| newEntity |
	newEntity := FamixStClass new.
	self orionModel add: newEntity.

	"Set primitive not derived properties of the entity"
	self isStub ifNotNil: [ :bool | newEntity isStub: bool ].

	self name ifNotNil: [ :string | newEntity name: string ].

	"Set complex not derived properties of the entity"
	self parentPackage ifNotNil: [ :parent | newEntity parentPackage: parent ].

	"self subInheritances ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self subInheritances collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateSubInheritances: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateSuperclass: newEntity ] ].

	self attributes ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self attributes collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateAttributes: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateParentType: newEntity ] ].

	self behavioursWithDeclaredType ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self behavioursWithDeclaredType collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateBehavioursWithDeclaredType:
			theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateDeclaredType: newEntity ] ].

	self comments ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self comments collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateComments: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateContainer: newEntity ] ].

	self incomingReferences ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self incomingReferences collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateIncomingReferences: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateTarget: newEntity ] ].

	self superInheritances ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self superInheritances collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateSuperInheritances: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateSubclass: newEntity ] ].

	self receivingInvocations ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self receivingInvocations collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateReceivingInvocations: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateReceiver: newEntity ] ].

	self sourceAnchor ifNotNil: [
		| theNewEntity |
		theNewEntity := self orionModel retrieveEntity: self sourceAnchor.
		newEntity privateSourceAnchor: theNewEntity orionCopy.
		theNewEntity privateElement: newEntity orionCopy ].

	self methods ifNotNil: [
		| theNewEntities |
		theNewEntities := OrderedCollection withAll:
			                  (self methods collect: [ :e |
				                   self orionModel retrieveEntity: e ]).
		newEntity privateMethods: theNewEntities orionCopy.
		theNewEntities do: [ :e | e privateParentType: newEntity ] ].
	self runExtendedPropertiesForEntity: newEntity."

	entity := newEntity.
	^ entity
]

{ #category : 'accessing - generated' }
ORActionAddClass >> sourceAnchor [
	^ sourceAnchor
]

{ #category : 'accessing - generated' }
ORActionAddClass >> sourceAnchor: aValue [
	sourceAnchor := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> subInheritances [
	^ subInheritances
]

{ #category : 'accessing - generated' }
ORActionAddClass >> subInheritances: aValue [
	subInheritances := aValue
]

{ #category : 'accessing - generated' }
ORActionAddClass >> superInheritances [
	^ superInheritances
]

{ #category : 'accessing - generated' }
ORActionAddClass >> superInheritances: aValue [
	superInheritances := aValue
]
