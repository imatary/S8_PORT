.class public abstract Landroid/icu/impl/Trie2;
.super Ljava/lang/Object;
.source "Trie2.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Trie2$1;,
        Landroid/icu/impl/Trie2$CharSequenceIterator;,
        Landroid/icu/impl/Trie2$CharSequenceValues;,
        Landroid/icu/impl/Trie2$Range;,
        Landroid/icu/impl/Trie2$Trie2Iterator;,
        Landroid/icu/impl/Trie2$UTrie2Header;,
        Landroid/icu/impl/Trie2$ValueMapper;,
        Landroid/icu/impl/Trie2$ValueWidth;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/icu/impl/Trie2$Range;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic -android-icu-impl-Trie2$ValueWidthSwitchesValues:[I = null

.field static final UNEWTRIE2_INDEX_1_LENGTH:I = 0x220

.field static final UNEWTRIE2_INDEX_GAP_LENGTH:I = 0x240

.field static final UNEWTRIE2_INDEX_GAP_OFFSET:I = 0x820

.field static final UNEWTRIE2_MAX_DATA_LENGTH:I = 0x110480

.field static final UNEWTRIE2_MAX_INDEX_2_LENGTH:I = 0x8aa0

.field static final UTRIE2_BAD_UTF8_DATA_OFFSET:I = 0x80

.field static final UTRIE2_CP_PER_INDEX_1_ENTRY:I = 0x800

.field static final UTRIE2_DATA_BLOCK_LENGTH:I = 0x20

.field static final UTRIE2_DATA_GRANULARITY:I = 0x4

.field static final UTRIE2_DATA_MASK:I = 0x1f

.field static final UTRIE2_DATA_START_OFFSET:I = 0xc0

.field static final UTRIE2_INDEX_1_OFFSET:I = 0x840

.field static final UTRIE2_INDEX_2_BLOCK_LENGTH:I = 0x40

.field static final UTRIE2_INDEX_2_BMP_LENGTH:I = 0x820

.field static final UTRIE2_INDEX_2_MASK:I = 0x3f

.field static final UTRIE2_INDEX_2_OFFSET:I = 0x0

.field static final UTRIE2_INDEX_SHIFT:I = 0x2

.field static final UTRIE2_LSCP_INDEX_2_LENGTH:I = 0x20

.field static final UTRIE2_LSCP_INDEX_2_OFFSET:I = 0x800

.field static final UTRIE2_MAX_INDEX_1_LENGTH:I = 0x200

.field static final UTRIE2_OMITTED_BMP_INDEX_1_LENGTH:I = 0x20

.field static final UTRIE2_OPTIONS_VALUE_BITS_MASK:I = 0xf

.field static final UTRIE2_SHIFT_1:I = 0xb

.field static final UTRIE2_SHIFT_1_2:I = 0x6

.field static final UTRIE2_SHIFT_2:I = 0x5

.field static final UTRIE2_UTF8_2B_INDEX_2_LENGTH:I = 0x20

.field static final UTRIE2_UTF8_2B_INDEX_2_OFFSET:I = 0x820

.field private static defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;


# instance fields
.field data16:I

.field data32:[I

.field dataLength:I

.field dataNullOffset:I

.field errorValue:I

.field fHash:I

.field header:Landroid/icu/impl/Trie2$UTrie2Header;

.field highStart:I

.field highValueIndex:I

.field index:[C

.field index2NullOffset:I

.field indexLength:I

.field initialValue:I


# direct methods
.method private static synthetic -getandroid-icu-impl-Trie2$ValueWidthSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/icu/impl/Trie2;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/impl/Trie2;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/icu/impl/Trie2$ValueWidth;->values()[Landroid/icu/impl/Trie2$ValueWidth;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Landroid/icu/impl/Trie2;->-android-icu-impl-Trie2$ValueWidthSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashInt(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(II)I
    .locals 1

    invoke-static {p0, p1}, Landroid/icu/impl/Trie2;->hashUChar32(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap3()I
    .locals 1

    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/icu/impl/Trie2$1;

    invoke-direct {v0}, Landroid/icu/impl/Trie2$1;-><init>()V

    sput-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    :try_start_0
    new-instance v1, Landroid/icu/impl/Trie2$UTrie2Header;

    invoke-direct {v1}, Landroid/icu/impl/Trie2$UTrie2Header;-><init>()V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    sparse-switch v6, :sswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "Buffer does not contain a serialized UTrie2"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v6

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v6

    :sswitch_0
    :try_start_1
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v4, v6, :cond_0

    move v3, v7

    :cond_0
    if-eqz v3, :cond_1

    sget-object v6, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const v6, 0x54726932

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    :sswitch_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v6

    iput v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    and-int/lit8 v6, v6, 0xf

    if-le v6, v7, :cond_2

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "UTrie2 serialized format error."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_1
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_2
    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    and-int/lit8 v6, v6, 0xf

    if-nez v6, :cond_5

    sget-object v5, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    new-instance v0, Landroid/icu/impl/Trie2_16;

    invoke-direct {v0}, Landroid/icu/impl/Trie2_16;-><init>()V

    :goto_1
    iput-object v1, v0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    iput v6, v0, Landroid/icu/impl/Trie2;->indexLength:I

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    shl-int/lit8 v6, v6, 0x2

    iput v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    iput v6, v0, Landroid/icu/impl/Trie2;->index2NullOffset:I

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    iput v6, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    iget v6, v1, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    shl-int/lit8 v6, v6, 0xb

    iput v6, v0, Landroid/icu/impl/Trie2;->highStart:I

    iget v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/lit8 v6, v6, -0x4

    iput v6, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v5, v6, :cond_3

    iget v6, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    iget v7, v0, Landroid/icu/impl/Trie2;->indexLength:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/icu/impl/Trie2;->highValueIndex:I

    :cond_3
    iget v2, v0, Landroid/icu/impl/Trie2;->indexLength:I

    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v5, v6, :cond_4

    iget v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    add-int/2addr v2, v6

    :cond_4
    const/4 v6, 0x0

    invoke-static {p0, v2, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v6

    iput-object v6, v0, Landroid/icu/impl/Trie2;->index:[C

    sget-object v6, Landroid/icu/impl/Trie2$ValueWidth;->BITS_16:Landroid/icu/impl/Trie2$ValueWidth;

    if-ne v5, v6, :cond_6

    iget v6, v0, Landroid/icu/impl/Trie2;->indexLength:I

    iput v6, v0, Landroid/icu/impl/Trie2;->data16:I

    :goto_2
    invoke-static {}, Landroid/icu/impl/Trie2;->-getandroid-icu-impl-Trie2$ValueWidthSwitchesValues()[I

    move-result-object v6

    invoke-virtual {v5}, Landroid/icu/impl/Trie2$ValueWidth;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "UTrie2 serialized format error."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_5
    sget-object v5, Landroid/icu/impl/Trie2$ValueWidth;->BITS_32:Landroid/icu/impl/Trie2$ValueWidth;

    new-instance v0, Landroid/icu/impl/Trie2_32;

    invoke-direct {v0}, Landroid/icu/impl/Trie2_32;-><init>()V

    goto :goto_1

    :cond_6
    iget v6, v0, Landroid/icu/impl/Trie2;->dataLength:I

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v6

    iput-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    goto :goto_2

    :pswitch_0
    const/4 v6, 0x0

    iput-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    iget-object v6, v0, Landroid/icu/impl/Trie2;->index:[C

    iget v7, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    aget-char v6, v6, v7

    iput v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    iget-object v6, v0, Landroid/icu/impl/Trie2;->index:[C

    iget v7, v0, Landroid/icu/impl/Trie2;->data16:I

    add-int/lit16 v7, v7, 0x80

    aget-char v6, v6, v7

    iput v6, v0, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object v0

    :pswitch_1
    const/4 v6, 0x0

    :try_start_2
    iput v6, v0, Landroid/icu/impl/Trie2;->data16:I

    iget-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    iget v7, v0, Landroid/icu/impl/Trie2;->dataNullOffset:I

    aget v6, v6, v7

    iput v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    iget-object v6, v0, Landroid/icu/impl/Trie2;->data32:[I

    const/16 v7, 0x80

    aget v6, v6, v7

    iput v6, v0, Landroid/icu/impl/Trie2;->errorValue:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x32697254 -> :sswitch_0
        0x54726932 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getVersion(Ljava/io/InputStream;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x54

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Input stream must support mark()."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->mark(I)V

    const/4 v2, 0x4

    new-array v1, v2, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    array-length v2, v1

    if-eq v0, v2, :cond_1

    return v4

    :cond_1
    aget-byte v2, v1, v4

    if-ne v2, v8, :cond_2

    aget-byte v2, v1, v5

    const/16 v3, 0x72

    if-ne v2, v3, :cond_2

    aget-byte v2, v1, v6

    const/16 v3, 0x69

    if-ne v2, v3, :cond_2

    aget-byte v2, v1, v7

    const/16 v3, 0x65

    if-ne v2, v3, :cond_2

    return v5

    :cond_2
    aget-byte v2, v1, v4

    if-ne v2, v8, :cond_3

    aget-byte v2, v1, v5

    const/16 v3, 0x72

    if-ne v2, v3, :cond_3

    aget-byte v2, v1, v6

    const/16 v3, 0x69

    if-ne v2, v3, :cond_3

    aget-byte v2, v1, v7

    const/16 v3, 0x32

    if-ne v2, v3, :cond_3

    return v6

    :cond_3
    if-eqz p1, :cond_5

    aget-byte v2, v1, v4

    const/16 v3, 0x65

    if-ne v2, v3, :cond_4

    aget-byte v2, v1, v5

    const/16 v3, 0x69

    if-ne v2, v3, :cond_4

    aget-byte v2, v1, v6

    const/16 v3, 0x72

    if-ne v2, v3, :cond_4

    aget-byte v2, v1, v7

    if-ne v2, v8, :cond_4

    return v5

    :cond_4
    aget-byte v2, v1, v4

    const/16 v3, 0x32

    if-ne v2, v3, :cond_5

    aget-byte v2, v1, v5

    const/16 v3, 0x69

    if-ne v2, v3, :cond_5

    aget-byte v2, v1, v6

    const/16 v3, 0x72

    if-ne v2, v3, :cond_5

    aget-byte v2, v1, v7

    if-ne v2, v8, :cond_5

    return v6

    :cond_5
    return v4
.end method

.method private static hashByte(II)I
    .locals 1

    const v0, 0x1000193

    mul-int/2addr p0, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private static hashInt(II)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    return p0
.end method

.method private static hashUChar32(II)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    shr-int/lit8 v0, p1, 0x10

    invoke-static {p0, v0}, Landroid/icu/impl/Trie2;->hashByte(II)I

    move-result p0

    return p0
.end method

.method private static initHash()I
    .locals 1

    const v0, -0x7ee3623b

    return v0
.end method


# virtual methods
.method public charSequenceIterator(Ljava/lang/CharSequence;I)Landroid/icu/impl/Trie2$CharSequenceIterator;
    .locals 1

    new-instance v0, Landroid/icu/impl/Trie2$CharSequenceIterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$CharSequenceIterator;-><init>(Landroid/icu/impl/Trie2;Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x0

    instance-of v5, p1, Landroid/icu/impl/Trie2;

    if-nez v5, :cond_0

    return v7

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/Trie2;

    invoke-virtual {v0}, Landroid/icu/impl/Trie2;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/Trie2$Range;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    return v7

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/Trie2$Range;

    invoke-virtual {v3, v2}, Landroid/icu/impl/Trie2$Range;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    return v7

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    return v7

    :cond_4
    iget v5, p0, Landroid/icu/impl/Trie2;->errorValue:I

    iget v6, v0, Landroid/icu/impl/Trie2;->errorValue:I

    if-ne v5, v6, :cond_5

    iget v5, p0, Landroid/icu/impl/Trie2;->initialValue:I

    iget v6, v0, Landroid/icu/impl/Trie2;->initialValue:I

    if-eq v5, v6, :cond_6

    :cond_5
    return v7

    :cond_6
    const/4 v5, 0x1

    return v5
.end method

.method public abstract get(I)I
.end method

.method public abstract getFromU16SingleLead(C)I
.end method

.method public hashCode()I
    .locals 4

    iget v3, p0, Landroid/icu/impl/Trie2;->fHash:I

    if-nez v3, :cond_2

    invoke-static {}, Landroid/icu/impl/Trie2;->initHash()I

    move-result v0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/Trie2$Range;

    invoke-virtual {v1}, Landroid/icu/impl/Trie2$Range;->hashCode()I

    move-result v3

    invoke-static {v0, v3}, Landroid/icu/impl/Trie2;->hashInt(II)I

    move-result v0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput v0, p0, Landroid/icu/impl/Trie2;->fHash:I

    :cond_2
    iget v3, p0, Landroid/icu/impl/Trie2;->fHash:I

    return v3
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(Landroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;Landroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method public iteratorForLeadSurrogate(C)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    sget-object v1, Landroid/icu/impl/Trie2;->defaultValueMapper:Landroid/icu/impl/Trie2$ValueMapper;

    invoke-direct {v0, p0, p1, v1}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method public iteratorForLeadSurrogate(CLandroid/icu/impl/Trie2$ValueMapper;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Landroid/icu/impl/Trie2$ValueMapper;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/Trie2$Range;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/icu/impl/Trie2$Trie2Iterator;

    invoke-direct {v0, p0, p1, p2}, Landroid/icu/impl/Trie2$Trie2Iterator;-><init>(Landroid/icu/impl/Trie2;CLandroid/icu/impl/Trie2$ValueMapper;)V

    return-object v0
.end method

.method rangeEnd(III)I
    .locals 3

    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v0, p1, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/icu/impl/Trie2;->get(I)I

    move-result v2

    if-eq v2, p3, :cond_2

    :cond_0
    iget v2, p0, Landroid/icu/impl/Trie2;->highStart:I

    if-lt v0, v2, :cond_1

    move v0, p2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    return v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected serializeHeader(Ljava/io/DataOutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->signature:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->options:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedDataLength:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->index2NullOffset:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->dataNullOffset:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->shiftedHighStart:I

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/16 v0, 0x10

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/icu/impl/Trie2;->index:[C

    aget-char v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeChar(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/Trie2;->header:Landroid/icu/impl/Trie2$UTrie2Header;

    iget v2, v2, Landroid/icu/impl/Trie2$UTrie2Header;->indexLength:I

    add-int/lit8 v0, v2, 0x10

    return v0
.end method
