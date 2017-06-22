.class public Lorg/apache/commons/imaging/common/BasicCParser;
.super Ljava/lang/Object;
.source "BasicCParser.java"


# instance fields
.field private final is:Ljava/io/PushbackInputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/PushbackInputStream;

    invoke-direct {v0, p1}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    return-void
.end method

.method public static preprocess(Ljava/io/InputStream;Ljava/lang/StringBuilder;Ljava/util/Map;)Ljava/io/ByteArrayOutputStream;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/io/ByteArrayOutputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez p1, :cond_2

    const/4 v11, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_1
    const/4 v13, -0x1

    if-eq v1, v13, :cond_2a

    if-eqz v6, :cond_7

    const/16 v13, 0x2a

    if-ne v1, v13, :cond_3

    if-eqz v5, :cond_0

    if-nez v11, :cond_0

    const/16 v13, 0x2a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v5, 0x1

    :cond_1
    :goto_2
    invoke-virtual/range {p0 .. p0}, Ljava/io/InputStream;->read()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    const/16 v13, 0x2f

    if-ne v1, v13, :cond_5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_4
    if-nez v11, :cond_1

    int-to-char v13, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    if-eqz v5, :cond_6

    if-nez v11, :cond_6

    const/16 v13, 0x2a

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    const/4 v5, 0x0

    if-nez v11, :cond_1

    int-to-char v13, v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    if-eqz v8, :cond_f

    const/16 v13, 0x5c

    if-ne v1, v13, :cond_9

    if-eqz v3, :cond_8

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x1

    goto :goto_2

    :cond_9
    const/16 v13, 0x27

    if-ne v1, v13, :cond_b

    if-eqz v3, :cond_a

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    :goto_3
    const/16 v13, 0x27

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_a
    const/4 v8, 0x0

    goto :goto_3

    :cond_b
    const/16 v13, 0xd

    if-eq v1, v13, :cond_c

    const/16 v13, 0xa

    if-ne v1, v13, :cond_d

    :cond_c
    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Unterminated single quote in file"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_d
    if-eqz v3, :cond_e

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    :cond_e
    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :cond_f
    if-eqz v9, :cond_17

    const/16 v13, 0x5c

    if-ne v1, v13, :cond_11

    if-eqz v3, :cond_10

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_10
    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_11
    const/16 v13, 0x22

    if-ne v1, v13, :cond_13

    if-eqz v3, :cond_12

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    :goto_4
    const/16 v13, 0x22

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_12
    const/4 v9, 0x0

    goto :goto_4

    :cond_13
    const/16 v13, 0xd

    if-eq v1, v13, :cond_14

    const/16 v13, 0xa

    if-ne v1, v13, :cond_15

    :cond_14
    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Unterminated string in file"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_15
    if-eqz v3, :cond_16

    const/16 v13, 0x5c

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    :cond_16
    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_17
    if-eqz v7, :cond_1e

    const/16 v13, 0xd

    if-eq v1, v13, :cond_18

    const/16 v13, 0xa

    if-ne v1, v13, :cond_1d

    :cond_18
    const/4 v7, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lorg/apache/commons/imaging/common/BasicCParser;->tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    array-length v13, v12

    const/4 v14, 0x2

    if-lt v13, v14, :cond_19

    array-length v13, v12

    const/4 v14, 0x3

    if-le v13, v14, :cond_1a

    :cond_19
    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Bad preprocessor directive"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1a
    const/4 v13, 0x0

    aget-object v13, v12, v13

    const-string v14, "define"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1b

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Invalid/unsupported preprocessor directive \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_1b
    const/4 v13, 0x1

    aget-object v14, v12, v13

    array-length v13, v12

    const/4 v15, 0x3

    if-ne v13, v15, :cond_1c

    const/4 v13, 0x2

    aget-object v13, v12, v13

    :goto_5
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    :cond_1c
    const/4 v13, 0x0

    goto :goto_5

    :cond_1d
    int-to-char v13, v1

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_1e
    const/16 v13, 0x2f

    if-ne v1, v13, :cond_20

    if-eqz v4, :cond_1f

    const/16 v13, 0x2f

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1f
    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_20
    const/16 v13, 0x2a

    if-ne v1, v13, :cond_22

    if-eqz v4, :cond_21

    const/4 v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_21
    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_22
    const/16 v13, 0x27

    if-ne v1, v13, :cond_24

    if-eqz v4, :cond_23

    const/16 v13, 0x2f

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_23
    const/4 v4, 0x0

    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_24
    const/16 v13, 0x22

    if-ne v1, v13, :cond_26

    if-eqz v4, :cond_25

    const/16 v13, 0x2f

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_25
    const/4 v4, 0x0

    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_26
    const/16 v13, 0x23

    if-ne v1, v13, :cond_28

    if-nez p2, :cond_27

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Unexpected preprocessor directive"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_27
    const/4 v7, 0x1

    goto/16 :goto_2

    :cond_28
    if-eqz v4, :cond_29

    const/16 v13, 0x2f

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_29
    const/4 v4, 0x0

    invoke-virtual {v10, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v13, 0x20

    if-eq v1, v13, :cond_1

    const/16 v13, 0x9

    if-eq v1, v13, :cond_1

    const/16 v13, 0xd

    if-eq v1, v13, :cond_1

    const/16 v13, 0xa

    if-eq v1, v13, :cond_1

    const/4 v11, 0x1

    goto/16 :goto_2

    :cond_2a
    if-eqz v4, :cond_2b

    const/16 v13, 0x2f

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2b
    if-eqz v5, :cond_2c

    const/16 v13, 0x2a

    invoke-virtual {v10, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2c
    if-eqz v9, :cond_2d

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Unterminated string at the end of file"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2d
    if-eqz v6, :cond_2e

    new-instance v13, Lorg/apache/commons/imaging/ImageReadException;

    const-string v14, "Unterminated comment at the end of file"

    invoke-direct {v13, v14}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v13

    :cond_2e
    return-object v10
.end method

.method public static tokenizeRow(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-string v9, "[ \t]"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v6, 0x0

    move-object v0, v8

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v7, v0, v1

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_0

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v8

    array-length v2, v0

    const/4 v1, 0x0

    move v5, v4

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v7, v0, v1

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_3

    add-int/lit8 v4, v5, 0x1

    aput-object v7, v3, v5

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    goto :goto_1

    :cond_2
    return-object v3

    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method public static unescapeString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_0

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, string is too short"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_0
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-ne v9, v10, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x22

    if-eq v9, v10, :cond_2

    :cond_1
    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, string not surrounded by \'\"\'"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v5, v9, :cond_17

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eqz v2, :cond_14

    const/16 v9, 0x5c

    if-ne v0, v9, :cond_3

    const/16 v9, 0x5c

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const/16 v9, 0x22

    if-ne v0, v9, :cond_4

    const/16 v9, 0x22

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v9, 0x27

    if-ne v0, v9, :cond_5

    const/16 v9, 0x27

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v9, 0x78

    if-ne v0, v9, :cond_7

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-lt v9, v10, :cond_6

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, hex constant in string too short"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_6
    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v5, 0x2

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-char v9, v1

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, hex constant invalid"

    invoke-direct {v9, v10, v8}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    :cond_7
    const/16 v9, 0x30

    if-eq v0, v9, :cond_8

    const/16 v9, 0x31

    if-eq v0, v9, :cond_8

    const/16 v9, 0x32

    if-eq v0, v9, :cond_8

    const/16 v9, 0x33

    if-eq v0, v9, :cond_8

    const/16 v9, 0x34

    if-eq v0, v9, :cond_8

    const/16 v9, 0x35

    if-eq v0, v9, :cond_8

    const/16 v9, 0x36

    if-eq v0, v9, :cond_8

    const/16 v9, 0x37

    if-ne v0, v9, :cond_c

    :cond_8
    const/4 v7, 0x1

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_9

    const/16 v9, 0x30

    add-int/lit8 v10, v5, 0x1

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v9, v10, :cond_9

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x37

    if-gt v9, v10, :cond_9

    add-int/lit8 v7, v7, 0x1

    :cond_9
    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_a

    const/16 v9, 0x30

    add-int/lit8 v10, v5, 0x2

    invoke-virtual {p1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v9, v10, :cond_a

    add-int/lit8 v9, v5, 0x2

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x37

    if-gt v9, v10, :cond_a

    add-int/lit8 v7, v7, 0x1

    :cond_a
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v7, :cond_b

    mul-int/lit8 v1, v1, 0x8

    add-int v9, v5, v6

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    add-int/lit8 v9, v9, -0x30

    add-int/2addr v1, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v9, v7, -0x1

    add-int/2addr v5, v9

    int-to-char v9, v1

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_c
    const/16 v9, 0x61

    if-ne v0, v9, :cond_d

    const/4 v9, 0x7

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_d
    const/16 v9, 0x62

    if-ne v0, v9, :cond_e

    const/16 v9, 0x8

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_e
    const/16 v9, 0x66

    if-ne v0, v9, :cond_f

    const/16 v9, 0xc

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_f
    const/16 v9, 0x6e

    if-ne v0, v9, :cond_10

    const/16 v9, 0xa

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_10
    const/16 v9, 0x72

    if-ne v0, v9, :cond_11

    const/16 v9, 0xd

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_11
    const/16 v9, 0x74

    if-ne v0, v9, :cond_12

    const/16 v9, 0x9

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_12
    const/16 v9, 0x76

    if-ne v0, v9, :cond_13

    const/16 v9, 0xb

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :cond_13
    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, invalid escape sequence"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_14
    const/16 v9, 0x5c

    if-ne v0, v9, :cond_15

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_15
    const/16 v9, 0x22

    if-ne v0, v9, :cond_16

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, extra \'\"\' found in string"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_16
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_17
    if-eqz v2, :cond_18

    new-instance v9, Lorg/apache/commons/imaging/ImageReadException;

    const-string v10, "Parsing XPM file failed, unterminated escape sequence found in string"

    invoke-direct {v9, v10}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_18
    return-void
.end method


# virtual methods
.method public nextToken()Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    const/16 v10, 0x5f

    const/16 v9, 0x5c

    const/16 v8, 0xd

    const/16 v7, 0xa

    const/16 v6, 0x22

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    :goto_0
    const/4 v5, -0x1

    if-eq v0, v5, :cond_10

    if-eqz v3, :cond_7

    if-ne v0, v9, :cond_2

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v5}, Ljava/io/PushbackInputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    if-ne v0, v6, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    return-object v5

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    if-eq v0, v8, :cond_5

    if-ne v0, v7, :cond_6

    :cond_5
    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "Unterminated string in XPM file"

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_a

    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_8

    if-ne v0, v10, :cond_9

    :cond_8
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lorg/apache/commons/imaging/common/BasicCParser;->is:Ljava/io/PushbackInputStream;

    invoke-virtual {v5, v0}, Ljava/io/PushbackInputStream;->unread(I)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_a
    if-ne v0, v6, :cond_b

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    goto :goto_1

    :cond_b
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v5

    if-nez v5, :cond_c

    if-ne v0, v10, :cond_d

    :cond_c
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    goto :goto_1

    :cond_d
    const/16 v5, 0x7b

    if-eq v0, v5, :cond_e

    const/16 v5, 0x7d

    if-eq v0, v5, :cond_e

    const/16 v5, 0x5b

    if-eq v0, v5, :cond_e

    const/16 v5, 0x5d

    if-eq v0, v5, :cond_e

    const/16 v5, 0x2a

    if-eq v0, v5, :cond_e

    const/16 v5, 0x3b

    if-eq v0, v5, :cond_e

    const/16 v5, 0x3d

    if-eq v0, v5, :cond_e

    const/16 v5, 0x2c

    if-ne v0, v5, :cond_f

    :cond_e
    int-to-char v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_f
    const/16 v5, 0x20

    if-eq v0, v5, :cond_0

    const/16 v5, 0x9

    if-eq v0, v5, :cond_0

    if-eq v0, v8, :cond_0

    if-eq v0, v7, :cond_0

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled/invalid character \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' found in XPM file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_10
    if-eqz v2, :cond_11

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    :cond_11
    if-eqz v3, :cond_12

    new-instance v5, Lorg/apache/commons/imaging/ImageReadException;

    const-string v6, "Unterminated string ends XMP file"

    invoke-direct {v5, v6}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_2
.end method
