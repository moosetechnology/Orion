"
I rename a new FamixJavaLocalVariable in a MooseModel
I need the following properties of the new localvariable

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaLocalVariable',
	#superclass : 'ORActionRenameTLocalVariable',
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
ORActionRenameJavaLocalVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaLocalVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaLocalVariable >> mooseName: aValue [ mooseName := aValue
]
