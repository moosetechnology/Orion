"
I add a new FamixJavaAttribute in a MooseModel
I need the following properties of the new attribute

-`annotationInstances`
-`receivingInvocations`
-`isTransient`
-`isVolatile`
-`isClassSide`
-`isFinal`
-`visibility`
-`comments`
"
Class {
	#name : 'ORActionAddJavaAttribute',
	#superclass : 'ORActionAddTAttribute',
	#instVars : [
		'annotationInstances',
		'receivingInvocations',
		'isTransient',
		'isVolatile',
		'isClassSide',
		'isFinal',
		'visibility',
		'comments'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaAttribute >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> comments: aValue [ comments := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaAttribute >> run [

	super run.

	self
		setFamixProperty: #annotationInstances
		on: newEntity
		to: self annotationInstances.
	self
		setFamixProperty: #annotationInstances
		on: newEntity
		to: self annotationInstances.
	self
		setFamixProperty: #receivingInvocations
		on: newEntity
		to: self receivingInvocations.
	self
		setFamixProperty: #isTransient
		on: newEntity
		to: self isTransient.
	self setFamixProperty: #isVolatile on: newEntity to: self isVolatile.
	self
		setFamixProperty: #isClassSide
		on: newEntity
		to: self isClassSide.
	self setFamixProperty: #isFinal on: newEntity to: self isFinal.
	self setFamixProperty: #visibility on: newEntity to: self visibility.
	self setFamixProperty: #comments on: newEntity to: self comments.

	newEntity resetMooseName.

	^newEntity
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionAddJavaAttribute >> visibility: aValue [ visibility := aValue
]
