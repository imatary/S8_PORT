.class public final Ljava/lang/StringFactory;
.super Ljava/lang/Object;
.source "StringFactory.java"


# static fields
.field private static final REPLACEMENT_CHAR:C = '\ufffd'


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newEmptyString()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Llibcore/util/EmptyArray;->CHAR:[C

    invoke-static {v0, v1, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromBytes([B)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromBytes([BI)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromBytes([BII)Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static native newStringFromBytes([BIII)Ljava/lang/String;
.end method

.method public static newStringFromBytes([BIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-static {p3}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 29

    or-int v26, p1, p2

    if-ltz v26, :cond_0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, p1

    move/from16 v0, p2

    move/from16 v1, v26

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v26, Ljava/lang/StringIndexOutOfBoundsException;

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v26

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v26, "UTF-8"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_11

    move-object/from16 v9, p0

    move/from16 v0, p2

    new-array v0, v0, [C

    move-object/from16 v21, v0

    move/from16 v12, p1

    add-int v14, p1, p2

    const/16 v17, 0x0

    move/from16 v18, v17

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_f

    add-int/lit8 v12, v13, 0x1

    aget-byte v6, p0, v13

    and-int/lit16 v0, v6, 0x80

    move/from16 v26, v0

    if-nez v26, :cond_2

    and-int/lit16 v0, v6, 0xff

    move/from16 v22, v0

    add-int/lit8 v17, v18, 0x1

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v26, v0

    aput-char v26, v21, v18

    :goto_1
    move/from16 v18, v17

    move v13, v12

    goto :goto_0

    :cond_2
    and-int/lit16 v0, v6, 0xe0

    move/from16 v26, v0

    const/16 v27, 0xc0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xf0

    move/from16 v26, v0

    const/16 v27, 0xe0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    :cond_3
    const/16 v20, 0x1

    and-int/lit16 v0, v6, 0xf0

    move/from16 v26, v0

    const/16 v27, 0xe0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_6

    const/16 v20, 0x2

    :cond_4
    :goto_2
    add-int v26, v12, v20

    move/from16 v0, v26

    if-le v0, v14, :cond_9

    add-int/lit8 v17, v18, 0x1

    const v26, 0xfffd

    aput-char v26, v21, v18

    move/from16 v18, v17

    move v13, v12

    goto :goto_0

    :cond_5
    and-int/lit16 v0, v6, 0xf8

    move/from16 v26, v0

    const/16 v27, 0xf0

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xfc

    move/from16 v26, v0

    const/16 v27, 0xf8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    and-int/lit16 v0, v6, 0xfe

    move/from16 v26, v0

    const/16 v27, 0xfc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_3

    add-int/lit8 v17, v18, 0x1

    const v26, 0xfffd

    aput-char v26, v21, v18

    goto :goto_1

    :cond_6
    and-int/lit16 v0, v6, 0xf8

    move/from16 v26, v0

    const/16 v27, 0xf0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v20, 0x3

    goto :goto_2

    :cond_7
    and-int/lit16 v0, v6, 0xfc

    move/from16 v26, v0

    const/16 v27, 0xf8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_8

    const/16 v20, 0x4

    goto :goto_2

    :cond_8
    and-int/lit16 v0, v6, 0xfe

    move/from16 v26, v0

    const/16 v27, 0xfc

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4

    const/16 v20, 0x5

    goto :goto_2

    :cond_9
    add-int/lit8 v26, v20, -0x1

    const/16 v27, 0x1f

    shr-int v26, v27, v26

    and-int v22, v6, v26

    const/4 v11, 0x0

    move v13, v12

    :goto_3
    move/from16 v0, v20

    if-ge v11, v0, :cond_b

    add-int/lit8 v12, v13, 0x1

    aget-byte v5, p0, v13

    and-int/lit16 v0, v5, 0xc0

    move/from16 v26, v0

    const/16 v27, 0x80

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    add-int/lit8 v17, v18, 0x1

    const v26, 0xfffd

    aput-char v26, v21, v18

    add-int/lit8 v12, v12, -0x1

    move/from16 v18, v17

    move v13, v12

    goto/16 :goto_0

    :cond_a
    shl-int/lit8 v22, v22, 0x6

    and-int/lit8 v26, v5, 0x3f

    or-int v22, v22, v26

    add-int/lit8 v11, v11, 0x1

    move v13, v12

    goto :goto_3

    :cond_b
    const/16 v26, 0x2

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_c

    const v26, 0xd800

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_c

    const v26, 0xdfff

    move/from16 v0, v22

    move/from16 v1, v26

    if-gt v0, v1, :cond_c

    add-int/lit8 v17, v18, 0x1

    const v26, 0xfffd

    aput-char v26, v21, v18

    move/from16 v18, v17

    goto/16 :goto_0

    :cond_c
    const v26, 0x10ffff

    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_d

    add-int/lit8 v17, v18, 0x1

    const v26, 0xfffd

    aput-char v26, v21, v18

    move/from16 v18, v17

    goto/16 :goto_0

    :cond_d
    const/high16 v26, 0x10000

    move/from16 v0, v22

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    add-int/lit8 v17, v18, 0x1

    move/from16 v0, v22

    int-to-char v0, v0

    move/from16 v26, v0

    aput-char v26, v21, v18

    :goto_4
    move v12, v13

    goto/16 :goto_1

    :cond_e
    const v26, 0xffff

    and-int v25, v22, v26

    shr-int/lit8 v26, v22, 0x10

    and-int/lit8 v19, v26, 0x1f

    add-int/lit8 v26, v19, -0x1

    const v27, 0xffff

    and-int v24, v26, v27

    shl-int/lit8 v26, v24, 0x6

    const v27, 0xd800

    or-int v26, v26, v27

    shr-int/lit8 v27, v25, 0xa

    or-int v10, v26, v27

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0x3ff

    move/from16 v26, v0

    const v27, 0xdc00

    or-int v16, v27, v26

    add-int/lit8 v17, v18, 0x1

    int-to-char v0, v10

    move/from16 v26, v0

    aput-char v26, v21, v18

    add-int/lit8 v18, v17, 0x1

    move/from16 v0, v16

    int-to-char v0, v0

    move/from16 v26, v0

    aput-char v26, v21, v17

    move/from16 v17, v18

    goto :goto_4

    :cond_f
    move/from16 v0, v18

    move/from16 v1, p2

    if-ne v0, v1, :cond_10

    move-object/from16 v23, v21

    move/from16 v15, v18

    :goto_5
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1, v15}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v26

    return-object v26

    :cond_10
    move/from16 v0, v18

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move/from16 v15, v18

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v26

    move-object/from16 v2, v23

    move/from16 v3, v27

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto :goto_5

    :cond_11
    const-string/jumbo v26, "ISO-8859-1"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_12

    move/from16 v0, p2

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move/from16 v15, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Llibcore/util/CharsetUtils;->isoLatin1BytesToChars([BII[C)V

    goto :goto_5

    :cond_12
    const-string/jumbo v26, "US-ASCII"

    move-object/from16 v0, v26

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_13

    move/from16 v0, p2

    new-array v0, v0, [C

    move-object/from16 v23, v0

    move/from16 v15, p2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Llibcore/util/CharsetUtils;->asciiBytesToChars([BII[C)V

    goto :goto_5

    :cond_13
    invoke-static/range {p0 .. p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v26

    move-object/from16 v0, p3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->length()I

    move-result v15

    if-lez v15, :cond_14

    new-array v0, v15, [C

    move-object/from16 v23, v0

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v26

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    move-object/from16 v2, v23

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3, v15}, Ljava/lang/System;->arraycopy([CI[CII)V

    goto/16 :goto_5

    :cond_14
    sget-object v23, Llibcore/util/EmptyArray;->CHAR:[C

    goto/16 :goto_5
.end method

.method public static newStringFromBytes([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    array-length v0, p0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forNameUEE(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v1}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromBytes([BLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Ljava/lang/StringFactory;->newStringFromBytes([BIILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native newStringFromChars(II[C)Ljava/lang/String;
.end method

.method public static newStringFromChars([C)Ljava/lang/String;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromChars([CII)Ljava/lang/String;
    .locals 2

    or-int v0, p1, p2

    if-ltz v0, :cond_0

    array-length v0, p0

    sub-int/2addr v0, p1

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringIndexOutOfBoundsException;

    array-length v1, p0

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v0

    :cond_1
    invoke-static {p1, p2, p0}, Ljava/lang/StringFactory;->newStringFromChars(II[C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newStringFromCodePoints([III)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "codePoints == null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    or-int v4, p1, p2

    if-ltz v4, :cond_1

    array-length v4, p0

    sub-int/2addr v4, p1

    if-le p2, v4, :cond_2

    :cond_1
    new-instance v4, Ljava/lang/StringIndexOutOfBoundsException;

    array-length v5, p0

    invoke-direct {v4, v5, p1, p2}, Ljava/lang/StringIndexOutOfBoundsException;-><init>(III)V

    throw v4

    :cond_2
    mul-int/lit8 v4, p2, 0x2

    new-array v3, v4, [C

    add-int v0, p1, p2

    const/4 v2, 0x0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_3

    aget v4, p0, v1

    invoke-static {v4, v3, v2}, Ljava/lang/Character;->toChars(I[CI)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v3, v5, v2}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static native newStringFromString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static newStringFromStringBuffer(Ljava/lang/StringBuffer;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->getValue()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static newStringFromStringBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->getValue()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Ljava/lang/StringFactory;->newStringFromChars([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
