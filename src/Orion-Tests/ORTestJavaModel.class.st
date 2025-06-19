Class {
	#name : 'ORTestJavaModel',
	#superclass : 'TestCase',
	#instVars : [
		'modelV1',
		'modelV2'
	],
	#category : 'Orion-Tests-Java-Model',
	#package : 'Orion-Tests',
	#tag : 'Java-Model'
}

{ #category : 'model building' }
ORTestJavaModel >> buildFullTestModel [
	"Creates and returns a FamixJavaModel containing instances of all the entities required for tests."

	modelV1 := FamixJavaModel new.
	self createBasicEntities.
	self linkBasicEntities.
	self createComplexEntities.

	^ modelV1
]

{ #category : 'entity creation' }
ORTestJavaModel >> createBasicEntities [
	"PHASE 1 : On ne fait que créer et ajouter chaque entité au modèle."

	| pkg testClass testMethod otherClass stringType attr param localVar implicitVar unknownVar |
	
	"Package"
	pkg := FamixJavaPackage named: 'testPackage'.
	modelV1 add: pkg.

	"Types"
	"stringType := FamixJavaPrimitiveType named: 'String'.
	modelV1 add: stringType."

	"Classes"
	testClass := FamixJavaClass named: 'TestClass'.
	modelV1 add: testClass.

	otherClass := FamixJavaClass named: 'OtherClass'.
	modelV1 add: otherClass.

	"Method"
	testMethod := FamixJavaMethod named: 'testMethod'.
	modelV1 add: testMethod.

	"Attribute"
	attr := FamixJavaAttribute named: 'testAttribute'.
	modelV1 add: attr.

	"Parameter"
	param := FamixJavaParameter named: 'testParam'.
	modelV1 add: param.

	"Local variable"
	localVar := FamixJavaLocalVariable named: 'testLocalVar'.
	modelV1 add: localVar.

	"Implicit Variable (this)"
	implicitVar := FamixJavaImplicitVariable named: 'this'.
	modelV1 add: implicitVar.

	"Unknown Variable"
	unknownVar := FamixJavaUnknownVariable named: 'someUnknownVar'.
	modelV1 add: unknownVar.
]

{ #category : 'entity creation' }
ORTestJavaModel >> createComplexEntities [
	"Creates more complex entities such as Enums, Annotations, Exceptions..."

	| pkg testClass testMethod comment myEnum myEnumValue annType annAttr annInstance annInstanceAttr genericClass concreteClass concretization paramConcretization genericMethod genericParam param exception |
	pkg := modelV1 entityNamed: 'testPackage'.
	testClass := modelV1 entityNamed: 'TestClass'.
	testMethod := modelV1 entityNamed: 'testMethod'.

	"Source Language"
	modelV1 sourceLanguage: FamixJavaSourceLanguage new.

	"Comment"
	comment := FamixJavaComment new.
	"comment commentedEntity: testMethod."
	modelV1 add: comment.

	"Enum and EnumValue"
	myEnum := FamixJavaEnum named: 'TestEnum'.
	pkg addType: myEnum.
	modelV1 add: myEnum.
	myEnumValue := FamixJavaEnumValue named: 'VALUE_A'.
	myEnum addEnumValue: myEnumValue.
	modelV1 add: myEnumValue.

	"Annotation and its attributes"
	annType := FamixJavaAnnotationType named: 'TestAnnotation'.
	pkg addType: annType.
	modelV1 add: annType.
	annAttr := FamixJavaAnnotationTypeAttribute named: 'value'.
	annType addType: annAttr.
	modelV1 add: annAttr.
	annInstance := FamixJavaAnnotationInstance new.
	testMethod addAnnotationInstance: annInstance.
	annType addAnnotationInstance: annInstance.
	modelV1 add: annInstance.
	annInstanceAttr := FamixJavaAnnotationInstanceAttribute new.
	annAttr addAnnotationAttributeInstance: annInstanceAttr.
	annInstance addAttribute: annInstanceAttr.
	modelV1 add: annInstanceAttr.

	"Exception"
	exception := FamixJavaException named: 'TestException'.
	modelV1 add: exception.
	testMethod addThrownException: exception.

	"Genericity and Concretization"
	genericClass := FamixJavaClass named: 'GenericClass'.
	modelV1 add: genericClass.
	concreteClass := FamixJavaClass named: 'ConcreteClass'.
	modelV1 add: concreteClass.
	concretization := FamixJavaConcretization new.
	modelV1 add: concretization.

	genericMethod := FamixJavaMethod named: 'genericMethod'.
	genericClass addType: genericMethod.
	modelV1 add: genericMethod.
	genericParam := FamixJavaParameter named: 'genericParam'.
	genericMethod addType: genericParam.
	modelV1 add: genericParam.
	param := modelV1 entityNamed: 'testParam'.
	paramConcretization := FamixJavaParameterConcretization new.
	modelV1 add: paramConcretization
]

{ #category : 'entity creation' }
ORTestJavaModel >> linkBasicEntities [

	| pkg testClass testMethod otherClass attr param localVar implicitVar |
	pkg := modelV1 entityNamed: 'testPackage'.
	testClass := modelV1 entityNamed: 'TestClass'.
	otherClass := modelV1 entityNamed: 'OtherClass'.
	testMethod := modelV1 entityNamed: 'testMethod'.
	attr := modelV1 entityNamed: 'testAttribute'.
	param := modelV1 entityNamed: 'testParam'.
	localVar := modelV1 entityNamed: 'testLocalVar'.
	implicitVar := modelV1 entityNamed: 'this'.

	"Composition"
	pkg addType: testClass.
	pkg addType: otherClass.
	testClass addMethod: testMethod.
	testClass addAttribute: attr.
	testMethod addParameter: param.
	testMethod addLocalVariable: localVar.
	testMethod addImplicitVariable: implicitVar
]

{ #category : 'running' }
ORTestJavaModel >> setUp [
	super setUp.

	modelV1 := (ORTestJavaModel new) buildFullTestModel.
	modelV1 name: 'theModel'.
	
	modelV1 beForOrion.
	modelV2 := modelV1 makeNewVersion name: #orionModel.

	self setUpAction
]

{ #category : 'initialization' }
ORTestJavaModel >> setUpAction [

	self subclassResponsibility 
]
