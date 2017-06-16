.class public Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;
.super Ljava/lang/Object;
.source "DhtSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HuffmanTable"
.end annotation


# instance fields
.field private final bits:[I

.field public final destinationIdentifier:I

.field private final huffCode:[I

.field private final huffSize:[I

.field private final huffVal:[I

.field private final maxCode:[I

.field private final minCode:[I

.field public final tableClass:I

.field private final valPtr:[I


# direct methods
.method public constructor <init>(II[I[I)V
    .locals 10

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/16 v7, 0x11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v6, 0x1000

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    new-array v6, v7, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->minCode:[I

    new-array v6, v7, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    new-array v6, v7, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->valPtr:[I

    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->tableClass:I

    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->destinationIdentifier:I

    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->bits:[I

    iput-object p4, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffVal:[I

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v4, -0x1

    :cond_0
    :goto_0
    aget v6, p3, v1

    if-le v2, v6, :cond_2

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-le v1, v9, :cond_0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aput v8, v6, v3

    move v4, v3

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v5, v6, v8

    new-array v6, v4, [I

    iput-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    :cond_1
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    aput v0, v6, v3

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, 0x1

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v6, v6, v3

    if-eq v6, v5, :cond_1

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v6, v6, v3

    if-nez v6, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    if-le v1, v9, :cond_4

    return-void

    :cond_2
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aput v1, v6, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    aget v6, v6, v3

    if-ne v6, v5, :cond_3

    goto :goto_1

    :cond_4
    aget v6, p3, v1

    if-nez v6, :cond_5

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    const/4 v7, -0x1

    aput v7, v6, v1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->valPtr:[I

    aput v2, v6, v1

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->minCode:[I

    iget-object v7, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    aget v7, v7, v2

    aput v7, v6, v1

    aget v6, p3, v1

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v6

    iget-object v6, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    iget-object v7, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    aget v7, v7, v2

    aput v7, v6, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getBits()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->bits:[I

    return-object v0
.end method

.method public getHuffCode()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffCode:[I

    return-object v0
.end method

.method public getHuffSize()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffSize:[I

    return-object v0
.end method

.method public getHuffVal()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->huffVal:[I

    return-object v0
.end method

.method public getMaxCode()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->maxCode:[I

    return-object v0
.end method

.method public getMinCode()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->minCode:[I

    return-object v0
.end method

.method public getValPtr()[I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/DhtSegment$HuffmanTable;->valPtr:[I

    return-object v0
.end method
