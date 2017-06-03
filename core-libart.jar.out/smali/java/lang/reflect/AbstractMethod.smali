.class public abstract Ljava/lang/reflect/AbstractMethod;
.super Ljava/lang/reflect/AccessibleObject;
.source "AbstractMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/AbstractMethod$GenericInfo;
    }
.end annotation


# instance fields
.field protected accessFlags:I

.field protected artMethod:J

.field protected declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected declaringClassOfOverriddenMethod:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected dexMethodIndex:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/reflect/AccessibleObject;-><init>()V

    return-void
.end method

.method private static fixMethodFlags(I)I
    .locals 1

    and-int/lit16 v0, p0, 0x400

    if-eqz v0, :cond_0

    and-int/lit16 p0, p0, -0x101

    :cond_0
    and-int/lit8 p0, p0, -0x21

    const/high16 v0, 0x20000

    and-int/2addr v0, p0

    if-eqz v0, :cond_1

    or-int/lit8 p0, p0, 0x20

    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private native getSignatureAnnotation()[Ljava/lang/String;
.end method

.method private getSignatureAttribute()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;->getSignatureAnnotation()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private native isAnnotationPresentNative(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation
.end method


# virtual methods
.method protected compareParameters([Ljava/lang/Class;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    iget-object v7, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v3

    iget v7, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    invoke-virtual {v3, v7}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v6

    array-length v7, v6

    array-length v8, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    iget-object v7, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    aget-short v8, v6, v4

    invoke-virtual {v7, v3, v8}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v0

    aget-object v1, p1, v4

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v7, v6

    array-length v8, p1

    sub-int/2addr v7, v8

    return v7
.end method

.method protected equalMethodParameters([Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v3, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    iget v3, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    invoke-virtual {v0, v3}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v2

    array-length v3, v2

    array-length v4, p1

    if-eq v3, v4, :cond_0

    return v5

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    aget-short v4, v2, v1

    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v3

    aget-object v4, p1, v1

    if-eq v3, v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/lang/reflect/AbstractMethod;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/AbstractMethod;

    iget-object v2, p0, Ljava/lang/reflect/AbstractMethod;->declaringClass:Ljava/lang/Class;

    iget-object v3, v0, Ljava/lang/reflect/AbstractMethod;->declaringClass:Ljava/lang/Class;

    if-ne v2, v3, :cond_1

    iget v2, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    iget v3, v0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final getAccessFlags()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    return v0
.end method

.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-super {p0, p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    invoke-super {p0}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public native getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
.end method

.method getDeclaringClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Ljava/lang/reflect/AbstractMethod;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getDexMethodIndex()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    return v0
.end method

.method getGenericExceptionTypes()[Ljava/lang/reflect/Type;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method getGenericParameterTypes()[Ljava/lang/reflect/Type;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v0

    iget-object v0, v0, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method final getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;
    .locals 12

    invoke-direct {p0}, Ljava/lang/reflect/AbstractMethod;->getSignatureAttribute()Ljava/lang/String;

    move-result-object v6

    instance-of v4, p0, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_0

    move-object v2, p0

    check-cast v2, Ljava/lang/reflect/Method;

    move-object v3, v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    :goto_0
    new-instance v5, Llibcore/reflect/GenericSignatureParser;

    invoke-interface {v3}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-direct {v5, v7}, Llibcore/reflect/GenericSignatureParser;-><init>(Ljava/lang/ClassLoader;)V

    if-eqz v4, :cond_1

    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    invoke-virtual {v5, p0, v6, v1}, Llibcore/reflect/GenericSignatureParser;->parseForMethod(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    :goto_1
    new-instance v7, Ljava/lang/reflect/AbstractMethod$GenericInfo;

    iget-object v8, v5, Llibcore/reflect/GenericSignatureParser;->exceptionTypes:Llibcore/reflect/ListOfTypes;

    iget-object v9, v5, Llibcore/reflect/GenericSignatureParser;->parameterTypes:Llibcore/reflect/ListOfTypes;

    iget-object v10, v5, Llibcore/reflect/GenericSignatureParser;->returnType:Ljava/lang/reflect/Type;

    iget-object v11, v5, Llibcore/reflect/GenericSignatureParser;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/lang/reflect/AbstractMethod$GenericInfo;-><init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;Ljava/lang/reflect/Type;[Ljava/lang/reflect/TypeVariable;)V

    return-object v7

    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v3, v0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getExceptionTypes()[Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_1
    check-cast p0, Ljava/lang/reflect/GenericDeclaration;

    invoke-virtual {v5, p0, v6, v1}, Llibcore/reflect/GenericSignatureParser;->parseForConstructor(Ljava/lang/reflect/GenericDeclaration;Ljava/lang/String;[Ljava/lang/Class;)V

    goto :goto_1
.end method

.method getModifiers()I
    .locals 1

    iget v0, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    invoke-static {v0}, Ljava/lang/reflect/AbstractMethod;->fixMethodFlags(I)I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getParameterAnnotations()[[Ljava/lang/annotation/Annotation;
.end method

.method getParameterTypes()[Ljava/lang/Class;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v4, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->getDex()Lcom/android/dex/Dex;

    move-result-object v0

    iget v4, p0, Ljava/lang/reflect/AbstractMethod;->dexMethodIndex:I

    invoke-virtual {v0, v4}, Lcom/android/dex/Dex;->parameterTypeIndicesFromMethodIndex(I)[S

    move-result-object v3

    array-length v4, v3

    if-nez v4, :cond_0

    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    return-object v4

    :cond_0
    array-length v4, v3

    new-array v2, v4, [Ljava/lang/Class;

    const/4 v1, 0x0

    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Ljava/lang/reflect/AbstractMethod;->declaringClassOfOverriddenMethod:Ljava/lang/Class;

    aget-short v5, v3, v1

    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getDexCacheType(Lcom/android/dex/Dex;I)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method abstract getSignature()Ljava/lang/String;
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "annotationType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Ljava/lang/reflect/AbstractMethod;->isAnnotationPresentNative(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method isBridge()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isDefault()Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSynthetic()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isVarArgs()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Ljava/lang/reflect/AbstractMethod;->accessFlags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method toGenericString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->toGenericStringHelper()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final toGenericStringHelper()Ljava/lang/String;
    .locals 9

    const/16 v7, 0x20

    const/4 v8, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x50

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/reflect/AbstractMethod;->getMethodOrConstructorGenericInfo()Ljava/lang/reflect/AbstractMethod$GenericInfo;

    move-result-object v3

    move-object v6, p0

    check-cast v6, Ljava/lang/reflect/Member;

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v4

    if-eqz v4, :cond_0

    and-int/lit16 v6, v4, -0x81

    invoke-static {v6}, Ljava/lang/reflect/Modifier;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    if-eqz v6, :cond_3

    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v6, v6

    if-lez v6, :cond_3

    const/16 v6, 0x3c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v6, v6

    if-ge v2, v6, :cond_2

    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->formalTypeParameters:[Ljava/lang/reflect/TypeVariable;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v2, v6, :cond_1

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v6, "> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    move-object v6, p0

    check-cast v6, Ljava/lang/reflect/Member;

    invoke-interface {v6}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    instance-of v6, p0, Ljava/lang/reflect/Constructor;

    if-eqz v6, :cond_5

    invoke-static {v5, v0}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    :goto_1
    const/16 v6, 0x28

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericParameterTypes:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v6}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    const/16 v6, 0x29

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericExceptionTypes:Llibcore/reflect/ListOfTypes;

    invoke-static {v6, v8}, Llibcore/reflect/Types;->getTypeArray(Llibcore/reflect/ListOfTypes;Z)[Ljava/lang/reflect/Type;

    move-result-object v1

    array-length v6, v1

    if-lez v6, :cond_4

    const-string/jumbo v6, " throws "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v1}, Llibcore/reflect/Types;->appendArrayGenericType(Ljava/lang/StringBuilder;[Ljava/lang/reflect/Type;)V

    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    :cond_5
    iget-object v6, v3, Ljava/lang/reflect/AbstractMethod$GenericInfo;->genericReturnType:Ljava/lang/reflect/Type;

    invoke-static {v6}, Llibcore/reflect/Types;->getType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v6}, Llibcore/reflect/Types;->appendGenericType(Ljava/lang/StringBuilder;Ljava/lang/reflect/Type;)V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5, v0}, Llibcore/reflect/Types;->appendTypeName(Ljava/lang/StringBuilder;Ljava/lang/Class;)V

    const-string/jumbo v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    check-cast p0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
