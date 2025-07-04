"
I remove a FamixJavaVariable in a MooseModel
I need the following properties of the  variable

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
"
Class {
	#name : 'ORActionRemoveJavaVariable',
	#superclass : 'ORActionRemoveNamedEntity',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaVariable >> createVersionnedEntitySelector [ ^ #newVariable
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaVariable >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity annotationInstances: nil.
	entity receivingInvocations: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
