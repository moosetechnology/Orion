Class {
	#name : 'ORActionAddTInheritance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'subclass',
		'superclass',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddTInheritance class >> run [
	super run.
	entity subclass: self subclass.
	entity superclass: self superclass.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddTInheritance >> run [
	super run.
	entity subclass: self subclass.
	entity superclass: self superclass.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddTInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionAddTInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionAddTInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionAddTInheritance >> superclass: aValue [ superclass := aValue
]
