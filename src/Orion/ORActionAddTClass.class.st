"
I add a new FamixTClass in a MooseModel
I need the following properties of the new class

-`typeContainer`
-`isStub`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTClass',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'typeContainer',
		'isStub',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

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
