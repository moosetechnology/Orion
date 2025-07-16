"
I add a FamixJavaInvocation in a MooseModel
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
	#name : 'ORActionAddJavaInvocation',
	#superclass : 'ORActionAddJava',
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
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaInvocation >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> candidates [ ^candidates
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> candidates: aValue [ candidates := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> previous: aValue [ previous := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> receiver [ ^receiver
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> receiver: aValue [ receiver := aValue
]

{ #category : 'method execution' }
ORActionAddJavaInvocation >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
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
ORActionAddJavaInvocation >> sender [ ^sender
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> sender: aValue [ sender := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> signature [ ^signature
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> signature: aValue [ signature := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaInvocation >> sourceAnchor: aValue [ sourceAnchor := aValue
]
