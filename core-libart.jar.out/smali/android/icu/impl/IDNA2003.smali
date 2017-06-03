.class public final Landroid/icu/impl/IDNA2003;
.super Ljava/lang/Object;
.source "IDNA2003.java"


# static fields
.field private static ACE_PREFIX:[C = null

.field private static final CAPITAL_A:I = 0x41

.field private static final CAPITAL_Z:I = 0x5a

.field private static final FULL_STOP:I = 0x2e

.field private static final HYPHEN:I = 0x2d

.field private static final LOWER_CASE_DELTA:I = 0x20

.field private static final MAX_DOMAIN_NAME_LENGTH:I = 0xff

.field private static final MAX_LABEL_LENGTH:I = 0x3f

.field private static final namePrep:Landroid/icu/text/StringPrep;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    const/4 v0, 0x0

    invoke-static {v0}, Landroid/icu/text/StringPrep;->getInstance(I)Landroid/icu/text/StringPrep;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    return-void

    :array_0
    .array-data 2
        0x78s
        0x6es
        0x2ds
        0x2ds
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-static {p0, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {p1, p2}, Landroid/icu/impl/IDNA2003;->convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v2

    return v2
.end method

.method private static compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    if-ne v2, v4, :cond_0

    return v6

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v4

    invoke-static {v1}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v5

    sub-int v3, v4, v5

    if-eqz v3, :cond_1

    return v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static convertIDNToASCII(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    invoke-static {v5, v4, v6}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    move-result v4

    new-instance v1, Ljava/lang/String;

    sub-int v6, v4, v2

    invoke-direct {v1, v5, v2, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    array-length v6, v5

    if-eq v4, v6, :cond_1

    :cond_0
    invoke-static {v1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    :cond_1
    array-length v6, v5

    if-ne v4, v6, :cond_2

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_3

    new-instance v6, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v7, "The output exceed the max allowed length."

    const/16 v8, 0xb

    invoke-direct {v6, v7, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v2, v4

    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public static convertIDNToUnicode(Ljava/lang/String;I)Ljava/lang/StringBuffer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v6, v5

    invoke-static {v5, v4, v6}, Landroid/icu/impl/IDNA2003;->getSeparatorIndex([CII)I

    move-result v4

    new-instance v1, Ljava/lang/String;

    sub-int v6, v4, v2

    invoke-direct {v1, v5, v2, v6}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    array-length v6, v5

    if-eq v4, v6, :cond_0

    new-instance v6, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v7, "Found zero length lable after NamePrep."

    const/16 v8, 0xa

    invoke-direct {v6, v7, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_0
    invoke-static {v1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/UCharacterIterator;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/impl/IDNA2003;->convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    array-length v6, v5

    if-ne v4, v6, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v6

    const/16 v7, 0xff

    if-le v6, v7, :cond_2

    new-instance v6, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v7, "The output exceed the max allowed length."

    const/16 v8, 0xb

    invoke-direct {v6, v7, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v6

    :cond_1
    aget-char v6, v5, v4

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public static convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x1

    and-int/lit8 v17, p1, 0x2

    if-eqz v17, :cond_1

    const/16 v16, 0x1

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v6

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v6, v0, :cond_2

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    const/16 v16, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, -0x1

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UCharacterIterator;->setToStart()V

    const/4 v12, 0x0

    if-nez v14, :cond_3

    sget-object v17, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v12

    :goto_1
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_4

    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "Found zero length lable after NamePrep."

    const/16 v19, 0xa

    invoke-direct/range {v17 .. v19}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;I)V

    throw v17

    :cond_3
    new-instance v12, Ljava/lang/StringBuffer;

    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v14, 0x1

    const/4 v9, 0x0

    :goto_2
    if-ge v9, v11, :cond_7

    invoke-virtual {v12, v9}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v6

    const/16 v17, 0x7f

    move/from16 v0, v17

    if-le v6, v0, :cond_6

    const/4 v14, 0x0

    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    invoke-static {v6}, Landroid/icu/impl/IDNA2003;->isLDHChar(I)Z

    move-result v17

    if-nez v17, :cond_5

    const/4 v15, 0x0

    move v8, v9

    goto :goto_3

    :cond_7
    if-eqz v16, :cond_b

    if-eqz v15, :cond_8

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    :cond_8
    if-nez v15, :cond_c

    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The input does not conform to the STD 3 ASCII rules"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    if-lez v8, :cond_9

    add-int/lit8 v8, v8, -0x1

    :cond_9
    const/16 v20, 0x5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v8}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_a
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_8

    :cond_b
    if-eqz v14, :cond_f

    move-object v7, v12

    :goto_4
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v17

    const/16 v18, 0x3f

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The labels in the input are too long. Length > 63."

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x8

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_c
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v17

    const/16 v18, 0x2d

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The input does not conform to the STD 3 ASCII rules"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x5

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_d
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The input does not conform to the STD 3 ASCII rules"

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    if-lez v11, :cond_e

    add-int/lit8 v11, v11, -0x1

    :cond_e
    const/16 v20, 0x5

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3, v11}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_f
    invoke-static {v12}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    move-result v17

    if-nez v17, :cond_10

    new-array v5, v11, [Z

    invoke-static {v12, v5}, Landroid/icu/impl/Punycode;->encode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v13}, Landroid/icu/impl/IDNA2003;->toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v10

    sget-object v17, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    sget-object v18, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v7, v0, v1, v2}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    :cond_10
    new-instance v17, Landroid/icu/text/StringPrepParseException;

    const-string/jumbo v18, "The input does not start with the ACE Prefix."

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x6

    const/16 v21, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v20

    move-object/from16 v3, v19

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/StringPrepParseException;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    throw v17

    :cond_11
    return-object v7
.end method

.method public static convertToUnicode(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/icu/text/StringPrepParseException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getIndex()I

    move-result v6

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->next()I

    move-result v1

    const/4 v10, -0x1

    if-eq v1, v10, :cond_1

    const/16 v10, 0x7f

    if-le v1, v10, :cond_0

    const/4 v7, 0x0

    goto :goto_0

    :cond_1
    if-nez v7, :cond_3

    :try_start_0
    invoke-virtual {p0, v6}, Landroid/icu/text/UCharacterIterator;->setIndex(I)V

    sget-object v10, Landroid/icu/impl/IDNA2003;->namePrep:Landroid/icu/text/StringPrep;

    invoke-virtual {v10, p0, p1}, Landroid/icu/text/StringPrep;->prepare(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_1
    invoke-static {v5}, Landroid/icu/impl/IDNA2003;->startsWithPrefix(Ljava/lang/StringBuffer;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v2, 0x0

    sget-object v10, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v10, v10

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v8

    :try_start_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {v8, v0}, Landroid/icu/impl/Punycode;->decode(Ljava/lang/CharSequence;[Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/icu/text/StringPrepParseException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    if-eqz v2, :cond_2

    invoke-static {v2}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/lang/StringBuffer;)Landroid/icu/text/UCharacterIterator;

    move-result-object v10

    invoke-static {v10, p1}, Landroid/icu/impl/IDNA2003;->convertToASCII(Landroid/icu/text/UCharacterIterator;I)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/icu/impl/IDNA2003;->compareCaseInsensitiveASCII(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)I

    move-result v10

    if-eqz v10, :cond_2

    const/4 v2, 0x0

    :cond_2
    if-eqz v2, :cond_4

    return-object v2

    :catch_0
    move-exception v4

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v10

    :cond_3
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v3

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/icu/text/UCharacterIterator;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object v10
.end method

.method private static getSeparatorIndex([CII)I
    .locals 1

    :goto_0
    if-ge p1, p2, :cond_1

    aget-char v0, p0, p1

    invoke-static {v0}, Landroid/icu/impl/IDNA2003;->isLabelSeparator(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private static isLDHChar(I)Z
    .locals 3

    const/16 v2, 0x7a

    const/4 v1, 0x0

    if-le p0, v2, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/16 v0, 0x41

    if-gt v0, p0, :cond_3

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_3
    const/16 v0, 0x61

    if-gt v0, p0, :cond_4

    if-le p0, v2, :cond_1

    :cond_4
    return v1
.end method

.method private static isLabelSeparator(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    return v0

    :sswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2e -> :sswitch_0
        0x3002 -> :sswitch_0
        0xff0e -> :sswitch_0
        0xff61 -> :sswitch_0
    .end sparse-switch
.end method

.method private static startsWithPrefix(Ljava/lang/StringBuffer;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sget-object v3, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v3, v3

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    array-length v2, v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v2

    sget-object v3, Landroid/icu/impl/IDNA2003;->ACE_PREFIX:[C

    aget-char v3, v3, v0

    if-eq v2, v3, :cond_1

    const/4 v1, 0x0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static toASCIILower(C)C
    .locals 1

    const/16 v0, 0x41

    if-gt v0, p0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, 0x20

    int-to-char v0, v0

    return v0

    :cond_0
    return p0
.end method

.method private static toASCIILower(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/icu/impl/IDNA2003;->toASCIILower(C)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
