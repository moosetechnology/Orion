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
ORActionAddTImplementation class >> run [
	super run.
	entity implementingClass: self implementingClass.
	entity interface: self interface.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
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
	entity implementingClass: self implementingClass.
	entity interface: self interface.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTImplementation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTImplementation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
