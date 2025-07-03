"
I add a FamixTPackage in a MooseModel
I need the following properties of the  package

-`childEntities`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTPackage',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'childEntities',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTPackage class >> createVersionnedEntitySelector [ ^ #newPackage
]

{ #category : 'method execution' }
ORActionAddTPackage class >> run [
	super run.
	entity childEntities: self childEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTPackage >> childEntities [ ^childEntities
]

{ #category : 'accessing' }
ORActionAddTPackage >> childEntities: aValue [ childEntities := aValue
]

{ #category : 'method execution' }
ORActionAddTPackage >> createVersionnedEntitySelector [ ^ #newPackage
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddTPackage >> isStub: aValue [ isStub := aValue
]

{ #category : 'method execution' }
ORActionAddTPackage >> run [

	super run.
	entity childEntities: self childEntities.
	entity isStub: self isStub.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTPackage >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTPackage >> sourceAnchor: aValue [ sourceAnchor := aValue
]
