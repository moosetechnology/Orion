"
I rename a new FamixJavaParameter in a MooseModel
I need the following properties of the new parameter

-`annotationInstances`
-`receivingInvocations`
-`isFinal`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaParameter',
	#superclass : 'ORActionRenameTParameter',
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
ORActionRenameJavaParameter >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaParameter >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> isFinal [ ^isFinal
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> isFinal: aValue [ isFinal := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaParameter >> mooseName: aValue [ mooseName := aValue
]
