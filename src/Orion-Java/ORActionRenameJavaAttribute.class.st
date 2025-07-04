"
I rename a new FamixJavaAttribute in a MooseModel
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
	#name : 'ORActionRenameJavaAttribute',
	#superclass : 'ORActionRenameTAttribute',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel'
	],
	#category : 'Orion-Java-Rename',
	#package : 'Orion-Java',
	#tag : 'Rename'
}

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaAttribute >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isClassSide [ ^isClassSide
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isClassSide: aValue [ isClassSide := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isTransient [ ^isTransient
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isTransient: aValue [ isTransient := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isVolatile [ ^isVolatile
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> isVolatile: aValue [ isVolatile := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> visibility [ ^visibility
]

{ #category : 'accessing' }
ORActionRenameJavaAttribute >> visibility: aValue [ visibility := aValue
]
