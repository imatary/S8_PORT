.class final Landroid/icu/text/DictionaryData;
.super Ljava/lang/Object;
.source "DictionaryData.java"


# static fields
.field private static final DATA_FORMAT_ID:I = 0x44696374

.field public static final IX_COUNT:I = 0x8

.field public static final IX_RESERVED1_OFFSET:I = 0x1

.field public static final IX_RESERVED2_OFFSET:I = 0x2

.field public static final IX_RESERVED6:I = 0x6

.field public static final IX_RESERVED7:I = 0x7

.field public static final IX_STRING_TRIE_OFFSET:I = 0x0

.field public static final IX_TOTAL_SIZE:I = 0x3

.field public static final IX_TRANSFORM:I = 0x5

.field public static final IX_TRIE_TYPE:I = 0x4

.field public static final TRANSFORM_NONE:I = 0x0

.field public static final TRANSFORM_OFFSET_MASK:I = 0x1fffff

.field public static final TRANSFORM_TYPE_MASK:I = 0x7f000000

.field public static final TRANSFORM_TYPE_OFFSET:I = 0x1000000

.field public static final TRIE_HAS_VALUES:I = 0x8

.field public static final TRIE_TYPE_BYTES:I = 0x0

.field public static final TRIE_TYPE_MASK:I = 0x7

.field public static final TRIE_TYPE_UCHARS:I = 0x1


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadDictionaryFor(Ljava/lang/String;)Landroid/icu/text/DictionaryMatcher;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v13, "android/icu/impl/data/icudt56b/brkitr"

    invoke-static {v13}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    check-cast v9, Landroid/icu/impl/ICUResourceBundle;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "dictionaries/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "brkitr/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    const v13, 0x44696374

    const/4 v14, 0x0

    invoke-static {v0, v13, v14}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    const/16 v13, 0x8

    new-array v6, v13, [I

    const/4 v5, 0x0

    :goto_0
    const/16 v13, 0x8

    if-ge v5, v13, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    aput v13, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    aget v8, v6, v13

    const/16 v13, 0x20

    if-lt v8, v13, :cond_2

    const/4 v13, 0x1

    :goto_1
    invoke-static {v13}, Landroid/icu/impl/Assert;->assrt(Z)V

    const/16 v13, 0x20

    if-le v8, v13, :cond_1

    add-int/lit8 v4, v8, -0x20

    invoke-static {v0, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    :cond_1
    const/4 v13, 0x4

    aget v13, v6, v13

    and-int/lit8 v12, v13, 0x7

    const/4 v13, 0x3

    aget v13, v6, v13

    sub-int v10, v13, v8

    const/4 v7, 0x0

    if-nez v12, :cond_3

    const/4 v13, 0x5

    aget v11, v6, v13

    new-array v2, v10, [B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v7, Landroid/icu/text/BytesDictionaryMatcher;

    invoke-direct {v7, v2, v11}, Landroid/icu/text/BytesDictionaryMatcher;-><init>([BI)V

    :goto_2
    return-object v7

    :cond_2
    const/4 v13, 0x0

    goto :goto_1

    :cond_3
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    rem-int/lit8 v13, v10, 0x2

    if-nez v13, :cond_4

    const/4 v13, 0x1

    :goto_3
    invoke-static {v13}, Landroid/icu/impl/Assert;->assrt(Z)V

    div-int/lit8 v13, v10, 0x2

    and-int/lit8 v14, v10, 0x1

    invoke-static {v0, v13, v14}, Landroid/icu/impl/ICUBinary;->getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Landroid/icu/text/CharsDictionaryMatcher;

    invoke-direct {v7, v1}, Landroid/icu/text/CharsDictionaryMatcher;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    goto :goto_2
.end method
