"
I add a new FamixTImplementation in a MooseModel
I need the following properties of the new implementation

-`implementingClass`
-`interface`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddTImplementation',
	#superclass : 'ORActionAdd',
	#instVars : [
		'implementingClass',
		'interface',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTImplementation >> createVersionnedEntitySelector [

	^ #newImplementation
]

{ #category : 'accessing' }
ORActionAddTImplementation >> implementingClass [ ^implementingClass
]

{ #category : 'accessing' }
ORActionAddTImplementation >> implementingClass: aValue [ implementingClass := aValue
]

{ #category : 'accessing' }
ORActionAddTImplementation >> interface [ ^interface
]

{ #category : 'accessing' }
ORActionAddTImplementation >> interface: aValue [ interface := aValue
]

{ #category : 'accessing' }
ORActionAddTImplementation >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTImplementation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTImplementation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTImplementation >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTImplementation >> run [

	super run.

	self setFamixProperty: #implementingClass on: newEntity to: self implementingClass. self setFamixProperty: #interface on: newEntity to: self interface. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
]

{ #category : 'accessing' }
ORActionAddTImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
