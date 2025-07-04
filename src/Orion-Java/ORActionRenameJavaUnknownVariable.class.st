"
I rename a new FamixJavaUnknownVariable in a MooseModel
I need the following properties of the new unknownvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionRenameJavaUnknownVariable',
	#superclass : 'ORActionRenameTUnknownVariable',
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
ORActionRenameJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaUnknownVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
