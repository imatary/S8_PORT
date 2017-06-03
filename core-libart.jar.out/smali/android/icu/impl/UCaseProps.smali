.class public final Landroid/icu/impl/UCaseProps;
.super Ljava/lang/Object;
.source "UCaseProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/UCaseProps$ContextIterator;,
        Landroid/icu/impl/UCaseProps$IsAcceptable;
    }
.end annotation


# static fields
.field private static final ABOVE:I = 0x40

.field private static final CLOSURE_MAX_LENGTH:I = 0xf

.field private static final DATA_FILE_NAME:Ljava/lang/String; = "ucase.icu"

.field private static final DATA_NAME:Ljava/lang/String; = "ucase"

.field private static final DATA_TYPE:Ljava/lang/String; = "icu"

.field private static final DELTA_SHIFT:I = 0x7

.field private static final DOT_MASK:I = 0x60

.field private static final EXCEPTION:I = 0x10

.field private static final EXC_CLOSURE:I = 0x6

.field private static final EXC_CONDITIONAL_FOLD:I = 0x8000

.field private static final EXC_CONDITIONAL_SPECIAL:I = 0x4000

.field private static final EXC_DOT_SHIFT:I = 0x7

.field private static final EXC_DOUBLE_SLOTS:I = 0x100

.field private static final EXC_FOLD:I = 0x1

.field private static final EXC_FULL_MAPPINGS:I = 0x7

.field private static final EXC_LOWER:I = 0x0

.field private static final EXC_SHIFT:I = 0x5

.field private static final EXC_TITLE:I = 0x3

.field private static final EXC_UPPER:I = 0x2

.field private static final FMT:I = 0x63415345

.field private static final FOLD_CASE_OPTIONS_MASK:I = 0xff

.field private static final FULL_LOWER:I = 0xf

.field public static final INSTANCE:Landroid/icu/impl/UCaseProps;

.field private static final IX_EXC_LENGTH:I = 0x3

.field private static final IX_TOP:I = 0x10

.field private static final IX_TRIE_SIZE:I = 0x2

.field private static final IX_UNFOLD_LENGTH:I = 0x4

.field private static final LOC_LITHUANIAN:I = 0x3

.field private static final LOC_ROOT:I = 0x1

.field private static final LOC_TURKISH:I = 0x2

.field private static final LOC_UNKNOWN:I = 0x0

.field public static final LOWER:I = 0x1

.field public static final MAX_STRING_LENGTH:I = 0x1f

.field public static final NONE:I = 0x0

.field private static final OTHER_ACCENT:I = 0x60

.field private static final SENSITIVE:I = 0x8

.field private static final SOFT_DOTTED:I = 0x20

.field public static final TITLE:I = 0x3

.field public static final TYPE_MASK:I = 0x3

.field private static final UNFOLD_ROWS:I = 0x0

.field private static final UNFOLD_ROW_WIDTH:I = 0x1

.field private static final UNFOLD_STRING_WIDTH:I = 0x2

.field public static final UPPER:I = 0x2

.field public static final dummyStringBuilder:Ljava/lang/StringBuilder;

