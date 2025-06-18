"
I remove a new FamixTInvocation in a MooseModel
I need the following properties of the new invocation

-`receiver`
-`sender`
-`next`
-`previous`
-`sourceAnchor`
-`signature`
"
Class {
	#name : 'ORActionRemoveTInvocation',
	#superclass : 'ORActionRemove',
	#instVars : [
		'receiver',
		'sender',
		'next',
		'previous',
		'sourceAnchor',
		'signature'
	],
	#category : 'Orion-Actions',
	#package : 'Orion',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveTInvocation >> createVersionnedEntitySelector [

	^ #newInvocation
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> receiver [ ^receiver
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> receiver: aValue [ receiver := aValue
]

{ #category : 'method execution' }
ORActionRemoveTInvocation >> run [

	self setFamixProperty: #receiver on: entity to: nil. self setFamixProperty: #sender on: entity to: nil. self setFamixProperty: #next on: entity to: nil. self setFamixProperty: #previous on: entity to: nil. self setFamixProperty: #sourceAnchor on: entity to: nil. self setFamixProperty: #signature on: entity to: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^ entity
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> sender [ ^sender
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> sender: aValue [ sender := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
