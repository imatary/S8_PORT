.class public final Landroid/icu/impl/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# static fields
.field private static final APOSTROPHE:C = '\''

.field private static final BACKSLASH:C = '\\'

.field static final DIGITS:[C

.field private static final ESCAPE:C = '\ua5a5'

.field static final ESCAPE_BYTE:B = -0x5bt

.field static final HEX_DIGIT:[C

.field public static LINE_SEPARATOR:Ljava/lang/String; = null

.field private static final MAGIC_UNSIGNED:I = -0x80000000

.field private static final UNESCAPE_MAP:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Landroid/icu/impl/Utility;->DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x61s
        0x7s
        0x62s
        0x8s
        0x65s
        0x1bs
        0x66s
        0xcs
        0x6es
        0xas
        0x72s
        0xds
        0x74s
        0x9s
        0x76s
        0xbs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final RLEStringToByteArray(Ljava/lang/String;)[B
    .locals 15

    const/4 v12, 0x0

    const/16 v14, -0x5b

    invoke-virtual {p0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    shl-int/lit8 v12, v12, 0x10

    const/4 v13, 0x1

    invoke-virtual {p0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    or-int v8, v12, v13

    new-array v2, v8, [B

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v5, 0x2

    const/4 v0, 0x0

    move v1, v0

    move v6, v5

    :goto_0
    if-ge v1, v8, :cond_5

    if-eqz v9, :cond_0

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    shr-int/lit8 v12, v4, 0x8

    int-to-byte v3, v12

    const/4 v9, 0x0

    :goto_1
    packed-switch v10, :pswitch_data_0

    move v0, v1

    :goto_2
    move v1, v0

    move v6, v5

    goto :goto_0

    :cond_0
    and-int/lit16 v12, v4, 0xff

    int-to-byte v3, v12

    const/4 v9, 0x1

    move v5, v6

    goto :goto_1

    :pswitch_0
    if-ne v3, v14, :cond_1

    const/4 v10, 0x1

    move v0, v1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v2, v1

    goto :goto_2

    :pswitch_1
    if-ne v3, v14, :cond_2

    add-int/lit8 v0, v1, 0x1

    aput-byte v14, v2, v1

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    move v11, v3

    if-gez v11, :cond_3

    add-int/lit16 v11, v11, 0x100

    :cond_3
    const/4 v10, 0x2

    move v0, v1

    goto :goto_2

    :pswitch_2
    const/4 v7, 0x0

    :goto_3
    if-ge v7, v11, :cond_4

    add-int/lit8 v0, v1, 0x1

    aput-byte v3, v2, v1

    add-int/lit8 v7, v7, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    move v0, v1

    goto :goto_2

    :cond_5
    if-eqz v10, :cond_6

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Bad run-length encoded byte array"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v6, v12, :cond_7

    new-instance v12, Ljava/lang/IllegalStateException;

    const-string/jumbo v13, "Excess data in RLE byte array string"

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_7
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static final RLEStringToCharArray(Ljava/lang/String;)[C
    .locals 12

    const v11, 0xa5a5

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    or-int v6, v9, v10

    new-array v2, v6, [C

    const/4 v0, 0x0

    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_0

    add-int/lit8 v1, v0, 0x1

    aput-char v3, v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v7, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/4 v5, 0x0

    move v1, v0

    :goto_2
    if-ge v5, v7, :cond_4

    add-int/lit8 v0, v1, 0x1

    aput-char v8, v2, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    aput-char v3, v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    if-eq v0, v6, :cond_3

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Bad run-length encoded short array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public static final RLEStringToIntArray(Ljava/lang/String;)[I
    .locals 13

    const v12, 0xa5a5

    const/4 v11, 0x0

    invoke-static {p0, v11}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v7

    new-array v2, v7, [I

    const/4 v0, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v11

    div-int/lit8 v8, v11, 0x2

    move v5, v4

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_2

    if-ge v5, v8, :cond_2

    add-int/lit8 v4, v5, 0x1

    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v12, :cond_1

    add-int/lit8 v5, v4, 0x1

    invoke-static {p0, v4}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v12, :cond_0

    add-int/lit8 v0, v1, 0x1

    aput v3, v2, v1

    move v4, v5

    :goto_1
    move v5, v4

    move v1, v0

    goto :goto_0

    :cond_0
    move v9, v3

    add-int/lit8 v4, v5, 0x1

    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->getInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_5

    add-int/lit8 v0, v1, 0x1

    aput v10, v2, v1

    add-int/lit8 v6, v6, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    aput v3, v2, v1

    goto :goto_1

    :cond_2
    if-ne v1, v7, :cond_3

    if-eq v5, v8, :cond_4

    :cond_3
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string/jumbo v12, "Bad run-length encoded int array"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_4
    return-object v2

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method public static final RLEStringToShortArray(Ljava/lang/String;)[S
    .locals 12

    const v11, 0xa5a5

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    or-int v6, v9, v10

    new-array v2, v6, [S

    const/4 v0, 0x0

    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v11, :cond_0

    add-int/lit8 v1, v0, 0x1

    int-to-short v9, v3

    aput-short v9, v2, v0

    move v0, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v7, v3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-short v8, v9

    const/4 v5, 0x0

    move v1, v0

    :goto_2
    if-ge v5, v7, :cond_4

    add-int/lit8 v0, v1, 0x1

    aput-short v8, v2, v1

    add-int/lit8 v5, v5, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v0, 0x1

    int-to-short v9, v3

    aput-short v9, v2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    if-eq v0, v6, :cond_3

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Bad run-length encoded short array"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_3
    return-object v2

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private static final appendEncodedByte(Ljava/lang/Appendable;B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;B[B)V"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    aget-byte v2, p2, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget-byte v2, p2, v2

    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v3, p1, 0xff

    or-int/2addr v2, v3

    int-to-char v0, v2

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-byte v2, p2, v3

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-byte v2, p2, v3

    const/4 v2, 0x1

    aput-byte p1, p2, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v2, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static final appendInt(Ljava/lang/Appendable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)V"
        }
    .end annotation

    ushr-int/lit8 v1, p1, 0x10

    int-to-char v1, v1

    :try_start_0
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const v1, 0xffff

    and-int/2addr v1, p1

    int-to-char v1, v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static appendNumber(Ljava/lang/Appendable;III)Ljava/lang/Appendable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)TT;"
        }
    .end annotation

    const/4 v2, 0x2

    if-lt p2, v2, :cond_0

    const/16 v2, 0x24

    if-le p2, v2, :cond_1

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Illegal radix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v2, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    move v0, p1

    if-gez p1, :cond_2

    neg-int v0, p1

    :try_start_1
    const-string/jumbo v2, "-"

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    invoke-static {p0, v0, p2, p3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V
    .locals 9

    const/16 v8, 0x20

    const/4 v7, 0x2

    const/16 v6, 0x5c

    const/4 v5, 0x0

    const/16 v4, 0x27

    if-nez p2, :cond_0

    if-eqz p3, :cond_8

    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v3

    if-eqz v3, :cond_8

    :cond_0
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    :goto_0
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v3, v7, :cond_1

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v5, v7}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lt v3, v7, :cond_2

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_2

    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p4, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    move v2, v1

    :goto_2
    add-int/lit8 v1, v2, -0x1

    if-lez v2, :cond_4

    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    if-eq p1, v3, :cond_5

    if-ne p1, v8, :cond_6

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_5

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v8, :cond_5

    invoke-virtual {p0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    :goto_3
    return-void

    :cond_6
    if-eqz p3, :cond_7

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->escapeUnprintable(Ljava/lang/Appendable;I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_7
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-nez v3, :cond_a

    if-eq p1, v4, :cond_9

    if-ne p1, v6, :cond_a

    :cond_9
    invoke-virtual {p0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    int-to-char v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_a
    invoke-virtual {p4}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gtz v3, :cond_d

    const/16 v3, 0x21

    if-lt p1, v3, :cond_e

    const/16 v3, 0x7e

    if-gt p1, v3, :cond_e

    const/16 v3, 0x30

    if-lt p1, v3, :cond_b

    const/16 v3, 0x39

    if-le p1, v3, :cond_e

    :cond_b
    const/16 v3, 0x41

    if-lt p1, v3, :cond_c

    const/16 v3, 0x5a

    if-le p1, v3, :cond_e

    :cond_c
    const/16 v3, 0x61

    if-lt p1, v3, :cond_d

    const/16 v3, 0x7a

    if-le p1, v3, :cond_e

    :cond_d
    invoke-virtual {p4, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    if-ne p1, v4, :cond_5

    int-to-char v3, p1

    invoke-virtual {p4, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_e
    invoke-static {p1}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Landroid/icu/text/UnicodeMatcher;ZLjava/lang/StringBuffer;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Landroid/icu/text/UnicodeMatcher;->toPattern(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2, p3}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method public static appendToRule(Ljava/lang/StringBuffer;Ljava/lang/String;ZZLjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {p0, v1, p2, p3, p4}, Landroid/icu/impl/Utility;->appendToRule(Ljava/lang/StringBuffer;IZZLjava/lang/StringBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    instance-of v0, p0, [I

    if-eqz v0, :cond_3

    check-cast p0, [I

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([ILjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    instance-of v0, p0, [D

    if-eqz v0, :cond_4

    check-cast p0, [D

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([DLjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_5

    check-cast p0, [B

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->arrayEquals([BLjava/lang/Object;)Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final arrayEquals([BLjava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    instance-of v2, p1, [B

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, [B

    array-length v2, p0

    array-length v3, v0

    if-ne v2, v3, :cond_3

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([BI[BII)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public static final arrayEquals([DLjava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    instance-of v2, p1, [D

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, [D

    array-length v2, p0

    array-length v3, v0

    if-ne v2, v3, :cond_3

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([DI[DII)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public static final arrayEquals([ILjava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    instance-of v2, p1, [I

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, [I

    array-length v2, p0

    array-length v3, v0

    if-ne v2, v3, :cond_3

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([II[III)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public static final arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    instance-of v2, p1, [Ljava/lang/Object;

    if-nez v2, :cond_2

    return v1

    :cond_2
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v2, p0

    array-length v3, v0

    if-ne v2, v3, :cond_3

    array-length v2, p0

    invoke-static {p0, v1, v0, v1, v2}, Landroid/icu/impl/Utility;->arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z

    move-result v1

    :cond_3
    return v1
.end method

.method public static final arrayRegionMatches([BI[BII)Z
    .locals 5

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-byte v3, p0, v1

    add-int v4, v1, v0

    aget-byte v4, p2, v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static final arrayRegionMatches([CI[CII)Z
    .locals 5

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p0, v1

    add-int v4, v1, v0

    aget-char v4, p2, v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static final arrayRegionMatches([DI[DII)Z
    .locals 8

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v4, p0, v1

    add-int v3, v1, v0

    aget-wide v6, p2, v3

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static final arrayRegionMatches([II[III)Z
    .locals 5

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p0, v1

    add-int v4, v1, v0

    aget v4, p2, v4

    if-eq v3, v4, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static final arrayRegionMatches([Ljava/lang/Object;I[Ljava/lang/Object;II)Z
    .locals 5

    add-int v2, p1, p4

    sub-int v0, p3, p1

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, p0, v1

    add-int v4, v1, v0

    aget-object v4, p2, v4

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method public static final arrayToRLEString([B)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v6, p0

    shr-int/lit8 v6, v6, 0x10

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v6, p0

    int-to-char v6, v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v7

    const/4 v3, 0x1

    const/4 v6, 0x2

    new-array v5, v6, [B

    const/4 v2, 0x1

    :goto_0
    array-length v6, p0

    if-ge v2, v6, :cond_1

    aget-byte v0, p0, v2

    if-ne v0, v4, :cond_0

    const/16 v6, 0xff

    if-ge v3, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v4, v3, v5}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    move v4, v0

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v1, v4, v3, v5}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;BI[B)V

    aget-byte v6, v5, v7

    if-eqz v6, :cond_2

    invoke-static {v1, v7, v5}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static final arrayToRLEString([C)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p0

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v5, p0

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-char v3, p0, v5

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    aget-char v4, p0, v1

    if-ne v4, v3, :cond_0

    const v5, 0xffff

    if-ge v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-short v5, v3

    invoke-static {v0, v5, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    move v3, v4

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    int-to-short v5, v3

    invoke-static {v0, v5, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static final arrayToRLEString([I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p0

    invoke-static {v0, v5}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    const/4 v5, 0x0

    aget v3, p0, v5

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    aget v4, p0, v1

    if-ne v4, v3, :cond_0

    const v5, 0xffff

    if-ge v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    move v3, v4

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static final arrayToRLEString([S)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v5, p0

    shr-int/lit8 v5, v5, 0x10

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v5, p0

    int-to-char v5, v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    aget-short v3, p0, v5

    const/4 v2, 0x1

    const/4 v1, 0x1

    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_1

    aget-short v4, p0, v1

    if-ne v4, v3, :cond_0

    const v5, 0xffff

    if-ge v2, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    move v3, v4

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v0, v3, v2}, Landroid/icu/impl/Utility;->encodeRun(Ljava/lang/Appendable;SI)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static checkCompare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable",
            "<TT;>;>(TT;TT;)I"
        }
    .end annotation

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public static checkHash(Ljava/lang/Object;)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public static final compareUnsigned(II)I
    .locals 1

    const/high16 v0, -0x80000000

    add-int/2addr p0, v0

    add-int/2addr p1, v0

    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static final encodeRun(Ljava/lang/Appendable;BI[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;BI[B)V"
        }
    .end annotation

    const/16 v2, -0x5b

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    if-ne p1, v2, :cond_0

    invoke-static {p0, v2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    :cond_0
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_3

    if-ne p1, v2, :cond_2

    invoke-static {p0, v2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    :cond_2
    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    add-int/lit8 p2, p2, -0x1

    :cond_3
    invoke-static {p0, v2, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    int-to-byte v1, p2

    invoke-static {p0, v1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    invoke-static {p0, p1, p3}, Landroid/icu/impl/Utility;->appendEncodedByte(Ljava/lang/Appendable;B[B)V

    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;II)V"
        }
    .end annotation

    const v2, 0xa5a5

    const/4 v1, 0x4

    if-ge p2, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_4

    if-ne p1, v2, :cond_0

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    :cond_0
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_3

    if-ne p1, v2, :cond_2

    invoke-static {p0, v2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    :cond_2
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    add-int/lit8 p2, p2, -0x1

    :cond_3
    invoke-static {p0, v2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    invoke-static {p0, p2}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->appendInt(Ljava/lang/Appendable;I)V

    :cond_4
    return-void
.end method

.method private static final encodeRun(Ljava/lang/Appendable;SI)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;SI)V"
        }
    .end annotation

    const v3, 0xa5a5

    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_4

    if-ne p1, v3, :cond_0

    const v2, 0xa5a5

    :try_start_0
    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    int-to-char v2, p1

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne p2, v3, :cond_3

    if-ne p1, v3, :cond_2

    const v2, 0xa5a5

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_2
    int-to-char v2, p1

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    add-int/lit8 p2, p2, -0x1

    :cond_3
    const v2, 0xa5a5

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    int-to-char v2, p2

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    int-to-char v2, p1

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception v0

    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v2, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_5

    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x20

    if-lt v1, v4, :cond_1

    const/16 v4, 0x7f

    if-gt v1, v4, :cond_1

    const/16 v4, 0x5c

    if-ne v1, v4, :cond_0

    const-string/jumbo v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const v4, 0xffff

    if-gt v1, v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const-string/jumbo v4, "\\u"

    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v6, v1

    if-eqz v2, :cond_4

    const/4 v4, 0x4

    :goto_3
    invoke-static {v6, v7, v4}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "\\U"

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static escapeUnprintable(Ljava/lang/Appendable;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;I)Z"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1}, Landroid/icu/impl/Utility;->isUnprintable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x5c

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/high16 v1, -0x10000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/16 v1, 0x55

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0x1c

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0x18

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0x14

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0x10

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :goto_0
    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0xc

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    sget-object v1, Landroid/icu/impl/Utility;->DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    const/4 v1, 0x1

    return v1

    :cond_0
    const/16 v1, 0x75

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v1, v0}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    return v2
.end method

.method public static final format1ForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v7, 0x5c

    const/16 v6, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_6

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x20

    if-lt v1, v4, :cond_0

    if-ne v1, v6, :cond_1

    :cond_0
    const/16 v4, 0xa

    if-ne v1, v4, :cond_2

    const-string/jumbo v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v2, v3

    goto :goto_0

    :cond_1
    if-eq v1, v7, :cond_0

    const/16 v4, 0x7e

    if-gt v1, v4, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const/16 v4, 0x9

    if-ne v1, v4, :cond_3

    const-string/jumbo v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/16 v4, 0xd

    if-ne v1, v4, :cond_4

    const-string/jumbo v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0x1c0

    shr-int/lit8 v5, v5, 0x6

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0x38

    shr-int/lit8 v5, v5, 0x3

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0x7

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "\\u"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    const v5, 0xf000

    and-int/2addr v5, v1

    shr-int/lit8 v5, v5, 0xc

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0xf00

    shr-int/lit8 v5, v5, 0x8

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v5, v1, 0xf0

    shr-int/lit8 v5, v5, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v5, v1, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static final formatForSource(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5c

    const/16 v7, 0x22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8

    if-lez v3, :cond_0

    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/icu/impl/Utility;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v5, "        \""

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xb

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_7

    const/16 v5, 0x50

    if-ge v2, v5, :cond_7

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x20

    if-lt v1, v5, :cond_1

    if-ne v1, v7, :cond_2

    :cond_1
    const/16 v5, 0xa

    if-ne v1, v5, :cond_3

    const-string/jumbo v5, "\\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    :goto_2
    move v3, v4

    goto :goto_1

    :cond_2
    if-eq v1, v8, :cond_1

    const/16 v5, 0x7e

    if-gt v1, v5, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/16 v5, 0x9

    if-ne v1, v5, :cond_4

    const-string/jumbo v5, "\\t"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_4
    const/16 v5, 0xd

    if-ne v1, v5, :cond_5

    const-string/jumbo v5, "\\r"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v6, v1, 0x1c0

    shr-int/lit8 v6, v6, 0x6

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v6, v1, 0x38

    shr-int/lit8 v6, v6, 0x3

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v6, v1, 0x7

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x4

    goto :goto_2

    :cond_6
    const-string/jumbo v5, "\\u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    const v6, 0xf000

    and-int/2addr v6, v1

    shr-int/lit8 v6, v6, 0xc

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v6, v1, 0xf00

    shr-int/lit8 v6, v6, 0x8

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/icu/impl/Utility;->HEX_DIGIT:[C

    and-int/lit8 v6, v1, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x6

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static fromHex(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p2, :cond_0

    :goto_0
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo p2, "\\s+"

    goto :goto_0
.end method

.method public static fromHex(Ljava/lang/String;ILjava/util/regex/Pattern;)Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    array-length v5, v3

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "code point too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    const/16 v6, 0x10

    invoke-static {v2, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method static final getInt(Ljava/lang/String;I)I
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            "U::",
            "Ljava/lang/CharSequence;",
            "T::",
            "Ljava/lang/Appendable;",
            ">(TS;ITU;ZTT;)TT;"
        }
    .end annotation

    if-eqz p3, :cond_1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    if-eqz v2, :cond_0

    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    int-to-long v4, v0

    invoke-static {v4, v5, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-eqz v2, :cond_2

    invoke-interface {p4, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    int-to-long v4, v3

    invoke-static {v4, v5, p1}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object p4

    :catch_0
    move-exception v1

    new-instance v3, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v3, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static hex(J)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Landroid/icu/impl/Utility;->hex(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hex(JI)Ljava/lang/String;
    .locals 6

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p0, v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "-8000000000000000"

    return-object v2

    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    neg-long p0, p0

    :cond_1
    const/16 v2, 0x10

    invoke-static {p0, p1, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, p2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "0000000000000000"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v0, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public static hex(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, ","

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-static {p0, v2, v0, v3, v1}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Ljava/lang/CharSequence;",
            ">(TS;ITS;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v1, v0}, Landroid/icu/impl/Utility;->hex(Ljava/lang/CharSequence;ILjava/lang/CharSequence;ZLjava/lang/Appendable;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hex([BIILjava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-byte v2, p0, v0

    int-to-long v2, v2

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->hex(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final highBit(I)B
    .locals 3

    const/16 v2, 0x10

    if-gtz p0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x10000

    if-lt p0, v1, :cond_1

    shr-int/lit8 p0, p0, 0x10

    int-to-byte v0, v2

    :cond_1
    const/16 v1, 0x100

    if-lt p0, v1, :cond_2

    shr-int/lit8 p0, p0, 0x8

    add-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    :cond_2
    if-lt p0, v2, :cond_3

    shr-int/lit8 p0, p0, 0x4

    add-int/lit8 v1, v0, 0x4

    int-to-byte v0, v1

    :cond_3
    const/4 v1, 0x4

    if-lt p0, v1, :cond_4

    shr-int/lit8 p0, p0, 0x2

    add-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    :cond_4
    const/4 v1, 0x2

    if-lt p0, v1, :cond_5

    shr-int/lit8 p0, p0, 0x1

    add-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    :cond_5
    return v0
.end method

.method public static isUnprintable(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static lookup(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static final objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static parseChar(Ljava/lang/String;[IC)Z
    .locals 4

    const/4 v3, 0x0

    aget v0, p1, v3

    aget v1, p1, v3

    invoke-static {p0, v1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result v1

    aput v1, p1, v3

    aget v1, p1, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_0

    aget v1, p1, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    aput v0, p1, v3

    return v3

    :cond_1
    aget v1, p1, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v3

    const/4 v1, 0x1

    return v1
.end method

.method public static parseInteger(Ljava/lang/String;[II)I
    .locals 12

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v11, 0x0

    aget v2, p1, v4

    const/16 v9, 0xa

    const-string/jumbo v3, "0x"

    const/4 v1, 0x1

    const/4 v5, 0x2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, 0x2

    const/16 v9, 0x10

    move v8, v2

    :goto_0
    if-ge v8, p2, :cond_5

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, v9}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v7

    if-gez v7, :cond_3

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-lez v6, :cond_0

    aput v2, p1, v4

    :cond_0
    return v11

    :cond_1
    if-ge v2, p2, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    const/4 v6, 0x1

    const/16 v9, 0x8

    move v8, v2

    goto :goto_0

    :cond_2
    move v8, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    mul-int v0, v11, v9

    add-int v10, v0, v7

    if-gt v10, v11, :cond_4

    return v4

    :cond_4
    move v11, v10

    move v8, v2

    goto :goto_0

    :cond_5
    move v2, v8

    goto :goto_1
.end method

.method public static parseNumber(Ljava/lang/String;[II)I
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    aget v3, p1, v5

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-static {p0, v3}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    invoke-static {v0, p2}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v1

    if-gez v1, :cond_1

    :cond_0
    aget v4, p1, v5

    if-ne v3, v4, :cond_3

    return v6

    :cond_1
    mul-int v4, p2, v2

    add-int v2, v4, v1

    if-gez v2, :cond_2

    return v6

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    aput v3, p1, v5

    return v2
.end method

.method public static parsePattern(Ljava/lang/String;IILjava/lang/String;[I)I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x1

    new-array v5, v7, [I

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v2, v7, :cond_5

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    if-lt p1, p2, :cond_3

    return v8

    :sswitch_0
    if-lt p1, p2, :cond_0

    return v8

    :cond_0
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v7

    if-nez v7, :cond_1

    return v8

    :cond_1
    move p1, v6

    :sswitch_1
    invoke-static {p0, p1}, Landroid/icu/impl/PatternProps;->skipWhiteSpace(Ljava/lang/CharSequence;I)I

    move-result p1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_2
    aput p1, v5, v9

    add-int/lit8 v4, v3, 0x1

    invoke-static {p0, v5, p2}, Landroid/icu/impl/Utility;->parseInteger(Ljava/lang/String;[II)I

    move-result v7

    aput v7, p4, v3

    aget v7, v5, v9

    if-ne v7, p1, :cond_2

    return v8

    :cond_2
    aget p1, v5, v9

    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v6, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Landroid/icu/lang/UCharacter;->toLowerCase(I)I

    move-result v7

    int-to-char v0, v7

    if-eq v0, v1, :cond_4

    return v8

    :cond_4
    move p1, v6

    goto :goto_1

    :cond_5
    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x23 -> :sswitch_2
        0x7e -> :sswitch_1
    .end sparse-switch
.end method

.method public static parsePattern(Ljava/lang/String;Landroid/icu/text/Replaceable;II)I
    .locals 6

    const/4 v5, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    return p2

    :cond_0
    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    :goto_0
    if-ge p2, p3, :cond_5

    invoke-interface {p1, p2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    const/16 v4, 0x7e

    if-ne v1, v4, :cond_2

    invoke-static {v0}, Landroid/icu/impl/PatternProps;->isWhiteSpace(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v4

    add-int/2addr p2, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_4

    return p2

    :cond_2
    if-ne v0, v1, :cond_3

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr p2, v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v2, v4, :cond_4

    return p2

    :cond_3
    return v5

    :cond_4
    invoke-static {p0, v2}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_5
    return v5
.end method

.method public static parseUnicodeIdentifier(Ljava/lang/String;[I)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p1, v4

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-static {p0, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierStart(I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    :goto_1
    invoke-static {v1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    return-object v3

    :cond_1
    invoke-static {v1}, Landroid/icu/lang/UCharacter;->isUnicodeIdentifierPart(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    aput v2, p1, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static quotedIndexOf(Ljava/lang/String;IILjava/lang/String;)I
    .locals 4

    const/16 v3, 0x27

    move v1, p1

    :goto_0
    if-ge v1, p2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_0

    return v1

    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method private static recursiveAppendNumber(Ljava/lang/Appendable;III)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Appendable;",
            ">(TT;III)V"
        }
    .end annotation

    :try_start_0
    rem-int v0, p1, p2

    if-ge p1, p2, :cond_0

    const/4 v2, 0x1

    if-le p3, v2, :cond_1

    :cond_0
    div-int v2, p1, p2

    add-int/lit8 v3, p3, -0x1

    invoke-static {p0, v2, p2, v3}, Landroid/icu/impl/Utility;->recursiveAppendNumber(Ljava/lang/Appendable;III)V

    :cond_1
    sget-object v2, Landroid/icu/impl/Utility;->DIGITS:[C

    aget-char v2, v2, v0

    invoke-interface {p0, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/icu/impl/IllegalIcuArgumentException;

    invoke-direct {v2, v1}, Landroid/icu/impl/IllegalIcuArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static repeat(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    if-gtz p1, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static split(Ljava/lang/String;C[Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, p1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v0

    add-int/lit8 v3, v2, 0x1

    move v0, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, p2, v0

    move v0, v1

    :goto_1
    array-length v4, p2

    if-ge v0, v4, :cond_2

    add-int/lit8 v1, v0, 0x1

    const-string/jumbo v4, ""

    aput-object v4, p2, v0

    move v0, v1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static splitString(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\\Q"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\\E"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static splitWhitespace(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "\\s+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    new-array v5, v6, [I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x5c

    if-ne v1, v6, :cond_1

    aput v4, v5, v7

    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v2

    if-gez v2, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Invalid escape sequence "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, -0x1

    add-int/lit8 v9, v4, 0x8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    aget v3, v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static unescapeAt(Ljava/lang/String;[I)I
    .locals 15

    const/4 v12, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v13, 0x0

    aget v11, p1, v13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ltz v11, :cond_0

    if-lt v11, v6, :cond_1

    :cond_0
    const/4 v13, -0x1

    return v13

    :cond_1
    invoke-static {p0, v11}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v13

    add-int/2addr v11, v13

    sparse-switch v3, :sswitch_data_0

    const/16 v13, 0x8

    invoke-static {v3, v13}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v4

    if-ltz v4, :cond_2

    const/4 v8, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v1, 0x3

    move v12, v4

    :cond_2
    :goto_0
    if-eqz v8, :cond_e

    :goto_1
    if-ge v11, v6, :cond_3

    if-ge v9, v7, :cond_3

    invoke-static {p0, v11}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    const/4 v13, 0x3

    if-ne v1, v13, :cond_5

    const/16 v13, 0x8

    :goto_2
    invoke-static {v3, v13}, Landroid/icu/lang/UCharacter;->digit(II)I

    move-result v4

    if-gez v4, :cond_6

    :cond_3
    if-ge v9, v8, :cond_7

    const/4 v13, -0x1

    return v13

    :sswitch_0
    const/4 v7, 0x4

    const/4 v8, 0x4

    goto :goto_0

    :sswitch_1
    const/16 v7, 0x8

    const/16 v8, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v8, 0x1

    if-ge v11, v6, :cond_4

    invoke-static {p0, v11}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v13

    const/16 v14, 0x7b

    if-ne v13, v14, :cond_4

    add-int/lit8 v11, v11, 0x1

    const/4 v2, 0x1

    const/16 v7, 0x8

    goto :goto_0

    :cond_4
    const/4 v7, 0x2

    goto :goto_0

    :cond_5
    const/16 v13, 0x10

    goto :goto_2

    :cond_6
    shl-int v13, v12, v1

    or-int v12, v13, v4

    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v13

    add-int/2addr v11, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    const/16 v13, 0x7d

    if-eq v3, v13, :cond_8

    const/4 v13, -0x1

    return v13

    :cond_8
    add-int/lit8 v11, v11, 0x1

    :cond_9
    if-ltz v12, :cond_a

    const/high16 v13, 0x110000

    if-lt v12, v13, :cond_b

    :cond_a
    const/4 v13, -0x1

    return v13

    :cond_b
    if-ge v11, v6, :cond_d

    int-to-char v13, v12

    invoke-static {v13}, Landroid/icu/text/UTF16;->isLeadSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_d

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v13, 0x5c

    if-ne v3, v13, :cond_c

    if-ge v0, v6, :cond_c

    const/4 v13, 0x1

    new-array v10, v13, [I

    const/4 v13, 0x0

    aput v0, v10, v13

    invoke-static {p0, v10}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v3

    const/4 v13, 0x0

    aget v0, v10, v13

    :cond_c
    int-to-char v13, v3

    invoke-static {v13}, Landroid/icu/text/UTF16;->isTrailSurrogate(C)Z

    move-result v13

    if-eqz v13, :cond_d

    move v11, v0

    int-to-char v13, v12

    int-to-char v14, v3

    invoke-static {v13, v14}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v12

    :cond_d
    const/4 v13, 0x0

    aput v11, p1, v13

    return v12

    :cond_e
    const/4 v5, 0x0

    :goto_3
    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    array-length v13, v13

    if-ge v5, v13, :cond_10

    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    aget-char v13, v13, v5

    if-ne v3, v13, :cond_f

    const/4 v13, 0x0

    aput v11, p1, v13

    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    add-int/lit8 v14, v5, 0x1

    aget-char v13, v13, v14

    return v13

    :cond_f
    sget-object v13, Landroid/icu/impl/Utility;->UNESCAPE_MAP:[C

    aget-char v13, v13, v5

    if-ge v3, v13, :cond_11

    :cond_10
    const/16 v13, 0x63

    if-ne v3, v13, :cond_12

    if-ge v11, v6, :cond_12

    invoke-static {p0, v11}, Landroid/icu/text/UTF16;->charAt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v13

    add-int/2addr v13, v11

    const/4 v14, 0x0

    aput v13, p1, v14

    and-int/lit8 v13, v3, 0x1f

    return v13

    :cond_11
    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_12
    const/4 v13, 0x0

    aput v11, p1, v13

    return v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x55 -> :sswitch_1
        0x75 -> :sswitch_0
        0x78 -> :sswitch_2
    .end sparse-switch
.end method

.method public static unescapeLeniently(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    new-array v5, v6, [I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x5c

    if-ne v1, v6, :cond_1

    aput v4, v5, v7

    invoke-static {p0, v5}, Landroid/icu/impl/Utility;->unescapeAt(Ljava/lang/String;[I)I

    move-result v2

    if-gez v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    aget v3, v5, v7

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static valueOf([I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
