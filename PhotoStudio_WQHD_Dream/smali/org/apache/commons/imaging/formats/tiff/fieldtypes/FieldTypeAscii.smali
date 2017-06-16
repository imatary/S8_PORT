.class public Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;
.super Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.source "FieldTypeAscii.java"


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;-><init>(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getByteArrayValue()[B

    move-result-object v0

    const/4 v3, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    if-ge v1, v8, :cond_1

    aget-byte v8, v0, v1

    if-nez v8, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v5, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, ""

    aput-object v8, v5, v10

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_1
    array-length v8, v0

    if-ge v1, v8, :cond_3

    aget-byte v8, v0, v1

    if-nez v8, :cond_2

    :try_start_0
    new-instance v4, Ljava/lang/String;

    sub-int v8, v1, v2

    const-string v9, "UTF-8"

    invoke-direct {v4, v0, v2, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    add-int/lit8 v7, v6, 0x1

    :try_start_1
    aput-object v4, v5, v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move v6, v7

    :goto_2
    add-int/lit8 v2, v1, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    array-length v8, v0

    if-ge v2, v8, :cond_4

    :try_start_2
    new-instance v4, Ljava/lang/String;

    array-length v8, v0

    sub-int/2addr v8, v2

    const-string v9, "UTF-8"

    invoke-direct {v4, v0, v2, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v7, v6, 0x1

    :try_start_3
    aput-object v4, v5, v6
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move v6, v7

    :cond_4
    :goto_3
    array-length v8, v5

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    aget-object v5, v5, v10

    :cond_5
    return-object v5

    :catch_0
    move-exception v8

    goto :goto_3

    :catch_1
    move-exception v8

    move v6, v7

    goto :goto_3

    :catch_2
    move-exception v8

    goto :goto_2

    :catch_3
    move-exception v8

    move v6, v7

    goto :goto_2
.end method

.method public writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v11, 0x0

    instance-of v10, p1, [B

    if-eqz v10, :cond_1

    check-cast p1, [B

    move-object v1, p1

    check-cast v1, [B

    array-length v10, v1

    add-int/lit8 v10, v10, 0x1

    new-array v6, v10, [B

    array-length v10, v1

    invoke-static {v1, v11, v6, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aput-byte v11, v6, v10

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    instance-of v10, p1, Ljava/lang/String;

    if-eqz v10, :cond_2

    :try_start_0
    check-cast p1, Ljava/lang/String;

    const-string v10, "UTF-8"

    invoke-virtual {p1, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    array-length v10, v1

    add-int/lit8 v10, v10, 0x1

    new-array v6, v10, [B

    array-length v10, v1

    invoke-static {v1, v11, v6, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v6

    add-int/lit8 v10, v10, -0x1

    aput-byte v11, v6, v10

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Your Java doesn\'t support UTF-8"

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_2
    instance-of v10, p1, [Ljava/lang/String;

    if-eqz v10, :cond_4

    check-cast p1, [Ljava/lang/String;

    move-object v8, p1

    check-cast v8, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    :try_start_1
    const-string v10, "UTF-8"

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    array-length v10, v1

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v9, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Your Java doesn\'t support UTF-8"

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_3
    new-array v6, v9, [B

    const/4 v5, 0x0

    move-object v0, v8

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v7, v0, v3

    :try_start_2
    const-string v10, "UTF-8"

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v1

    array-length v10, v1

    invoke-static {v1, v11, v6, v5, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v10, v1

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v5, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "Your Java doesn\'t support UTF-8"

    invoke-direct {v10, v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    :cond_4
    new-instance v10, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown data type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw v10
.end method
