Class {
	#name : 'ORActionRenameTInvocation',
	#superclass : 'ORActionRename',
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
ORActionRenameTInvocation >> next [ ^next
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> receiver [ ^receiver
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> receiver: aValue [ receiver := aValue
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> sender [ ^sender
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> sender: aValue [ sender := aValue
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRenameTInvocation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
