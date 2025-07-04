Class {
	#name : 'ORAddTestSourceGenerator',
	#superclass : 'ORTestSourceGenerator',
	#category : 'Orion-Code-Generation',
	#package : 'Orion',
	#tag : 'Code-Generation'
}

{ #category : 'as yet unclassified' }
ORAddTestSourceGenerator >> generateCreateBasicEntities: anActionClass [

"ORActionRemoveJavaInterfaceTest"
	|entity|
	entity := anActionClass name copyFrom: ('ORActionAddJava' size +1) to: (anActionClass name size)-4.
	^('createBasicEntities',String cr, String tab,'modelV1 new',entity,'Named: ''Test',entity ,'''')
	
]

{ #category : 'as yet unclassified' }
ORAddTestSourceGenerator >> generateTestMethodsFor: anActionClass [
	| entityName |
	entityName := anActionClass name copyFrom: 'ORActionAddJava' size + 1 to: ((anActionClass name size)-5).

	^ {
		'testAddsCorrectEntity
			self assert: modelV2 all' , entityName , 'es size equals: 1.
			action run.
			self assert: modelV2 all' , entityName , 'es size equals: 2.'.

		'testEntityIsVersioned
			| entity |
			action run.
			entity := modelV2 entityNamed: ''involvedEntity''.
			self assert: entity notNil.
			self assert: (modelV2 includes: entity).
			self deny: (modelV1 includes: entity).'.
			
		self generateCreateBasicEntities: anActionClass .
	}
]
