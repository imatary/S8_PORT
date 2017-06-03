.class public final Landroid/icu/impl/UBiDiProps;
.super Ljava/lang/Object;
.source "UBiDiProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UBiDiProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final BIDI_CONTROL_SHIFT:I = 0xb

.field private static final BPT_MASK:I = 0x300

.field private static final BPT_SHIFT:I = 0x8

.field private static final CLASS_MASK:I = 0x1f

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ubidi.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ubidi"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final ESC_MIRROR_DELTA:I = -0x4

.field private static final FMT:I = 0x42694469

.field public static final INSTANCE:Landroid/icu/impl/UBiDiProps;

.field private static final IS_MIRRORED_SHIFT:I = 0xc

.field private static final IX_JG_LIMIT:I = 0x5

.field private static final IX_JG_LIMIT2:I = 0x7

.field private static final IX_JG_START:I = 0x4

.field private static final IX_JG_START2:I = 0x6

.field private static final IX_MAX_VALUES:I = 0xf

.field private static final IX_MIRROR_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final JOIN_CONTROL_SHIFT:I = 0xa

.field private static final JT_MASK:I = 0xe0

.field private static final JT_SHIFT:I = 0x5

.field private static final MAX_JG_MASK:I = 0xff0000

.field private static final MAX_JG_SHIFT:I = 0x10

.field private static final MIRROR_DELTA_SHIFT:I = 0xd

.field private static final MIRROR_INDEX_SHIFT:I = 0x15


