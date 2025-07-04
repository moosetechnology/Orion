"
I move a new FamixJavaLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaLocalVariable',
	#superclass : 'ORActionMoveTLocalVariable',
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
ORActionMoveJavaLocalVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaLocalVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaLocalVariable >> mooseName: aValue [ mooseName := aValue
]
