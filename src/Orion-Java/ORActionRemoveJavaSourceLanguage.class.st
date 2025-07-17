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
		'sourcedEntities'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionRemoveJavaSourceLanguage >> createVersionnedEntitySelector [ ^ #newSourceLanguage
]

{ #category : 'method execution' }
ORActionRemoveJavaSourceLanguage >> run [

	super run.
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