# instance fields
.field private indexes:[I

.field private jgArray:[B

.field private jgArray2:[B

.field private mirrors:[I

.field private trie:Landroid/icu/impl/Trie2_16;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    new-instance v1, Landroid/icu/impl/UBiDiProps;

    invoke-direct {v1}, Landroid/icu/impl/UBiDiProps;-><init>()V

    sput-object v1, Landroid/icu/impl/UBiDiProps;->INSTANCE:Landroid/icu/impl/UBiDiProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "ubidi.icu"

    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/UBiDiProps;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static final getClassFromProps(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method private static final getFlagFromProps(II)Z
    .locals 2

    const/4 v0, 0x0

    shr-int v1, p0, p1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final getMirror(II)I
    .locals 7

    invoke-static {p2}, Landroid/icu/impl/UBiDiProps;->getMirrorDeltaFromProps(I)I

    move-result v1

    const/4 v5, -0x4

    if-eq v1, v5, :cond_0

    add-int v5, p1, v1

    return v5

    :cond_0
    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v6, 0x3

    aget v3, v5, v6

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_2

    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    aget v4, v5, v2

    invoke-static {v4}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    invoke-static {v4}, Landroid/icu/impl/UBiDiProps;->getMirrorIndex(I)I

    move-result v6

    aget v5, v5, v6

    invoke-static {v5}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v5

    return v5

    :cond_1
    if-ge p1, v0, :cond_3

    :cond_2
    return p1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static final getMirrorCodePoint(I)I
    .locals 1

    const v0, 0x1fffff

    and-int/2addr v0, p0

    return v0
.end method

.method private static final getMirrorDeltaFromProps(I)I
    .locals 1

    int-to-short v0, p0

    shr-int/lit8 v0, v0, 0xd

    return v0
.end method

.method private static final getMirrorIndex(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x15

    return v0
.end method

.method private readData(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Landroid/icu/impl/UBiDiProps$IsAcceptable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/icu/impl/UBiDiProps$IsAcceptable;-><init>(Landroid/icu/impl/UBiDiProps$IsAcceptable;)V

    const v5, 0x42694469

    invoke-static {p1, v5, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "indexes[0] too small in ubidi.icu"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-array v4, v0, [I

    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    aput v0, v4, v6

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x2

    aget v1, v4, v5

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v4}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v3

    if-le v3, v1, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "ubidi.icu: not enough bytes for the trie"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    sub-int v4, v1, v3

    invoke-static {p1, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    if-lez v0, :cond_3

    invoke-static {p1, v0, v6}, Landroid/icu/impl/ICUBinary;->getInts(Ljava/nio/ByteBuffer;II)[I

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    sub-int v0, v4, v5

    new-array v4, v0, [B

    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v5, 0x7

    aget v4, v4, v5

    iget-object v5, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v6, 0x6

    aget v5, v5, v6

    sub-int v0, v4, v5

    new-array v4, v0, [B

    iput-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    iget-object v4, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 13

    const/4 v12, 0x5

    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v10}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/icu/impl/Trie2$Range;

    iget-boolean v10, v7, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v11, 0x3

    aget v4, v10, v11

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->mirrors:[I

    aget v10, v10, v1

    invoke-static {v10}, Landroid/icu/impl/UBiDiProps;->getMirrorCodePoint(I)I

    move-result v0

    add-int/lit8 v10, v0, 0x1

    invoke-virtual {p1, v0, v10}, Landroid/icu/text/UnicodeSet;->add(II)Landroid/icu/text/UnicodeSet;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v10, v7, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v10}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0

    :cond_2
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v11, 0x4

    aget v8, v10, v11

    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    aget v5, v10, v12

    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    :goto_2
    sub-int v4, v5, v8

    const/4 v6, 0x0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v4, :cond_4

    aget-byte v2, v3, v1

    if-eq v2, v6, :cond_3

    invoke-virtual {p1, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    move v6, v2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    if-eqz v6, :cond_5

    invoke-virtual {p1, v5}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_5
    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    aget v10, v10, v12

    if-ne v5, v10, :cond_6

    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v11, 0x6

    aget v8, v10, v11

    iget-object v10, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v11, 0x7

    aget v5, v10, v11

    iget-object v3, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    goto :goto_2

    :cond_6
    return-void
.end method

.method public final getClass(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UBiDiProps;->getClassFromProps(I)I

    move-result v0

    return v0
.end method

.method public final getJoiningGroup(I)I
    .locals 4

    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x4

    aget v1, v2, v3

    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x5

    aget v0, v2, v3

    if-gt v1, p1, :cond_0

    if-ge p1, v0, :cond_0

    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray:[B

    sub-int v3, p1, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    return v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x6

    aget v1, v2, v3

    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/4 v3, 0x7

    aget v0, v2, v3

    if-gt v1, p1, :cond_1

    if-ge p1, v0, :cond_1

    iget-object v2, p0, Landroid/icu/impl/UBiDiProps;->jgArray2:[B

    sub-int v3, p1, v1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public final getJoiningType(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0xe0

    shr-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public final getMaxValue(I)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->indexes:[I

    const/16 v2, 0xf

    aget v0, v1, v2

    sparse-switch p1, :sswitch_data_0

    const/4 v1, -0x1

    return v1

    :sswitch_0
    and-int/lit8 v1, v0, 0x1f

    return v1

    :sswitch_1
    const/high16 v1, 0xff0000

    and-int/2addr v1, v0

    shr-int/lit8 v1, v1, 0x10

    return v1

    :sswitch_2
    and-int/lit16 v1, v0, 0xe0

    shr-int/lit8 v1, v1, 0x5

    return v1

    :sswitch_3
    and-int/lit16 v1, v0, 0x300

    shr-int/lit8 v1, v1, 0x8

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x1006 -> :sswitch_1
        0x1007 -> :sswitch_2
        0x1015 -> :sswitch_3
    .end sparse-switch
.end method

.method public final getMirror(I)I
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    move-result v1

    return v1
.end method

.method public final getPairedBracket(I)I
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v1, v0, 0x300

    if-nez v1, :cond_0

    return p1

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/UBiDiProps;->getMirror(II)I

    move-result v1

    return v1
.end method

.method public final getPairedBracketType(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final isBidiControl(I)Z
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final isJoinControl(I)Z
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method

.method public final isMirrored(I)Z
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/UBiDiProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v0, v1}, Landroid/icu/impl/UBiDiProps;->getFlagFromProps(II)Z

    move-result v0

    return v0
.end method
