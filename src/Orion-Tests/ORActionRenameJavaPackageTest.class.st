Class {
	#name : 'ORActionRenameJavaPackageTest',
	#superclass : 'ORActionRenameJavaTest',
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'entity creation' }
ORActionRenameJavaPackageTest >> createEntities [

	modelV1 newPackageNamed: 'oldPackage'
]

{ #category : 'running' }
ORActionRenameJavaPackageTest >> setUpAction [ action := ORActionRenameJavaPackage new orionModel: modelV2; annotationInstances: nil; types: nil; definedAnnotationTypes: nil; incomingImports: nil; parentPackage: nil; comments: nil; yourself.
]
