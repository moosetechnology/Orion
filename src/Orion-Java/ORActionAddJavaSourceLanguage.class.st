"
I add a FamixJavaSourceLanguage in a MooseModel
I need the following properties of the  sourcelanguage

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourcedEntities`
"
Class {
	#name : 'ORActionAddJavaSourceLanguage',
	#superclass : 'ORActionAdd',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourcedEntities'
	],
	#category : 'Orion-Java-Add',
	#package : 'Orion-Java',
	#tag : 'Add'
}

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> cache: aValue [ cache := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionAddJavaSourceLanguage >> run [

	super run.
	entity mooseID: self mooseID.
	entity mooseName: self mooseName.
	entity cache: self cache.
	entity entityAttributes: self entityAttributes.
	entity mooseModel: self mooseModel.
	entity sourcedEntities: self sourcedEntities.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
