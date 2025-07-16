"
I add a FamixJavaVariable in a MooseModel
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
	#name : 'ORActionAddJavaVariable',
	#superclass : 'ORActionAddJava',
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
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionAddJavaVariable >> createVersionnedEntitySelector [ ^ #newVariable
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaVariable >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
