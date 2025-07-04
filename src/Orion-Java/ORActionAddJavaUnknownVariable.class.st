"
I add a FamixJavaUnknownVariable in a MooseModel
I need the following properties of the  unknownvariable

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`annotationInstances`
-`receivingInvocations`
-`incomingAccesses`
-`isStub`
-`declaredType`
"
Class {
	#name : 'ORActionAddJavaUnknownVariable',
	#superclass : 'ORActionAddNamedEntity',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'annotationInstances',
		'receivingInvocations',
		'incomingAccesses',
		'isStub',
		'declaredType'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> annotationInstances [ ^annotationInstances
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> annotationInstances: aValue [ annotationInstances := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionAddJavaUnknownVariable >> createVersionnedEntitySelector [ ^ #newUnknownVariable
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> declaredType [ ^declaredType
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> declaredType: aValue [ declaredType := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> incomingAccesses [ ^incomingAccesses
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> incomingAccesses: aValue [ incomingAccesses := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> isStub [ ^isStub
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> isStub: aValue [ isStub := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> receivingInvocations [ ^receivingInvocations
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> receivingInvocations: aValue [ receivingInvocations := aValue
]

{ #category : 'method execution' }
ORActionAddJavaUnknownVariable >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity annotationInstances: self annotationInstances.
	entity receivingInvocations: self receivingInvocations.
	entity incomingAccesses: self incomingAccesses.
	entity isStub: self isStub.
	entity declaredType: self declaredType.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaUnknownVariable >> sourceAnchor: aValue [ sourceAnchor := aValue
]
