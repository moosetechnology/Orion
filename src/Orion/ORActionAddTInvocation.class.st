Class {
	#name : 'ORActionAddTInvocation',
	#superclass : 'ORActionAdd',
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

	| newEntity |
	newEntity := self orionModel newInvocation.

	self setFamixProperty: #receiver on: newEntity to: self receiver. self setFamixProperty: #sender on: newEntity to: self sender. self setFamixProperty: #next on: newEntity to: self next. self setFamixProperty: #previous on: newEntity to: self previous. self setFamixProperty: #sourceAnchor on: newEntity to: self sourceAnchor. self setFamixProperty: #signature on: newEntity to: self signature.

	newEntity resetMooseName.

	entity := newEntity.
	^ entity
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
