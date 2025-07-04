"
I move a new FamixJavaImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionMoveJavaImplicitVariable',
	#superclass : 'ORActionMoveTImplicitVariable',
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
ORActionMoveJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionMoveJavaImplicitVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionMoveJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
