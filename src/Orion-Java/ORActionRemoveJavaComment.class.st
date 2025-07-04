"
I remove a FamixJavaComment in a MooseModel
I need the following properties of the  comment

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourceAnchor`
-`commentedEntity`
"
Class {
	#name : 'ORActionRemoveJavaComment',
	#superclass : 'ORActionRemove',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'commentedEntity'
	],
	#category : 'Orion-Java-Remove',
	#package : 'Orion-Java',
	#tag : 'Remove'
}

{ #category : 'accessing' }
ORActionRemoveJavaComment >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaComment >> createVersionnedEntitySelector [ ^ #newComment
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaComment >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourceAnchor: nil.
	entity commentedEntity: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionRemoveJavaComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
