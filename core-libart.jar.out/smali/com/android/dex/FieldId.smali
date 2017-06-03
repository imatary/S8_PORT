.class public final Lcom/android/dex/FieldId;
.super Ljava/lang/Object;
.source "FieldId.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/dex/FieldId;",
        ">;"
    }
.end annotation


# instance fields
.field private final declaringClassIndex:I

.field private final dex:Lcom/android/dex/Dex;

.field private final nameIndex:I

.field private final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dex/FieldId;->dex:Lcom/android/dex/Dex;

    iput p2, p0, Lcom/android/dex/FieldId;->declaringClassIndex:I

    iput p3, p0, Lcom/android/dex/FieldId;->typeIndex:I

    iput p4, p0, Lcom/android/dex/FieldId;->nameIndex:I

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/FieldId;)I
    .locals 2

    iget v0, p0, Lcom/android/dex/FieldId;->declaringClassIndex:I

    iget v1, p1, Lcom/android/dex/FieldId;->declaringClassIndex:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/dex/FieldId;->declaringClassIndex:I

    iget v1, p1, Lcom/android/dex/FieldId;->declaringClassIndex:I

    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/dex/FieldId;->nameIndex:I

    iget v1, p1, Lcom/android/dex/FieldId;->nameIndex:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/dex/FieldId;->nameIndex:I

    iget v1, p1, Lcom/android/dex/FieldId;->nameIndex:I

    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    return v0

    :cond_1
    iget v0, p0, Lcom/android/dex/FieldId;->typeIndex:I

    iget v1, p1, Lcom/android/dex/FieldId;->typeIndex:I

    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/dex/FieldId;

    invoke-virtual {p0, p1}, Lcom/android/dex/FieldId;->compareTo(Lcom/android/dex/FieldId;)I

    move-result v0

    return v0
.end method

.method public getDeclaringClassIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/FieldId;->declaringClassIndex:I

    return v0
.end method

.method public getNameIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/FieldId;->nameIndex:I

    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    iget v0, p0, Lcom/android/dex/FieldId;->typeIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/dex/FieldId;->dex:Lcom/android/dex/Dex;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/android/dex/FieldId;->declaringClassIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dex/FieldId;->typeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dex/FieldId;->nameIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/dex/FieldId;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/dex/FieldId;->typeIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/dex/FieldId;->dex:Lcom/android/dex/Dex;

    invoke-virtual {v0}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lcom/android/dex/FieldId;->nameIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1

    iget v0, p0, Lcom/android/dex/FieldId;->declaringClassIndex:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    iget v0, p0, Lcom/android/dex/FieldId;->typeIndex:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    iget v0, p0, Lcom/android/dex/FieldId;->nameIndex:I

    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    return-void
.end method
