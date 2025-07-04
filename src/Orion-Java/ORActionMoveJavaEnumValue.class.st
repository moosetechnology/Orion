"
I move a new FamixJavaEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionMoveJavaEnumValue',
	#superclass : 'ORActionMoveTEnumValue',
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
ORActionMoveJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaEnumValue >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]
