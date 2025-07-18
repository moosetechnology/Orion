"
I remove a FamixJavaInvocation in a MooseModel
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
	#name : 'ORActionRemoveJavaInvocation',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'candidates',
		'receiver',
		'sender',
		'next',
		'previous',
		'sourceAnchor',
		'signature'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> candidates [ ^candidates
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> candidates: aValue [ candidates := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> next [ ^next
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> receiver [ ^receiver
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> receiver: aValue [ receiver := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaInvocation >> run [

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
ORActionRemoveJavaInvocation >> sender [ ^sender
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> sender: aValue [ sender := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
