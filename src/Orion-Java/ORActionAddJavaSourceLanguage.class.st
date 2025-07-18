"
I add a FamixJavaSourceLanguage in a MooseModel
I need the following properties of the  sourcelanguage

-`sourcedEntities`
"
Class {
	#name : 'ORActionAddJavaSourceLanguage',
	#superclass : 'ORActionAddJava',
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
	self sourcedEntities 
		ifNotNil: [entity sourcedEntities: self sourcedEntities].

	^entity.
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> sourcedEntities [ ^sourcedEntities
]

{ #category : 'accessing' }
ORActionAddJavaSourceLanguage >> sourcedEntities: aValue [ sourcedEntities := aValue
]
