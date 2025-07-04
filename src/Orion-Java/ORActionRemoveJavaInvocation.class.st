"
I remove a FamixJavaInvocation in a MooseModel
I need the following properties of the  invocation

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
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
	#superclass : 'ORActionRemove',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'candidates',
		'receiver',
		'sender',
		'next',
		'previous',
		'sourceAnchor',
		'signature'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> candidates [ ^candidates
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> candidates: aValue [ candidates := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaInvocation >> createVersionnedEntitySelector [ ^ #newInvocation
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaInvocation >> mooseName: aValue [ mooseName := aValue
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
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
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
