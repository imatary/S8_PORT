.class public final Llibcore/reflect/AnnotationFactory;
.super Ljava/lang/Object;
.source "AnnotationFactory.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;
.implements Ljava/io/Serializable;


# static fields
.field private static final transient cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private elements:[Llibcore/reflect/AnnotationMember;

.field private final klazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v3}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    move-result-object v0

    if-nez p2, :cond_1

    iput-object v0, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    :cond_0
    return-void

    :cond_1
    array-length v3, v0

    new-array v3, v3, [Llibcore/reflect/AnnotationMember;

    iput-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    :goto_0
    if-ltz v1, :cond_0

    array-length v5, p2

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v2, p2, v3

    iget-object v6, v2, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    aget-object v7, v0, v1

    iget-object v7, v7, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v5, v0, v1

    invoke-virtual {v2, v5}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    move-result-object v5

    aput-object v5, v3, v1

    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v5, v0, v1

    aput-object v5, v3, v1

    goto :goto_2
.end method

.method public static createAnnotation(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;[",
            "Llibcore/reflect/AnnotationMember;",
            ")TA;"
        }
    .end annotation

    new-instance v0, Llibcore/reflect/AnnotationFactory;

    invoke-direct {v0, p0, p1}, Llibcore/reflect/AnnotationFactory;-><init>(Ljava/lang/Class;[Llibcore/reflect/AnnotationMember;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2, v0}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/annotation/Annotation;

    return-object v1
.end method

.method public static getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)[",
            "Llibcore/reflect/AnnotationMember;"
        }
    .end annotation

    sget-object v8, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    monitor-enter v8

    :try_start_0
    sget-object v7, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v7, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Llibcore/reflect/AnnotationMember;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit v8

    return-object v1

    :cond_0
    monitor-exit v8

    invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Type is not annotation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v7, v0

    new-array v1, v7, [Llibcore/reflect/AnnotationMember;

    const/4 v3, 0x0

    :goto_0
    array-length v7, v0

    if-ge v3, v7, :cond_2

    aget-object v2, v0, v3

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v6

    :try_start_1
    new-instance v7, Llibcore/reflect/AnnotationMember;

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getDefaultValue()Ljava/lang/Object;

    move-result-object v8

    invoke-direct {v7, v4, v8, v6, v2}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v7, v1, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v7, Llibcore/reflect/AnnotationMember;

    invoke-direct {v7, v4, v5, v6, v2}, Llibcore/reflect/AnnotationMember;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    aput-object v7, v1, v3

    goto :goto_1

    :cond_2
    sget-object v8, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    monitor-enter v8

    :try_start_2
    sget-object v7, Llibcore/reflect/AnnotationFactory;->cache:Ljava/util/Map;

    invoke-interface {v7, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v8

    return-object v1

    :catchall_1
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/4 v8, 0x0

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-static {v7}, Llibcore/reflect/AnnotationFactory;->getElementsDescription(Ljava/lang/Class;)[Llibcore/reflect/AnnotationMember;

    move-result-object v1

    iget-object v5, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    new-instance v4, Ljava/util/ArrayList;

    array-length v7, v1

    array-length v9, v5

    add-int/2addr v7, v9

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    array-length v10, v5

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_2

    aget-object v2, v5, v9

    array-length v11, v1

    move v7, v8

    :goto_1
    if-ge v7, v11, :cond_1

    aget-object v3, v1, v7

    iget-object v12, v3, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v13, v2, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    :goto_2
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_0

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    array-length v10, v1

    move v9, v8

    :goto_3
    if-ge v9, v10, :cond_5

    aget-object v0, v1, v9

    array-length v11, v5

    move v7, v8

    :goto_4
    if-ge v7, v11, :cond_4

    aget-object v6, v5, v7

    iget-object v12, v6, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    iget-object v13, v0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-virtual {v6, v0}, Llibcore/reflect/AnnotationMember;->setDefinition(Llibcore/reflect/AnnotationMember;)Llibcore/reflect/AnnotationMember;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v7, v9, 0x1

    move v9, v7

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Llibcore/reflect/AnnotationMember;

    invoke-interface {v4, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Llibcore/reflect/AnnotationMember;

    iput-object v7, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 14

    if-ne p1, p0, :cond_0

    const/4 v7, 0x1

    return v7

    :cond_0
    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v7, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    const/4 v7, 0x0

    return v7

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v4

    instance-of v7, v4, Llibcore/reflect/AnnotationFactory;

    if-eqz v7, :cond_6

    move-object v5, v4

    check-cast v5, Llibcore/reflect/AnnotationFactory;

    iget-object v7, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v7, v7

    iget-object v8, v5, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v8, v8

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    return v7

    :cond_2
    iget-object v9, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    const/4 v7, 0x0

    array-length v10, v9

    move v8, v7

    :goto_0
    if-ge v8, v10, :cond_5

    aget-object v2, v9, v8

    iget-object v11, v5, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    const/4 v7, 0x0

    array-length v12, v11

    :goto_1
    if-ge v7, v12, :cond_4

    aget-object v3, v11, v7

    invoke-virtual {v2, v3}, Llibcore/reflect/AnnotationMember;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v7, v8, 0x1

    move v8, v7

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    return v7

    :cond_5
    const/4 v7, 0x1

    return v7

    :cond_6
    iget-object v8, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_2
    if-ge v7, v9, :cond_c

    aget-object v1, v8, v7

    iget-char v10, v1, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v11, 0x21

    if-ne v10, v11, :cond_7

    const/4 v7, 0x0

    return v7

    :cond_7
    :try_start_0
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v10}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v10

    if-nez v10, :cond_8

    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_8
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-virtual {v10, p1, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_a

    iget-char v10, v1, Llibcore/reflect/AnnotationMember;->tag:C

    const/16 v11, 0x5b

    if-ne v10, v11, :cond_9

    invoke-virtual {v1, v6}, Llibcore/reflect/AnnotationMember;->equalArrayValue(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v7, 0x0

    return v7

    :cond_9
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    invoke-virtual {v10, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    const/4 v7, 0x0

    return v7

    :cond_a
    iget-object v10, v1, Llibcore/reflect/AnnotationMember;->value:Ljava/lang/Object;

    sget-object v11, Llibcore/reflect/AnnotationMember;->NO_VALUE:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v10, v11, :cond_b

    const/4 v7, 0x0

    return v7

    :catch_0
    move-exception v0

    const/4 v7, 0x0

    return v7

    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_c
    const/4 v7, 0x1

    return v7
.end method

.method public hashCode()I
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    invoke-virtual {v0}, Llibcore/reflect/AnnotationMember;->hashCode()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v6, v3

    if-nez v6, :cond_7

    const-string/jumbo v6, "annotationType"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v5, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    return-object v5

    :cond_0
    const-string/jumbo v6, "toString"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_1
    const-string/jumbo v6, "hashCode"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Llibcore/reflect/AnnotationFactory;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    return-object v5

    :cond_2
    const/4 v1, 0x0

    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_3

    aget-object v0, v6, v5

    iget-object v8, v0, Llibcore/reflect/AnnotationMember;->name:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object v1, v0

    :cond_3
    if-eqz v1, :cond_5

    iget-object v5, v1, Llibcore/reflect/AnnotationMember;->definingMethod:Ljava/lang/reflect/Method;

    invoke-virtual {p2, v5}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v1}, Llibcore/reflect/AnnotationMember;->validateValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    new-instance v5, Ljava/lang/annotation/IncompleteAnnotationException;

    iget-object v6, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-direct {v5, v6, v2}, Ljava/lang/annotation/IncompleteAnnotationException;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    throw v5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    return-object v4

    :cond_7
    array-length v6, v3

    const/4 v7, 0x1

    if-ne v6, v7, :cond_8

    aget-object v6, v3, v5

    const-class v7, Ljava/lang/Object;

    if-ne v6, v7, :cond_8

    const-string/jumbo v6, "equals"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    aget-object v5, p3, v5

    invoke-virtual {p0, v5}, Llibcore/reflect/AnnotationFactory;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    return-object v5

    :cond_8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid method for annotation type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->klazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    if-eqz v0, :cond_0

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, p0, Llibcore/reflect/AnnotationFactory;->elements:[Llibcore/reflect/AnnotationMember;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
