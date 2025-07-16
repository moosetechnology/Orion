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
	#superclass : 'ORActionAddJava',
	#instVars : [
		'importedEntity',
		'importingEntity',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaImport >> createVersionnedEntitySelector [

	^#newImport 
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
