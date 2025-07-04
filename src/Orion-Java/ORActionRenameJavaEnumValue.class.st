"
I rename a new FamixJavaEnumValue in a MooseModel
I need the following properties of the new enumvalue

-`annotationInstances`
-`receivingInvocations`
-`comments`
"
Class {
	#name : 'ORActionRenameJavaEnumValue',
	#superclass : 'ORActionRenameTEnumValue',
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
ORActionRenameJavaEnumValue >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> comments [ ^comments
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> comments: aValue [ comments := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaEnumValue >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaEnumValue >> receivingInvocations: aValue [ receivingInvocations := aValue
]
