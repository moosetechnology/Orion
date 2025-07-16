"
I remove a FamixJavaSourceLanguage in a MooseModel
I need the following properties of the  sourcelanguage

-`mooseID`
-`mooseName`
-`cache`
-`entityAttributes`
-`mooseModel`
-`sourcedEntities`
"
Class {
	#name : 'ORActionRemoveJavaSourceLanguage',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'mooseID',
		'mooseName',
		'cache',
		'entityAttributes',
		'mooseModel',
		'sourcedEntities'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> cache [ ^cache
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> cache: aValue [ cache := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceLanguage >> createVersionnedEntitySelector [ ^ #newSourceLanguage
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> entityAttributes [ ^entityAttributes
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> entityAttributes: aValue [ entityAttributes := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> mooseID [ ^mooseID
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> mooseID: aValue [ mooseID := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> mooseModel [ ^mooseModel
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> mooseModel: aValue [ mooseModel := aValue
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> mooseName [ ^mooseName
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> mooseName: aValue [ mooseName := aValue
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceLanguage >> run [

	super run.
	entity mooseID: nil.
	entity mooseName: nil.
	entity cache: nil.
	entity entityAttributes: nil.
	entity mooseModel: nil.
	entity sourcedEntities: nil.

	self orionModel remove: (self orionModel versionLookup: self entity).

	^entity.
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionRemoveJavaSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
