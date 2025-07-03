"
I add a FamixTInvocation in a MooseModel
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
	#name : 'ORActionAddTInvocation',
	#superclass : 'ORActionAdd',
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
ORActionAddTInvocation class >> run [
	super run.
	entity candidates: self candidates.
	entity receiver: self receiver.
	entity sender: self sender.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	entity signature: self signature.
	^entity.
]

{ #category : 'accessing' }
ORActionAddTInvocation >> candidates [ ^candidates
]

{ #category : 'accessing' }
ORActionAddTInvocation >> candidates: aValue [ candidates := aValue
]

{ #category : 'accessing' }
ORActionAddTInvocation >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddTInvocation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddTInvocation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddTInvocation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionAddTInvocation >> receiver [ ^receiver
]

{ #category : 'accessing' }
ORActionAddTInvocation >> receiver: aValue [ receiver := aValue
]

{ #category : 'method execution' }
ORActionAddTInvocation >> run [

	super run.
	entity candidates: self candidates.
	entity receiver: self receiver.
	entity sender: self sender.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.
	entity signature: self signature.

	^entity.
]

{ #category : 'accessing' }
ORActionAddTInvocation >> sender [ ^sender
]

{ #category : 'accessing' }
ORActionAddTInvocation >> sender: aValue [ sender := aValue
]

{ #category : 'accessing' }
ORActionAddTInvocation >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionAddTInvocation >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionAddTInvocation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddTInvocation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
