"
I rename a new FamixJavaImplicitVariable in a MooseModel
I need the following properties of the new implicitvariable

-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionRenameJavaImplicitVariable',
	#superclass : 'ORActionRenameTImplicitVariable',
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
ORActionRenameJavaImplicitVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRenameJavaImplicitVariable >> createVersionnedEntitySelector [

	super createVersionnedEntitySelector.
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRenameJavaImplicitVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]
