Class {
	#name : 'ORActionMoveTInvocation',
	#superclass : 'ORActionMove',
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
ORActionMoveTInvocation >> createVersionnedEntitySelector [

	^ #newInvocation
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> next [ ^next
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> receiver [ ^receiver
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> receiver: aValue [ receiver := aValue
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> sender [ ^sender
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> sender: aValue [ sender := aValue
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionMoveTInvocation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
