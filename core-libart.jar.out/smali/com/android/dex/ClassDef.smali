.class public final Lcom/android/dex/ClassDef;
.super Ljava/lang/Object;
.source "ClassDef.java"


# static fields
.field public static final NO_INDEX:I = -0x1


# instance fields
.field private final accessFlags:I

.field private final annotationsOffset:I

.field private final buffer:Lcom/android/dex/Dex;

.field private final classDataOffset:I

.field private final interfacesOffset:I

.field private final offset:I

.field private final sourceFileIndex:I

.field private final staticValuesOffset:I

.field private final supertypeIndex:I

.field private final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;IIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    iput p2, p0, Lcom/android/dex/ClassDef;->offset:I

    iput p3, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    iput p4, p0, Lcom/android/dex/ClassDef;->accessFlags:I

    iput p5, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    iput p6, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    iput p7, p0, Lcom/android/dex/ClassDef;->sourceFileIndex:I

    iput p8, p0, Lcom/android/dex/ClassDef;->annotationsOffset:I

    iput p9, p0, Lcom/android/dex/ClassDef;->classDataOffset:I

    iput p10, p0, Lcom/android/dex/ClassDef;->staticValuesOffset:I

    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->accessFlags:I

    return v0
.end method

.method public getAnnotationsOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->annotationsOffset:I

    return v0
.end method

.method public getClassDataOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->classDataOffset:I

    return v0
.end method

.method public getInterfaces()[S
    .locals 2

    iget-object v0, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    iget v1, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/dex/TypeList;->getTypes()[S

    move-result-object v0

    return-object v0
.end method

.method public getInterfacesOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->offset:I

    return v0
.end method

.method public getSourceFileIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->sourceFileIndex:I

    return v0
.end method

.method public getStaticValuesOffset()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->staticValuesOffset:I

    return v0
.end method

.method public getSupertypeIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, " extends "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
