Class {
	#name : 'ORActionRenameJavaEnumValueTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaEnumValueTest >> createEntities [

	modelV1 newEnumValueNamed: 'oldEnumValue'. 
]

{ #category : 'running' }
ORActionRenameJavaEnumValueTest >> setUpAction [ 

	action := ORActionRenameJavaEnumValue new 
		orionModel: modelV2;
		name: 'newEnumValue'.
	action entity: (modelV1 entityNamed: 'oldEnumValue')
]
