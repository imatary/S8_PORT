.class public Lcom/adobe/internal/xmp/impl/Latin1Converter;
.super Ljava/lang/Object;
.source "Latin1Converter.java"


# direct methods
.method public static convert(Lcom/adobe/internal/xmp/impl/ByteBuffer;)Lcom/adobe/internal/xmp/impl/ByteBuffer;
    .locals 13

    const-string/jumbo v11, "UTF-8"

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x8

    new-array v7, v11, [B

    const/4 v5, 0x0

    const/4 v1, 0x0

    new-instance v4, Lcom/adobe/internal/xmp/impl/ByteBuffer;

    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->length()I

    move-result v11

    mul-int/lit8 v11, v11, 0x4

    div-int/lit8 v11, v11, 0x3

    invoke-direct {v4, v11}, Lcom/adobe/internal/xmp/impl/ByteBuffer;-><init>(I)V

    const/4 v8, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->length()I

    move-result v11

    if-ge v2, v11, :cond_4

    invoke-virtual {p0, v2}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->charAt(I)I

    move-result v0

    packed-switch v8, :pswitch_data_0

    const/16 v11, 0x7f

    if-ge v0, v11, :cond_0

    int-to-byte v11, v0

    invoke-virtual {v4, v11}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->append(B)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v11, 0xc0

    if-lt v0, v11, :cond_2

    const/4 v1, -0x1

    move v9, v0

    :goto_2
    const/16 v11, 0x8

    if-ge v1, v11, :cond_1

    and-int/lit16 v11, v9, 0x80

    const/16 v12, 0x80

    if-ne v11, v12, :cond_1

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v5, 0x1

    int-to-byte v11, v0

    aput-byte v11, v7, v5

    const/16 v8, 0xb

    move v5, v6

    goto :goto_1

    :cond_2
    int-to-byte v11, v0

    invoke-static {v11}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->append([B)V

    goto :goto_1

    :pswitch_0
    if-lez v1, :cond_3

    and-int/lit16 v11, v0, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_3

    add-int/lit8 v6, v5, 0x1

    int-to-byte v11, v0

    aput-byte v11, v7, v5

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_7

    const/4 v11, 0x0

    invoke-virtual {v4, v7, v11, v6}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->append([BII)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    aget-byte v11, v7, v11

    invoke-static {v11}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->append([B)V

    sub-int/2addr v2, v5

    const/4 v5, 0x0

    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    const/16 v11, 0xb

    if-ne v8, v11, :cond_6

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v5, :cond_6

    aget-byte v0, v7, v3

    invoke-static {v0}, Lcom/adobe/internal/xmp/impl/Latin1Converter;->convertToUTF8(B)[B

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/adobe/internal/xmp/impl/ByteBuffer;->append([B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    move-object v4, p0

    :cond_6
    return-object v4

    :cond_7
    move v5, v6

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToUTF8(B)[B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    and-int/lit16 v0, p0, 0xff

    const/16 v1, 0x80

    if-lt v0, v1, :cond_2

    const/16 v1, 0x81

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_0

    const/16 v1, 0x90

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9d

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    new-array v1, v1, [B

    const/4 v2, 0x0

    const/16 v3, 0x20

    aput-byte v3, v1, v2

    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte p0, v2, v3

    const-string/jumbo v3, "cp1252"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_2
    new-array v1, v5, [B

    aput-byte p0, v1, v4

    goto :goto_0
.end method
