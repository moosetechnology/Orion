Class {
	#name : 'ORActionAddJavaEnumValueTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaEnumValueTest >> setUpAction [ action := ORActionAddJavaEnumValue new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaEnumValueTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaEnumValues size. action run. self assert: (modelV2 allavaEnumValues size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaEnumValueTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
