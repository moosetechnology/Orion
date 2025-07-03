"
I remove a FamixTInvocation in a MooseModel
I need the following properties of the  invocation

-`candidates`
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
		'candidates',
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
ORActionRemoveTInvocation class >> createVersionnedEntitySelector [ ^ #newInvocation
]

{ #category : 'method execution' }
ORActionRemoveTInvocation class >> run [
	super run.
	entity candidates: nil.
	entity receiver: nil.
	entity sender: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	entity signature: nil.
	self orionModel remove: (self orion versionLookup: self entity).
	^entity.
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> candidates [ ^candidates
]

{ #category : 'accessing' }
ORActionRemoveTInvocation >> candidates: aValue [ candidates := aValue
]

{ #category : 'method execution' }
ORActionRemoveTInvocation >> createVersionnedEntitySelector [ ^ #newInvocation
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

	super run.
	entity candidates: nil.
	entity receiver: nil.
	entity sender: nil.
	entity next: nil.
	entity previous: nil.
	entity sourceAnchor: nil.
	entity signature: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
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
