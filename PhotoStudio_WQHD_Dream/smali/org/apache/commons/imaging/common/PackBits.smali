.class public Lorg/apache/commons/imaging/common/PackBits;
.super Ljava/lang/Object;
.source "PackBits.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private findNextDuplicate([BI)I
    .locals 5

    const/4 v3, -0x1

    array-length v4, p1

    if-lt p2, v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    aget-byte v2, p1, p2

    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_0

    aget-byte v0, p1, v1

    if-ne v0, v2, :cond_2

    add-int/lit8 v3, v1, -0x1

    goto :goto_0

    :cond_2
    move v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private findRunLength([BI)I
    .locals 3

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-byte v2, p1, v1

    if-ne v2, v0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sub-int v2, v1, p2

    return v2
.end method


# virtual methods
.method public compress([B)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v4, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;

    move-object/from16 v0, p1

    array-length v14, v0

    mul-int/lit8 v14, v14, 0x2

    invoke-direct {v4, v14}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p1

    array-length v14, v0

    if-ge v11, v14, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lorg/apache/commons/imaging/common/PackBits;->findNextDuplicate([BI)I

    move-result v6

    if-ne v6, v11, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/common/PackBits;->findRunLength([BI)I

    move-result v8

    const/16 v14, 0x80

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    neg-int v14, v14

    invoke-virtual {v4, v14}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    aget-byte v14, p1, v11

    invoke-virtual {v4, v14}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    add-int/2addr v11, v2

    goto :goto_0

    :cond_1
    sub-int v8, v6, v11

    if-lez v6, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/imaging/common/PackBits;->findRunLength([BI)I

    move-result v13

    const/4 v14, 0x3

    if-ge v13, v14, :cond_2

    add-int v14, v11, v8

    add-int v10, v14, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lorg/apache/commons/imaging/common/PackBits;->findNextDuplicate([BI)I

    move-result v9

    if-eq v9, v10, :cond_2

    move v6, v9

    sub-int v8, v6, v11

    :cond_2
    if-gez v6, :cond_3

    move-object/from16 v0, p1

    array-length v14, v0

    sub-int v8, v14, v11

    :cond_3
    const/16 v14, 0x80

    invoke-static {v8, v14}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v14, v2, -0x1

    invoke-virtual {v4, v14}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_0

    aget-byte v14, p1, v11

    invoke-virtual {v4, v14}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->write(I)V

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lorg/apache/commons/imaging/common/FastByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v12

    const/4 v5, 0x1

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/io/Closeable;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v5, v14}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return-object v12

    :catchall_0
    move-exception v14

    :goto_2
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/io/Closeable;

    const/16 v16, 0x0

    aput-object v3, v15, v16

    invoke-static {v5, v15}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw v14

    :catchall_1
    move-exception v14

    move-object v3, v4

    goto :goto_2
.end method

.method public decompress([BI)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v7, p2, :cond_6

    array-length v8, p1

    if-lt v4, v8, :cond_0

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Tiff: Unpack bits source exhausted: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", done + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", expected + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_0
    add-int/lit8 v3, v4, 0x1

    aget-byte v6, p1, v4

    if-ltz v6, :cond_3

    const/16 v8, 0x7f

    if-gt v6, v8, :cond_3

    add-int/lit8 v2, v6, 0x1

    add-int/2addr v7, v2

    const/4 v5, 0x0

    move v4, v3

    :goto_1
    if-ge v5, v2, :cond_1

    add-int/lit8 v3, v4, 0x1

    aget-byte v8, p1, v4

    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_2
    move v4, v3

    goto :goto_0

    :cond_3
    const/16 v8, -0x7f

    if-lt v6, v8, :cond_5

    const/4 v8, -0x1

    if-gt v6, v8, :cond_5

    add-int/lit8 v4, v3, 0x1

    aget-byte v0, p1, v3

    neg-int v8, v6

    add-int/lit8 v2, v8, 0x1

    add-int/2addr v7, v2

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v2, :cond_4

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v3, v4

    goto :goto_2

    :cond_5
    const/16 v8, -0x80

    if-ne v6, v8, :cond_2

    new-instance v8, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Packbits: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    return-object v8
.end method
