"
I move a new FamixJavaUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionMoveJavaUnknownVariable',
	#superclass : 'ORActionMoveTUnknownVariable',
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
ORActionMoveJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaUnknownVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
