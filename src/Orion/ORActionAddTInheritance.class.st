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

{ #category : 'as yet unclassified' }
ORActionAddTInheritance class >> description [
	^'add inheritance'
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

	| newEntity |
	newEntity := self orionModel newInheritance.

	self setFamixProperty: #subclass on: newEntity to: self subclass. self setFamixProperty: #subclass on: newEntity to: self subclass. self setFamixProperty: #superclass on: newEntity to: self superclass. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
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
