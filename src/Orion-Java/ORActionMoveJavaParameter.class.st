"
I move a new FamixJavaParameter in a MooseModel
I need the following properties of the new parameter

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaParameter',
	#superclass : 'ORActionMoveTParameter',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Move',
	#package : 'Orion-Java',
	#tag : 'Move'
}

{ #category : 'accessing' }
ORActionMoveJavaParameter >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaParameter >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaParameter >> mooseName: aValue [ mooseName := aValue
]
