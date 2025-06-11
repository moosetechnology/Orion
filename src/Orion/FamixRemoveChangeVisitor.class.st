Class {
	#name : 'FamixRemoveChangeVisitor',
	#superclass : 'Object',
	#traits : 'FamixTVisitor + FamixJavaTVisitor',
	#classTraits : 'FamixTVisitor classTrait + FamixJavaTVisitor classTrait',
	#category : 'Orion-Visitors',
	#package : 'Orion',
	#tag : 'Visitors'
}

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaAccess: aAccess [ ^ORActionRemoveTAccess new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaAnnotationInstance: aAnnotationInstance [  ^ORActionRemoveJavaAnnotationInstance new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaAnnotationInstanceAttribute: aAnnotationInstanceAttribute [  ^ORActionRemoveJavaAnnotationInstanceAttribute new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaAnnotationType: aAnnotationType [  ^ORActionRemoveJavaAnnotationType new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaAnnotationTypeAttribute: aAnnotationTypeAttribute [  ^ORActionRemoveJavaAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaAttribute: aAttribute [  ^ORActionRemoveJavaAttribute new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaClass: aClass [  ^ORActionRemoveJavaClass new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaComment: aComment [ ^ORActionRemoveTComment new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaConcretization: aConcretization [ ^ORActionRemoveTConcretization new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaEnum: aEnum [  ^ORActionRemoveJavaEnum new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaEnumValue: aEnumValue [  ^ORActionRemoveJavaEnumValue new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaException: aException [  ^ORActionRemoveJavaException new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaImplicitVariable: aImplicitVariable [  ^ORActionRemoveJavaImplicitVariable new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaImport: aImport [ ^ORActionRemoveTImport new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaInheritance: aInheritance [ ^ORActionRemoveTInheritance new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaInvocation: aInvocation [ ^ORActionRemoveTInvocation new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaLocalVariable: aLocalVariable [  ^ORActionRemoveJavaLocalVariable new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaMethod: aMethod [  ^ORActionRemoveJavaMethod new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaPackage: aPackage [  ^ORActionRemoveJavaPackage new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaParameter: aParameter [  ^ORActionRemoveJavaParameter new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaParameterConcretization: aParameterConcretization [ ^ORActionRemoveTParameterConcretization new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaPrimitiveType: aPrimitiveType [  ^ORActionRemoveJavaPrimitiveType new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaReference: aReference [ ^ORActionRemoveTReference new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaSourceLanguage: aSourceLanguage [ ^ORActionRemoveTSourceLanguage new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaType: aType [  ^ORActionRemoveJavaType new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixJavaUnknownVariable: aUnknownVariable [  ^ORActionRemoveJavaUnknownVariable new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTAccess: anAccess [  ^ORActionRemoveTAccess new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTAnnotationInstance: anAnnotationInstance [  ^ORActionRemoveTAnnotationInstance new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTAnnotationInstanceAttribute: anAnnotationInstanceAttribute [  ^ORActionRemoveTAnnotationInstanceAttribute new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTAnnotationType: anAnnotationType [  ^ORActionRemoveTAnnotationType new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTAnnotationTypeAttribute: anAnnotationTypeAttribute [  ^ORActionRemoveTAnnotationTypeAttribute new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTAttribute: anAttribute [  ^ORActionRemoveTAttribute new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTClass: anClass [  ^ORActionRemoveTClass new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTComment: anComment [  ^ORActionRemoveTComment new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTConcretization: anConcretization [  ^ORActionRemoveTConcretization new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTEnum: anEnum [  ^ORActionRemoveTEnum new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTEnumValue: anEnumValue [  ^ORActionRemoveTEnumValue new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTException: anException [  ^ORActionRemoveTException new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTImplementation: anImplementation [  ^ORActionRemoveTImplementation new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTImplicitVariable: anImplicitVariable [  ^ORActionRemoveTImplicitVariable new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTImport: anImport [  ^ORActionRemoveTImport new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTInheritance: anInheritance [  ^ORActionRemoveTInheritance new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTInvocation: anInvocation [  ^ORActionRemoveTInvocation new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTLocalVariable: anLocalVariable [  ^ORActionRemoveTLocalVariable new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTMethod: anMethod [  ^ORActionRemoveTMethod new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTPackage: anPackage [  ^ORActionRemoveTPackage new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTParameter: anParameter [  ^ORActionRemoveTParameter new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTParameterConcretization: anParameterConcretization [  ^ORActionRemoveTParameterConcretization new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTPrimitiveType: anPrimitiveType [  ^ORActionRemoveTPrimitiveType new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTReference: anReference [  ^ORActionRemoveTReference new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTSourceLanguage: anSourceLanguage [  ^ORActionRemoveTSourceLanguage new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTType: anType [  ^ORActionRemoveTType new.
]

{ #category : 'visiting' }
FamixRemoveChangeVisitor >> visitFamixTUnknownVariable: anUnknownVariable [  ^ORActionRemoveTUnknownVariable new.
]
