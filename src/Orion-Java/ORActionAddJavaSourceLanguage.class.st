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
	#superclass : 'ORActionAddNamedEntityJava',
	#instVars : [
		'sourcedEntities'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'method execution' }
ORActionAddJavaSourceLanguage >> createVersionnedEntitySelector [

	^#newSourceLanguage 
]

{ #category : 'method execution' }
ORActionAddJavaSourceLanguage >> run [

	super run.
	entity sourcedEntities: self sourcedEntities.

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
