Class {
	#name : 'ORAddTestSourceGenerator',
	#superclass : 'ORTestSourceGenerator',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'as yet unclassified' }
ORAddTestSourceGenerator >> generateTestMethodsFor: anActionClass [
	| entityName |
	entityName := anActionClass name copyFrom: 'ORActionAddT' size + 1.

	^ {
		'testAddsCorrectEntity
			| initialCount |
			initialCount := modelV1 all' , entityName , 's size.
			action run.
			self assert: (modelV2 all' , entityName , 's size) equals: (initialCount + 1).'.

		'testEntityIsVersioned
			| entity |
			action run.
			entity := modelV2 entityNamed: ''A_Test_Name''.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).'
	}
]