.field private static final flagsOffset:[B

.field private static final iDot:Ljava/lang/String; = "i\u0307"

.field private static final iDotAcute:Ljava/lang/String; = "i\u0307\u0301"

.field private static final iDotGrave:Ljava/lang/String; = "i\u0307\u0300"

.field private static final iDotTilde:Ljava/lang/String; = "i\u0307\u0303"

.field private static final iOgonekDot:Ljava/lang/String; = "\u012f\u0307"

.field private static final jDot:Ljava/lang/String; = "j\u0307"

.field private static final rootLocCache:[I


# instance fields
.field private exceptions:[C

.field private indexes:[I

.field private trie:Landroid/icu/impl/Trie2_16;

.field private unfold:[C


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/16 v1, 0x100

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    sput-object v1, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    new-array v1, v3, [I

    const/4 v2, 0x0

    aput v3, v1, v2

    sput-object v1, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v1, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Landroid/icu/impl/UCaseProps;

    invoke-direct {v1}, Landroid/icu/impl/UCaseProps;-><init>()V

    sput-object v1, Landroid/icu/impl/UCaseProps;->INSTANCE:Landroid/icu/impl/UCaseProps;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x1t
        0x2t
        0x1t
        0x2t
        0x2t
        0x3t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x1t
        0x2t
        0x2t
        0x3t
        0x2t
        0x3t
        0x3t
        0x4t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x2t
        0x3t
        0x3t
        0x4t
        0x3t
        0x4t
        0x4t
        0x5t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x3t
        0x4t
        0x4t
        0x5t
        0x4t
        0x5t
        0x5t
        0x6t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x4t
        0x5t
        0x5t
        0x6t
        0x5t
        0x6t
        0x6t
        0x7t
        0x5t
        0x6t
        0x6t
        0x7t
        0x6t
        0x7t
        0x7t
        0x8t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v1, "ucase.icu"

    invoke-static {v1}, Landroid/icu/impl/ICUBinary;->getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/impl/UCaseProps;->readData(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static final getCaseLocale(Landroid/icu/util/ULocale;[I)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    aget v1, p1, v3

    if-eqz v1, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "tr"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "tur"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "az"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "aze"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    const/4 v1, 0x2

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    aput v1, p1, v3

    :cond_3
    return v1

    :cond_4
    const-string/jumbo v2, "lt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "lit"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_5
    const/4 v1, 0x3

    goto :goto_0
.end method

.method private static final getDelta(I)I
    .locals 1

    int-to-short v0, p0

    shr-int/lit8 v0, v0, 0x7

    return v0
.end method

.method private static final getExceptionsOffset(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x5

    return v0
.end method

.method private final getSlotValue(III)I
    .locals 4

    and-int/lit16 v2, p1, 0x100

    if-nez v2, :cond_0

    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v2

    add-int/2addr p3, v2

    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    aget-char v1, v2, p3

    :goto_0
    return v1

    :cond_0
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p3, v2

    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v0, p3, 0x1

    aget-char v1, v2, p3

    shl-int/lit8 v2, v1, 0x10

    iget-object v3, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    aget-char v3, v3, v0

    or-int v1, v2, v3

    move p3, v0

    goto :goto_0
.end method

.method private final getSlotValueAndOffset(III)J
    .locals 8

    and-int/lit16 v1, p1, 0x100

    if-nez v1, :cond_0

    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v1

    add-int/2addr p3, v1

    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    aget-char v1, v1, p3

    int-to-long v2, v1

    :goto_0
    int-to-long v4, p3

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v4, v2

    return-wide v4

    :cond_0
    invoke-static {p1, p2}, Landroid/icu/impl/UCaseProps;->slotOffset(II)B

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr p3, v1

    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v0, p3, 0x1

    aget-char v1, v1, p3

    int-to-long v2, v1

    const/16 v1, 0x10

    shl-long v4, v2, v1

    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    aget-char v1, v1, v0

    int-to-long v6, v1

    or-long v2, v4, v6

    move p3, v0

    goto :goto_0
.end method

.method private static final getTypeAndIgnorableFromProps(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method private static final getTypeFromProps(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x3

    return v0
.end method

.method private static final hasSlot(II)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private final isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-interface {p1, p2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v1

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_1

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    return v3

    :cond_3
    return v3
.end method

.method private final isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-interface {p1, v4}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v2, 0x307

    if-ne v0, v2, :cond_2

    return v4

    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    return v3

    :cond_3
    return v3
.end method

.method private final isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    invoke-interface {p1, v4}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    return v4

    :cond_2
    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    return v3

    :cond_3
    return v3
.end method

.method private final isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    return v3

    :cond_3
    return v3
.end method

.method private final isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    return v3

    :cond_0
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/icu/impl/UCaseProps$ContextIterator;->reset(I)V

    :cond_1
    invoke-interface {p1}, Landroid/icu/impl/UCaseProps$ContextIterator;->next()I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v2, 0x49

    if-ne v0, v2, :cond_2

    const/4 v2, 0x1

    return v2

    :cond_2
    invoke-virtual {p0, v0}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v1

    const/16 v2, 0x60

    if-eq v1, v2, :cond_1

    return v3

    :cond_3
    return v3
.end method

.method private static final propsHasException(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private final readData(Ljava/nio/ByteBuffer;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    new-instance v4, Landroid/icu/impl/UCaseProps$IsAcceptable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/icu/impl/UCaseProps$IsAcceptable;-><init>(Landroid/icu/impl/UCaseProps$IsAcceptable;)V

    const v5, 0x63415345

    invoke-static {p1, v5, v4}, Landroid/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILandroid/icu/impl/ICUBinary$Authenticate;)I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    const/16 v4, 0x10

    if-ge v0, v4, :cond_0

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "indexes[0] too small in ucase.icu"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    new-array v4, v0, [I

    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    aput v0, v4, v6

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    aput v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/icu/impl/Trie2_16;->createFromSerialized(Ljava/nio/ByteBuffer;)Landroid/icu/impl/Trie2_16;

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v5, 0x2

    aget v1, v4, v5

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v4}, Landroid/icu/impl/Trie2_16;->getSerializedLength()I

    move-result v3

    if-le v3, v1, :cond_2

    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "ucase.icu: not enough bytes for the trie"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    sub-int v4, v1, v3

    invoke-static {p1, v4}, Landroid/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v5, 0x3

    aget v0, v4, v5

    if-lez v0, :cond_3

    invoke-static {p1, v0, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    :cond_3
    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->indexes:[I

    const/4 v5, 0x4

    aget v0, v4, v5

    if-lez v0, :cond_4

    invoke-static {p1, v0, v6}, Landroid/icu/impl/ICUBinary;->getChars(Ljava/nio/ByteBuffer;II)[C

    move-result-object v4

    iput-object v4, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    :cond_4
    return-void
.end method

.method private static final slotOffset(II)B
    .locals 2

    sget-object v0, Landroid/icu/impl/UCaseProps;->flagsOffset:[B

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    aget-byte v0, v0, v1

    return v0
.end method

.method private final strcmpMax(Ljava/lang/String;II)I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr p3, v4

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    add-int/lit8 v5, p2, 0x1

    aget-char v1, v6, p2

    if-nez v1, :cond_0

    const/4 v6, 0x1

    return v6

    :cond_0
    sub-int/2addr v0, v1

    if-eqz v0, :cond_1

    return v0

    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-lez v4, :cond_2

    move v2, v3

    move p2, v5

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    iget-object v6, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    aget-char v6, v6, v5

    if-nez v6, :cond_4

    :cond_3
    return v7

    :cond_4
    neg-int v6, p3

    return v6
.end method

.method private final toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[IZ)I
    .locals 16

    move/from16 v10, p1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v9

    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v11

    if-nez v11, :cond_2

    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v11

    const/4 v14, 0x1

    if-ne v11, v14, :cond_0

    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v11

    add-int v10, p1, v11

    :cond_0
    :goto_0
    move/from16 v0, p1

    if-ne v10, v0, :cond_1

    not-int v10, v10

    :cond_1
    return v10

    :cond_2
    invoke-static {v9}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v3, v2, 0x1

    aget-char v5, v11, v2

    move v4, v3

    and-int/lit16 v11, v5, 0x4000

    if-eqz v11, :cond_6

    invoke-static/range {p4 .. p5}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;[I)I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_3

    const/16 v11, 0x69

    move/from16 v0, p1

    if-ne v0, v11, :cond_3

    const/16 v11, 0x130

    return v11

    :cond_3
    const/4 v11, 0x3

    if-ne v8, v11, :cond_4

    const/16 v11, 0x307

    move/from16 v0, p1

    if-ne v0, v11, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/icu/impl/UCaseProps;->isPrecededBySoftDotted(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x0

    return v11

    :cond_4
    move v2, v3

    :cond_5
    :goto_1
    if-nez p6, :cond_8

    const/4 v11, 0x3

    invoke-static {v5, v11}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v11

    if-eqz v11, :cond_8

    const/4 v7, 0x3

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v4}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v10

    goto :goto_0

    :cond_6
    const/4 v11, 0x7

    invoke-static {v5, v11}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v11

    if-eqz v11, :cond_a

    const/4 v11, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v3}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v12

    long-to-int v11, v12

    const v14, 0xffff

    and-int v6, v11, v14

    const/16 v11, 0x20

    shr-long v14, v12, v11

    long-to-int v11, v14

    add-int/lit8 v2, v11, 0x1

    and-int/lit8 v11, v6, 0xf

    add-int/2addr v2, v11

    shr-int/lit8 v6, v6, 0x4

    and-int/lit8 v11, v6, 0xf

    add-int/2addr v2, v11

    shr-int/lit8 v6, v6, 0x4

    if-eqz p6, :cond_7

    and-int/lit8 v6, v6, 0xf

    :goto_3
    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v2, v6}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return v6

    :cond_7
    and-int/lit8 v11, v6, 0xf

    add-int/2addr v2, v11

    shr-int/lit8 v11, v6, 0x4

    and-int/lit8 v6, v11, 0xf

    goto :goto_3

    :cond_8
    const/4 v11, 0x2

    invoke-static {v5, v11}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v11

    if-eqz v11, :cond_9

    const/4 v7, 0x2

    goto :goto_2

    :cond_9
    move/from16 v0, p1

    not-int v11, v0

    return v11

    :cond_a
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public final addCaseClosure(ILandroid/icu/text/UnicodeSet;)V
    .locals 18

    sparse-switch p1, :sswitch_data_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v12

    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v13

    if-nez v13, :cond_1

    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v13

    if-eqz v13, :cond_0

    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v4

    if-eqz v4, :cond_0

    add-int v13, p1, v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_0
    return-void

    :sswitch_0
    const/16 v13, 0x69

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void

    :sswitch_1
    const/16 v13, 0x49

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    return-void

    :sswitch_2
    const-string/jumbo v13, "i\u0307"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    return-void

    :sswitch_3
    return-void

    :cond_1
    invoke-static {v12}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v6, v5, 0x1

    aget-char v8, v13, v5

    move v7, v6

    const/4 v10, 0x0

    move v5, v6

    :goto_0
    const/4 v13, 0x3

    if-gt v10, v13, :cond_3

    invoke-static {v8, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v13

    if-eqz v13, :cond_2

    move v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v10, v7}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    const/4 v13, 0x6

    invoke-static {v8, v13}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v13

    if-eqz v13, :cond_6

    move v5, v7

    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v7}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v14

    long-to-int v13, v14

    and-int/lit8 v2, v13, 0xf

    const/16 v13, 0x20

    shr-long v16, v14, v13

    move-wide/from16 v0, v16

    long-to-int v13, v0

    add-int/lit8 v3, v13, 0x1

    :goto_1
    const/4 v13, 0x7

    invoke-static {v8, v13}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v13

    if-eqz v13, :cond_5

    move v5, v7

    const/4 v13, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v13, v7}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v14

    long-to-int v9, v14

    const/16 v13, 0x20

    shr-long v16, v14, v13

    move-wide/from16 v0, v16

    long-to-int v13, v0

    add-int/lit8 v5, v13, 0x1

    const v13, 0xffff

    and-int/2addr v9, v13

    and-int/lit8 v13, v9, 0xf

    add-int/2addr v5, v13

    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v11, v9, 0xf

    if-eqz v11, :cond_4

    new-instance v13, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-direct {v13, v0, v5, v11}, Ljava/lang/String;-><init>([CII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/icu/text/UnicodeSet;->add(Ljava/lang/CharSequence;)Landroid/icu/text/UnicodeSet;

    add-int/2addr v5, v11

    :cond_4
    shr-int/lit8 v9, v9, 0x4

    and-int/lit8 v13, v9, 0xf

    add-int/2addr v5, v13

    shr-int/lit8 v9, v9, 0x4

    add-int/2addr v5, v9

    move v3, v5

    :cond_5
    const/4 v10, 0x0

    :goto_2
    if-ge v10, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v13, v3, v0, v10}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result p1

    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    invoke-static/range {p1 .. p1}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v13

    add-int/2addr v10, v13

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
        0x69 -> :sswitch_1
        0x130 -> :sswitch_2
        0x131 -> :sswitch_3
    .end sparse-switch
.end method

.method public final addPropertyStarts(Landroid/icu/text/UnicodeSet;)V
    .locals 3

    iget-object v2, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v2}, Landroid/icu/impl/Trie2_16;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget-boolean v2, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v2, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-virtual {p1, v2}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    goto :goto_0
.end method

.method public final addStringCaseClosure(Ljava/lang/String;Landroid/icu/text/UnicodeSet;)Z
    .locals 12

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    if-eqz v10, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v10, 0x0

    return v10

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v10, 0x1

    if-gt v2, v10, :cond_2

    const/4 v10, 0x0

    return v10

    :cond_2
    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    const/4 v11, 0x0

    aget-char v8, v10, v11

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    const/4 v11, 0x1

    aget-char v7, v10, v11

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    const/4 v11, 0x2

    aget-char v9, v10, v11

    if-le v2, v9, :cond_3

    const/4 v10, 0x0

    return v10

    :cond_3
    const/4 v5, 0x0

    move v3, v8

    :goto_0
    if-ge v5, v3, :cond_7

    add-int v10, v5, v3

    div-int/lit8 v1, v10, 0x2

    add-int/lit8 v10, v1, 0x1

    mul-int v6, v10, v7

    invoke-direct {p0, p1, v6, v9}, Landroid/icu/impl/UCaseProps;->strcmpMax(Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_5

    move v1, v9

    :goto_1
    if-ge v1, v7, :cond_4

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    add-int v11, v6, v1

    aget-char v10, v10, v11

    if-eqz v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    iget-object v11, p0, Landroid/icu/impl/UCaseProps;->unfold:[C

    array-length v11, v11

    invoke-static {v10, v6, v11, v1}, Landroid/icu/text/UTF16;->charAt([CIII)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/UCaseProps;->addCaseClosure(ILandroid/icu/text/UnicodeSet;)V

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v10

    add-int/2addr v1, v10

    goto :goto_1

    :cond_4
    const/4 v10, 0x1

    return v10

    :cond_5
    if-gez v4, :cond_6

    move v3, v1

    goto :goto_0

    :cond_6
    add-int/lit8 v5, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v10, 0x0

    return v10
.end method

.method public final fold(II)I
    .locals 10

    const/16 v9, 0x130

    const/16 v8, 0x69

    const/16 v7, 0x49

    const/4 v6, 0x0

    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v5, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_0

    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v5

    add-int/2addr p1, v5

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v2, v5, v0

    const v5, 0x8000

    and-int/2addr v5, v2

    if-eqz v5, :cond_5

    and-int/lit16 v5, p2, 0xff

    if-nez v5, :cond_3

    if-ne p1, v7, :cond_2

    return v8

    :cond_2
    if-ne p1, v9, :cond_5

    return p1

    :cond_3
    if-ne p1, v7, :cond_4

    const/16 v5, 0x131

    return v5

    :cond_4
    if-ne p1, v9, :cond_5

    return v8

    :cond_5
    const/4 v5, 0x1

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    goto :goto_0

    :cond_6
    invoke-static {v2, v6}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    return p1
.end method

.method public final getDotType(I)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v1

    if-nez v1, :cond_0

    and-int/lit8 v1, v0, 0x60

    return v1

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v2

    aget-char v1, v1, v2

    shr-int/lit8 v1, v1, 0x7

    and-int/lit8 v1, v1, 0x60

    return v1
.end method

.method public final getType(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v0

    return v0
.end method

.method public final getTypeOrIgnorable(I)I
    .locals 1

    iget-object v0, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v0, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/impl/UCaseProps;->getTypeAndIgnorableFromProps(I)I

    move-result v0

    return v0
.end method

.method public final hasBinaryProperty(II)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch p2, :sswitch_data_0

    return v7

    :sswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v0

    if-ne v6, v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    move v0, v7

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_1

    :goto_1
    return v6

    :cond_1
    move v6, v7

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isSoftDotted(I)Z

    move-result v0

    return v0

    :sswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->isCaseSensitive(I)Z

    move-result v0

    return v0

    :sswitch_4
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getType(I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    return v6

    :cond_2
    move v6, v7

    goto :goto_2

    :sswitch_5
    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getTypeOrIgnorable(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    :goto_3
    return v6

    :cond_3
    move v6, v7

    goto :goto_3

    :sswitch_6
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v0

    if-ltz v0, :cond_4

    :goto_4
    return v6

    :cond_4
    move v6, v7

    goto :goto_4

    :sswitch_7
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v0

    if-ltz v0, :cond_5

    :goto_5
    return v6

    :cond_5
    move v6, v7

    goto :goto_5

    :sswitch_8
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v0

    if-ltz v0, :cond_6

    :goto_6
    return v6

    :cond_6
    move v6, v7

    goto :goto_6

    :sswitch_9
    sget-object v0, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v0

    if-gez v0, :cond_7

    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v0

    if-ltz v0, :cond_8

    :cond_7
    :goto_7
    return v6

    :cond_8
    sget-object v3, Landroid/icu/impl/UCaseProps;->dummyStringBuilder:Ljava/lang/StringBuilder;

    sget-object v4, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    sget-object v5, Landroid/icu/impl/UCaseProps;->rootLocCache:[I

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/UCaseProps;->toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I

    move-result v0

    if-gez v0, :cond_7

    move v6, v7

    goto :goto_7

    nop

    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1e -> :sswitch_1
        0x22 -> :sswitch_3
        0x31 -> :sswitch_4
        0x32 -> :sswitch_5
        0x33 -> :sswitch_6
        0x34 -> :sswitch_7
        0x35 -> :sswitch_8
        0x37 -> :sswitch_9
    .end sparse-switch
.end method

.method public final isCaseSensitive(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v1, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v1

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final isSoftDotted(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/icu/impl/UCaseProps;->getDotType(I)I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toFullFolding(ILjava/lang/StringBuilder;I)I
    .locals 12

    move v7, p1

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v10, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v10

    add-int v7, p1, v10

    :cond_0
    :goto_0
    if-ne v7, p1, :cond_1

    not-int v7, v7

    :cond_1
    return v7

    :cond_2
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v3, v10, v0

    move v2, v1

    const v10, 0x8000

    and-int/2addr v10, v3

    if-eqz v10, :cond_6

    and-int/lit16 v10, p3, 0xff

    if-nez v10, :cond_4

    const/16 v10, 0x49

    if-ne p1, v10, :cond_3

    const/16 v10, 0x69

    return v10

    :cond_3
    const/16 v10, 0x130

    if-ne p1, v10, :cond_7

    const-string/jumbo v10, "i\u0307"

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    return v10

    :cond_4
    const/16 v10, 0x49

    if-ne p1, v10, :cond_5

    const/16 v10, 0x131

    return v10

    :cond_5
    const/16 v10, 0x130

    if-ne p1, v10, :cond_7

    const/16 v10, 0x69

    return v10

    :cond_6
    const/4 v10, 0x7

    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x7

    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v8

    long-to-int v10, v8

    const v11, 0xffff

    and-int v4, v10, v11

    const/16 v10, 0x20

    shr-long v10, v8, v10

    long-to-int v10, v10

    add-int/lit8 v0, v10, 0x1

    and-int/lit8 v10, v4, 0xf

    add-int/2addr v0, v10

    shr-int/lit8 v10, v4, 0x4

    and-int/lit8 v4, v10, 0xf

    if-eqz v4, :cond_8

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    invoke-virtual {p2, v10, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return v4

    :cond_7
    move v0, v1

    :cond_8
    const/4 v10, 0x1

    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v10

    if-eqz v10, :cond_9

    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v3, v5, v2}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v7

    goto :goto_0

    :cond_9
    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v5, 0x0

    goto :goto_1

    :cond_a
    not-int v10, p1

    return v10
.end method

.method public final toFullLower(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I
    .locals 12

    move v7, p1

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v10, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v6

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_0

    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v10

    add-int v7, p1, v10

    :cond_0
    :goto_0
    if-ne v7, p1, :cond_1

    not-int v7, v7

    :cond_1
    return v7

    :cond_2
    invoke-static {v6}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v3, v10, v0

    move v2, v1

    and-int/lit16 v10, v3, 0x4000

    if-eqz v10, :cond_10

    invoke-static/range {p4 .. p5}, Landroid/icu/impl/UCaseProps;->getCaseLocale(Landroid/icu/util/ULocale;[I)I

    move-result v5

    const/4 v10, 0x3

    if-ne v5, v10, :cond_8

    const/16 v10, 0x49

    if-eq p1, v10, :cond_3

    const/16 v10, 0x4a

    if-ne p1, v10, :cond_6

    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isFollowedByMoreAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_4
    const/16 v10, 0xcc

    if-eq p1, v10, :cond_5

    const/16 v10, 0xcd

    if-ne p1, v10, :cond_7

    :cond_5
    sparse-switch p1, :sswitch_data_0

    const/4 v10, 0x0

    return v10

    :cond_6
    const/16 v10, 0x12e

    if-ne p1, v10, :cond_4

    goto :goto_1

    :cond_7
    const/16 v10, 0x128

    if-eq p1, v10, :cond_5

    :cond_8
    const/4 v10, 0x2

    if-ne v5, v10, :cond_9

    const/16 v10, 0x130

    if-ne p1, v10, :cond_9

    const/16 v10, 0x69

    return v10

    :sswitch_0
    const-string/jumbo v10, "i\u0307"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    return v10

    :sswitch_1
    const-string/jumbo v10, "j\u0307"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    return v10

    :sswitch_2
    const-string/jumbo v10, "\u012f\u0307"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    return v10

    :sswitch_3
    const-string/jumbo v10, "i\u0307\u0300"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    return v10

    :sswitch_4
    const-string/jumbo v10, "i\u0307\u0301"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    return v10

    :sswitch_5
    const-string/jumbo v10, "i\u0307\u0303"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x3

    return v10

    :cond_9
    const/4 v10, 0x2

    if-ne v5, v10, :cond_a

    const/16 v10, 0x307

    if-ne p1, v10, :cond_a

    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isPrecededBy_I(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    return v10

    :cond_a
    const/4 v10, 0x2

    if-ne v5, v10, :cond_b

    const/16 v10, 0x49

    if-ne p1, v10, :cond_b

    invoke-direct {p0, p2}, Landroid/icu/impl/UCaseProps;->isFollowedByDotAbove(Landroid/icu/impl/UCaseProps$ContextIterator;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_b
    const/16 v10, 0x130

    if-ne p1, v10, :cond_d

    const-string/jumbo v10, "i\u0307"

    invoke-virtual {p3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x2

    return v10

    :cond_c
    const/16 v10, 0x131

    return v10

    :cond_d
    const/16 v10, 0x3a3

    if-ne p1, v10, :cond_e

    const/4 v10, 0x1

    invoke-direct {p0, p2, v10}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_e
    const/4 v10, 0x0

    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result v7

    goto/16 :goto_0

    :cond_f
    const/4 v10, -0x1

    invoke-direct {p0, p2, v10}, Landroid/icu/impl/UCaseProps;->isFollowedByCasedLetter(Landroid/icu/impl/UCaseProps$ContextIterator;I)Z

    move-result v10

    if-eqz v10, :cond_e

    const/16 v10, 0x3c2

    return v10

    :cond_10
    const/4 v10, 0x7

    invoke-static {v3, v10}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v10

    if-eqz v10, :cond_e

    const/4 v10, 0x7

    invoke-direct {p0, v3, v10, v1}, Landroid/icu/impl/UCaseProps;->getSlotValueAndOffset(III)J

    move-result-wide v8

    long-to-int v10, v8

    and-int/lit8 v4, v10, 0xf

    if-eqz v4, :cond_e

    const/16 v10, 0x20

    shr-long v10, v8, v10

    long-to-int v10, v10

    add-int/lit8 v0, v10, 0x1

    iget-object v10, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    invoke-virtual {p3, v10, v0, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    return v4

    :sswitch_data_0
    .sparse-switch
        0x49 -> :sswitch_0
        0x4a -> :sswitch_1
        0xcc -> :sswitch_3
        0xcd -> :sswitch_4
        0x128 -> :sswitch_5
        0x12e -> :sswitch_2
    .end sparse-switch
.end method

.method public final toFullTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[IZ)I

    move-result v0

    return v0
.end method

.method public final toFullUpper(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[I)I
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/icu/impl/UCaseProps;->toUpperOrTitle(ILandroid/icu/impl/UCaseProps$ContextIterator;Ljava/lang/StringBuilder;Landroid/icu/util/ULocale;[IZ)I

    move-result v0

    return v0
.end method

.method public final tolower(I)I
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_0

    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v4

    add-int/2addr p1, v4

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v2, v4, v0

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, v5, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    goto :goto_0
.end method

.method public final totitle(I)I
    .locals 7

    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v5, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v4

    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v5

    add-int/2addr p1, v5

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {v4}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    iget-object v5, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v2, v5, v0

    const/4 v5, 0x3

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x3

    :goto_1
    invoke-direct {p0, v2, v3, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_3
    return p1
.end method

.method public final toupper(I)I
    .locals 6

    const/4 v5, 0x2

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->trie:Landroid/icu/impl/Trie2_16;

    invoke-virtual {v4, p1}, Landroid/icu/impl/Trie2_16;->get(I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->propsHasException(I)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getTypeFromProps(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getDelta(I)I

    move-result v4

    add-int/2addr p1, v4

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-static {v3}, Landroid/icu/impl/UCaseProps;->getExceptionsOffset(I)I

    move-result v0

    iget-object v4, p0, Landroid/icu/impl/UCaseProps;->exceptions:[C

    add-int/lit8 v1, v0, 0x1

    aget-char v2, v4, v0

    invoke-static {v2, v5}, Landroid/icu/impl/UCaseProps;->hasSlot(II)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2, v5, v1}, Landroid/icu/impl/UCaseProps;->getSlotValue(III)I

    move-result p1

    goto :goto_0
.end method
