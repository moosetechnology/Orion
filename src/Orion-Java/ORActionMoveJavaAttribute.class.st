"
I move a new FamixJavaAttribute in a MooseModel
I need the following properties of the new attribute

-`annotationInstances`
-`receivingInvocations`
-`isTransient`
-`isVolatile`
-`isClassSide`
-`isFinal`
-`visibility`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaAttribute',
	#superclass : 'ORActionMoveTAttribute',
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
ORActionMoveJavaAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionMoveJavaAttribute >> visibility: aValue [ visibility := aValue
]
