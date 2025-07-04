"
I add a FamixJavaInheritance in a MooseModel
I need the following properties of the  inheritance

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`subclass`
-`superclass`
-`next`
-`previous`
-`sourceAnchor`
"
Class {
	#name : 'ORActionAddJavaInheritance',
	#superclass : 'ORActionAdd',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'subclass',
		'superclass',
		'next',
		'previous',
		'sourceAnchor'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaInheritance >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> next [ ^next
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> next: aValue [ next := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> previous [ ^previous
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> previous: aValue [ previous := aValue
]

{ #category : 'method execution' }
ORActionAddJavaInheritance >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity subclass: self subclass.
	entity superclass: self superclass.
	entity next: self next.
	entity previous: self previous.
	entity sourceAnchor: self sourceAnchor.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> sourceAnchor [ ^sourceAnchor
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> sourceAnchor: aValue [ sourceAnchor := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> subclass [ ^subclass
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> subclass: aValue [ subclass := aValue
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> superclass [ ^superclass
]

{ #category : 'accessing' }
ORActionAddJavaInheritance >> superclass: aValue [ superclass := aValue
]
