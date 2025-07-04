"
I add a FamixJavaImport in a MooseModel
I need the following properties of the  import

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`importedEntity`
-`importingEntity`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaImport',
	#superclass : 'ORActionAdd',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'importedEntity',
		'importingEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaImport >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaImport >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaImport >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> importedEntity [ ^importedEntity
]

{ #category : 'accessing' }
ORActionAddJavaImport >> importedEntity: aValue [ importedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> importingEntity [ ^importingEntity
]

{ #category : 'accessing' }
ORActionAddJavaImport >> importingEntity: aValue [ importingEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaImport >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaImport >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaImport >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaImport >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaImport >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaImport >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaImport >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity importedEntity: self importedEntity.
	entity importingEntity: self importingEntity.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaImport >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaImport >> sourceAnchor: aValue [ sourceAnchor := aValue
]
