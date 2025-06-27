Class {
	#name : 'ORActionAddJavaParameterTest',
	#superclass : 'ORActionAddJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'running' }
ORActionAddJavaParameterTest >> setUpAction [ action := ORActionAddJavaParameter new orionModel: modelV2; annotationInstances: nil; receivingInvocations: nil; isFinal: nil; comments: nil; yourself.
]

{ #category : 'tests' }
ORActionAddJavaParameterTest >> testAddsCorrectEntity [ | initialCount | initialCount := modelV1 allavaParameters size. action run. self assert: (modelV2 allavaParameters size) equals: (initialCount + 1).
]

{ #category : 'tests' }
ORActionAddJavaParameterTest >> testEntityIsVersioned [ | entity | action run. entity := modelV2 entityNamed: 'A_Test_Name'. self assert: entity notNil. self assert: (modelV2 includes: entity). self deny: (modelV1 includes: entity).
]
