Class {
	#name : 'ORActionRemoveNamedEntityJava',
	#superclass : 'ORActionRemoveJava',
	#instVars : [
		'name'
	],
	#category : 'Orion-Java-Actions',
	#package : 'Orion-Java',
	#tag : 'Actions'
}

{ #category : 'accessing' }
ORActionRemoveNamedEntityJava >> name [

	^name
]

{ #category : 'accessing' }
ORActionRemoveNamedEntityJava >> name: aName [

	name := aName 
]

{ #category : 'method execution' }
ORActionRemoveNamedEntityJava >> run [ 

	super run.

	entity name: nil.
	entity resetMooseName 
]
