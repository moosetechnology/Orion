"
I add a FamixTClass in a MooseModel
I need the following properties of the  class

-`receivingInvocations`
-`typeContainer`
-`typedEntities`
-`isStub`
-`sourceAnchor`
-`incomingReferences`
-`attributes`
-`comments`
-`superInheritances`
-`subInheritances`
-`methods`
"
Class {
	#name : 'ORActionAddTClass',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'receivingInvocations',
		'typeContainer',
		'typedEntities',
		'isStub',
		'sourceAnchor',
		'incomingReferences',
		'attributes',
		'comments',
		'superInheritances',
		'subInheritances',
		'methods'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTClass class >> createVersionnedEntitySelector [ ^ #newClass
]

{ #category : 'method execution' }
ORActionAddTClass class >> run [
	super run.
	entity receivingInvocations: self receivingInvocations.
	entity typeContainer: self typeContainer.
	entity typedEntities: self typedEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity incomingReferences: self incomingReferences.
	entity attributes: self attributes.
	entity comments: self comments.
	entity superInheritances: self superInheritances.
	entity subInheritances: self subInheritances.
	entity methods: self methods.
	^entity.
]

{ #category : 'method execution' }
ORActionAddTClass >> createVersionnedEntitySelector [

	^ #newClass
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTClass >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTClass >> run [

	super run.

	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	entity typeContainer: self typeContainer.

	^ entity
]

{ #category : 'accessing' }
ORActionAddTClass >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTClass >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTClass >> typeContainer [ ^typeContainer
]

{ #category : 'accessing' }
ORActionAddTClass >> typeContainer: aValue [ typeContainer := aValue
]
