.class public final Llibcore/reflect/WildcardTypeImpl;
.super Ljava/lang/Object;
.source "WildcardTypeImpl.java"

# interfaces
.implements Ljava/lang/reflect/WildcardType;


# instance fields
.field private final extendsBound:Llibcore/reflect/ListOfTypes;

.field private final superBound:Llibcore/reflect/ListOfTypes;


# direct methods
.method public constructor <init>(Llibcore/reflect/ListOfTypes;Llibcore/reflect/ListOfTypes;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    iput-object p2, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    instance-of v2, p1, Ljava/lang/reflect/WildcardType;

    if-nez v2, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WildcardType;

    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public getLowerBounds()[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public getUpperBounds()[Ljava/lang/reflect/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/TypeNotPresentException;,
            Ljava/lang/reflect/MalformedParameterizedTypeException;
        }
    .end annotation

    iget-object v0, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v0}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Llibcore/reflect/WildcardTypeImpl;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->getResolvedTypes()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    :cond_0
    const-string/jumbo v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->extendsBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-gt v1, v3, :cond_0

    iget-object v1, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1}, Llibcore/reflect/ListOfTypes;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string/jumbo v1, " super "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llibcore/reflect/WildcardTypeImpl;->superBound:Llibcore/reflect/ListOfTypes;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
