"
I add a FamixTReference in a MooseModel
I need the following properties of the  reference

-`referencer`
-`referredEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTReference',
	#superclass : 'ORActionAdd',
	#instVars : [
		'referencer',
		'referredEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTReference class >> run [
	super run.
	entity referencer: self referencer.
	entity referredEntity: self referredEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTReference >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTReference >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTReference >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTReference >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionAddTReference >> referencer [ ^referencer
]

{ #category : 'accessing' }
ORActionAddTReference >> referencer: aValue [ referencer := aValue
]

{ #category : 'accessing' }
ORActionAddTReference >> referredEntity [ ^referredEntity
]

{ #category : 'accessing' }
ORActionAddTReference >> referredEntity: aValue [ referredEntity := aValue
]

{ #category : 'method execution' }
ORActionAddTReference >> run [

	super run.
	entity referencer: self referencer.
	entity referredEntity: self referredEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTReference >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTReference >> sourceAnchor: aValue [ sourceAnchor := aValue
]
