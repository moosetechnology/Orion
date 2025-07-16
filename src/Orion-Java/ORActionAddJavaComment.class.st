"
I add a FamixJavaComment in a MooseModel
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
	#name : 'ORActionAddJavaComment',
	#superclass : 'ORActionAddJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourceAnchor',
		'commentedEntity'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionAddJavaComment >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaComment >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaComment >> commentedEntity [ ^commentedEntity
]

{ #category : 'accessing' }
ORActionAddJavaComment >> commentedEntity: aValue [ commentedEntity := aValue
]

{ #category : 'accessing' }
ORActionAddJavaComment >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaComment >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaComment >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaComment >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaComment >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaComment >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaComment >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaComment >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaComment >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourceAnchor: self sourceAnchor.
	entity commentedEntity: self commentedEntity.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaComment >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaComment >> sourceAnchor: aValue [ sourceAnchor := aValue
]
