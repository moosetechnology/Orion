Class {
	#name : 'ORActionRenameJavaClassTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaClassTest >> createEntities [

	modelV1 newClassNamed: 'oldClass'.
]

{ #category : 'running' }
ORActionRenameJavaClassTest >> setUpAction [ 

	action := ORActionRenameJavaClass new 
		orionModel: modelV2;
		name: 'newClass'.
	action entity: (modelV1 entityNamed: 'oldClass').
]
