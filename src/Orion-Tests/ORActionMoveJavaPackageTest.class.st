Class {
	#name : 'ORActionMoveJavaPackageTest',
	#superclass : 'ORActionMoveJavaTest',
	#category : 'Orion-Tests-Java',
	#package : 'Orion-Tests',
	#tag : 'Java'
}

{ #category : 'running' }
ORActionMoveJavaPackageTest >> setUpAction [ action := ORActionMoveJavaPackage new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; incomingImports: nil; parentPackage: nil; comments: nil; yourself.
]
