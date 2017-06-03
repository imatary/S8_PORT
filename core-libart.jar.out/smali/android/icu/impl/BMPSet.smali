.class public final Landroid/icu/impl/BMPSet;
.super Ljava/lang/Object;
.source "BMPSet.java"


# static fields
.field static final synthetic -assertionsDisabled:Z

.field public static U16_SURROGATE_OFFSET:I


# instance fields
.field private bmpBlockBits:[I

.field private latin1Contains:[Z

.field private final list:[I

.field private list4kStarts:[I

.field private final listLength:I

.field private table7FF:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/BMPSet;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/BMPSet;->-assertionsDisabled:Z

    const v0, 0x35fdc00

    sput v0, Landroid/icu/impl/BMPSet;->U16_SURROGATE_OFFSET:I

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/icu/impl/BMPSet;[II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/icu/impl/BMPSet;->list:[I

    iput p3, p0, Landroid/icu/impl/BMPSet;->listLength:I

    iget-object v0, p1, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    iget-object v0, p1, Landroid/icu/impl/BMPSet;->table7FF:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    iget-object v0, p1, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    iget-object v0, p1, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 5

    const/16 v2, 0x40

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/impl/BMPSet;->list:[I

    iput p2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    const/16 v1, 0x100

    new-array v1, v1, [Z

    iput-object v1, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    new-array v1, v2, [I

    iput-object v1, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    new-array v1, v2, [I

    iput-object v1, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    const/16 v1, 0x12

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x800

    invoke-direct {p0, v3, v4, v2}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v2

    aput v2, v1, v4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    shl-int/lit8 v2, v0, 0xc

    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    iget v4, p0, Landroid/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v2, v3, v4}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    iget v2, p0, Landroid/icu/impl/BMPSet;->listLength:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x11

    aput v2, v1, v3

    invoke-direct {p0}, Landroid/icu/impl/BMPSet;->initBits()V

    return-void
.end method

.method private final containsSlow(III)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/icu/impl/BMPSet;->findCodePoint(III)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private findCodePoint(III)I
    .locals 3

    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    aget v1, v1, p2

    if-ge p1, v1, :cond_0

    return p2

    :cond_0
    if-ge p2, p3, :cond_1

    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, p3, -0x1

    aget v1, v1, v2

    if-lt p1, v1, :cond_3

    :cond_1
    return p3

    :cond_2
    iget-object v1, p0, Landroid/icu/impl/BMPSet;->list:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_4

    move p3, v0

    :cond_3
    :goto_0
    add-int v1, p2, p3

    ushr-int/lit8 v0, v1, 0x1

    if-ne v0, p2, :cond_2

    return p3

    :cond_4
    move p2, v0

    goto :goto_0
.end method

.method private initBits()V
    .locals 12

    const v11, 0x10001

    const/high16 v10, 0x10000

    const/16 v9, 0x100

    const/16 v7, 0x800

    const/4 v1, 0x0

    :cond_0
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    aget v4, v6, v1

    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v2, v6, :cond_8

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v0, v6, v2

    :goto_0
    if-lt v4, v9, :cond_9

    move v2, v1

    :goto_1
    if-ge v4, v7, :cond_1

    iget-object v8, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    if-gt v0, v7, :cond_b

    move v6, v0

    :goto_2
    invoke-static {v8, v4, v6}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    if-le v0, v7, :cond_c

    const/16 v4, 0x800

    :cond_1
    const/16 v3, 0x800

    :goto_3
    if-ge v4, v10, :cond_7

    if-le v0, v10, :cond_2

    const/high16 v0, 0x10000

    :cond_2
    if-ge v4, v3, :cond_3

    move v4, v3

    :cond_3
    if-ge v4, v0, :cond_6

    and-int/lit8 v6, v4, 0x3f

    if-eqz v6, :cond_4

    shr-int/lit8 v4, v4, 0x6

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v7, v4, 0x3f

    aget v8, v6, v7

    shr-int/lit8 v9, v4, 0x6

    shl-int v9, v11, v9

    or-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v6, v4, 0x1

    shl-int/lit8 v4, v6, 0x6

    move v3, v4

    :cond_4
    if-ge v4, v0, :cond_6

    and-int/lit8 v6, v0, -0x40

    if-ge v4, v6, :cond_5

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v7, v4, 0x6

    shr-int/lit8 v8, v0, 0x6

    invoke-static {v6, v7, v8}, Landroid/icu/impl/BMPSet;->set32x64Bits([III)V

    :cond_5
    and-int/lit8 v6, v0, 0x3f

    if-eqz v6, :cond_6

    shr-int/lit8 v0, v0, 0x6

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    and-int/lit8 v7, v0, 0x3f

    aget v8, v6, v7

    shr-int/lit8 v9, v0, 0x6

    shl-int v9, v11, v9

    or-int/2addr v8, v9

    aput v8, v6, v7

    add-int/lit8 v6, v0, 0x1

    shl-int/lit8 v0, v6, 0x6

    move v3, v0

    :cond_6
    if-ne v0, v10, :cond_e

    :cond_7
    return-void

    :cond_8
    const/high16 v0, 0x110000

    move v1, v2

    goto :goto_0

    :cond_9
    :goto_4
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    add-int/lit8 v5, v4, 0x1

    const/4 v8, 0x1

    aput-boolean v8, v6, v4

    if-ge v5, v0, :cond_a

    if-ge v5, v9, :cond_a

    move v4, v5

    goto :goto_4

    :cond_a
    if-le v0, v9, :cond_0

    move v2, v1

    move v4, v5

    goto :goto_1

    :cond_b
    move v6, v7

    goto :goto_2

    :cond_c
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v4, v6, v2

    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v1, v6, :cond_d

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v6, v1

    move v1, v2

    :goto_5
    move v2, v1

    goto/16 :goto_1

    :cond_d
    const/high16 v0, 0x110000

    goto :goto_5

    :cond_e
    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v1, v2, 0x1

    aget v4, v6, v2

    iget v6, p0, Landroid/icu/impl/BMPSet;->listLength:I

    if-ge v1, v6, :cond_f

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list:[I

    add-int/lit8 v2, v1, 0x1

    aget v0, v6, v1

    move v1, v2

    :goto_6
    move v2, v1

    goto/16 :goto_3

    :cond_f
    const/high16 v0, 0x110000

    goto :goto_6
.end method

.method private static set32x64Bits([III)V
    .locals 10

    const/4 v6, 0x0

    const/16 v9, 0x40

    const/4 v7, 0x1

    sget-boolean v8, Landroid/icu/impl/BMPSet;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    array-length v8, p0

    if-ne v9, v8, :cond_0

    move v6, v7

    :cond_0
    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    :cond_1
    shr-int/lit8 v1, p1, 0x6

    and-int/lit8 v4, p1, 0x3f

    shl-int v0, v7, v1

    add-int/lit8 v6, p1, 0x1

    if-ne v6, p2, :cond_2

    aget v6, p0, v4

    or-int/2addr v6, v0

    aput v6, p0, v4

    return-void

    :cond_2
    shr-int/lit8 v2, p2, 0x6

    and-int/lit8 v3, p2, 0x3f

    if-ne v1, v2, :cond_3

    :goto_0
    move v5, v4

    if-ge v5, v3, :cond_8

    add-int/lit8 v4, v5, 0x1

    aget v6, p0, v5

    or-int/2addr v6, v0

    aput v6, p0, v5

    goto :goto_0

    :cond_3
    if-lez v4, :cond_5

    :goto_1
    add-int/lit8 v5, v4, 0x1

    aget v6, p0, v4

    or-int/2addr v6, v0

    aput v6, p0, v4

    if-ge v5, v9, :cond_4

    move v4, v5

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    move v4, v5

    :cond_5
    if-ge v1, v2, :cond_7

    shl-int v6, v7, v1

    add-int/lit8 v6, v6, -0x1

    not-int v0, v6

    const/16 v6, 0x20

    if-ge v2, v6, :cond_6

    shl-int v6, v7, v2

    add-int/lit8 v6, v6, -0x1

    and-int/2addr v0, v6

    :cond_6
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v9, :cond_7

    aget v6, p0, v4

    or-int/2addr v6, v0

    aput v6, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    shl-int v0, v7, v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_9

    aget v6, p0, v4

    or-int/2addr v6, v0

    aput v6, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v4, v5

    :cond_9
    return-void
.end method


# virtual methods
.method public contains(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0xff

    if-gt p1, v4, :cond_0

    iget-object v2, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v2, v2, p1

    return v2

    :cond_0
    const/16 v4, 0x7ff

    if-gt p1, v4, :cond_2

    iget-object v4, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v5, p1, 0x3f

    aget v4, v4, v5

    shr-int/lit8 v5, p1, 0x6

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    const v4, 0xd800

    if-lt p1, v4, :cond_3

    const v4, 0xe000

    if-lt p1, v4, :cond_6

    const v4, 0xffff

    if-gt p1, v4, :cond_6

    :cond_3
    shr-int/lit8 v0, p1, 0xc

    iget-object v4, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v5, p1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget v4, v4, v5

    shr-int/2addr v4, v0

    const v5, 0x10001

    and-int v1, v4, v5

    if-gt v1, v2, :cond_5

    if-eqz v1, :cond_4

    :goto_1
    return v2

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-direct {p0, p1, v2, v3}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v2

    return v2

    :cond_6
    const v2, 0x10ffff

    if-gt p1, v2, :cond_7

    iget-object v2, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    iget-object v3, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v4, 0x11

    aget v3, v3, v4

    invoke-direct {p0, p1, v2, v3}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v2

    return v2

    :cond_7
    return v3
.end method

.method public final span(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;Landroid/icu/util/OutputInt;)I
    .locals 13

    move v3, p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    sget-object v10, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    move-object/from16 v0, p3

    if-eq v10, v0, :cond_a

    :goto_0
    if-ge v3, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v10, 0xff

    if-gt v1, v10, :cond_2

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v10, v10, v1

    if-nez v10, :cond_3

    :cond_0
    :goto_1
    if-eqz p4, :cond_1

    sub-int v7, v3, p2

    sub-int v10, v7, v6

    move-object/from16 v0, p4

    iput v10, v0, Landroid/icu/util/OutputInt;->value:I

    :cond_1
    return v3

    :cond_2
    const/16 v10, 0x7ff

    if-gt v1, v10, :cond_4

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v11, v1, 0x3f

    aget v10, v10, v11

    shr-int/lit8 v11, v1, 0x6

    const/4 v12, 0x1

    shl-int v11, v12, v11

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    const v10, 0xd800

    if-lt v1, v10, :cond_5

    const v10, 0xdc00

    if-lt v1, v10, :cond_6

    :cond_5
    shr-int/lit8 v4, v1, 0xc

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v11, v1, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget v10, v10, v11

    shr-int/2addr v10, v4

    const v11, 0x10001

    and-int v9, v10, v11

    const/4 v10, 0x1

    if-gt v9, v10, :cond_7

    if-nez v9, :cond_3

    goto :goto_1

    :cond_6
    add-int/lit8 v10, v3, 0x1

    if-eq v10, v5, :cond_5

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v10, 0xdc00

    if-lt v2, v10, :cond_5

    const v10, 0xe000

    if-ge v2, v10, :cond_5

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v11, 0x10

    aget v10, v10, v11

    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v12, 0x11

    aget v11, v11, v12

    invoke-direct {p0, v8, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v10

    if-eqz v10, :cond_0

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v10, v4

    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v12, v4, 0x1

    aget v11, v11, v12

    invoke-direct {p0, v1, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    :cond_a
    if-ge v3, v5, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v10, 0xff

    if-gt v1, v10, :cond_b

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v10, v10, v1

    if-eqz v10, :cond_9

    goto/16 :goto_1

    :cond_b
    const/16 v10, 0x7ff

    if-gt v1, v10, :cond_c

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v11, v1, 0x3f

    aget v10, v10, v11

    shr-int/lit8 v11, v1, 0x6

    const/4 v12, 0x1

    shl-int v11, v12, v11

    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    goto/16 :goto_1

    :cond_c
    const v10, 0xd800

    if-lt v1, v10, :cond_d

    const v10, 0xdc00

    if-lt v1, v10, :cond_e

    :cond_d
    shr-int/lit8 v4, v1, 0xc

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v11, v1, 0x6

    and-int/lit8 v11, v11, 0x3f

    aget v10, v10, v11

    shr-int/2addr v10, v4

    const v11, 0x10001

    and-int v9, v10, v11

    const/4 v10, 0x1

    if-gt v9, v10, :cond_f

    if-eqz v9, :cond_9

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v10, v3, 0x1

    if-eq v10, v5, :cond_d

    add-int/lit8 v10, v3, 0x1

    invoke-interface {p1, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const v10, 0xdc00

    if-lt v2, v10, :cond_d

    const v10, 0xe000

    if-ge v2, v10, :cond_d

    invoke-static {v1, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v8

    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v11, 0x10

    aget v10, v10, v11

    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v12, 0x11

    aget v11, v11, v12

    invoke-direct {p0, v8, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v10

    if-eqz v10, :cond_8

    goto/16 :goto_1

    :cond_f
    iget-object v10, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v10, v10, v4

    iget-object v11, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v12, v4, 0x1

    aget v11, v11, v12

    invoke-direct {p0, v1, v10, v11}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v10

    if-eqz v10, :cond_9

    goto/16 :goto_1
.end method

.method public final spanBack(Ljava/lang/CharSequence;ILandroid/icu/text/UnicodeSet$SpanCondition;)I
    .locals 8

    sget-object v5, Landroid/icu/text/UnicodeSet$SpanCondition;->NOT_CONTAINED:Landroid/icu/text/UnicodeSet$SpanCondition;

    if-eq v5, p3, :cond_8

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0xff

    if-gt v0, v5, :cond_2

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v5, v5, v0

    if-nez v5, :cond_3

    :cond_1
    :goto_0
    add-int/lit8 v5, p2, 0x1

    return v5

    :cond_2
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_4

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v6, v0, 0x3f

    aget v5, v5, v6

    shr-int/lit8 v6, v0, 0x6

    const/4 v7, 0x1

    shl-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_1

    :cond_3
    :goto_1
    if-nez p2, :cond_0

    const/4 v5, 0x0

    return v5

    :cond_4
    const v5, 0xd800

    if-lt v0, v5, :cond_5

    const v5, 0xdc00

    if-ge v0, v5, :cond_6

    :cond_5
    shr-int/lit8 v2, v0, 0xc

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    shr-int/2addr v5, v2

    const v6, 0x10001

    and-int v4, v5, v6

    const/4 v5, 0x1

    if-gt v4, v5, :cond_7

    if-nez v4, :cond_3

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_5

    add-int/lit8 v5, p2, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v5, 0xd800

    if-lt v1, v5, :cond_5

    const v5, 0xdc00

    if-ge v1, v5, :cond_5

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v6, 0x10

    aget v5, v5, v6

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v7, 0x11

    aget v6, v6, v7

    invoke-direct {p0, v3, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_7
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v5, v5, v2

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v0, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_0

    :cond_8
    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v5, 0xff

    if-gt v0, v5, :cond_a

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->latin1Contains:[Z

    aget-boolean v5, v5, v0

    if-nez v5, :cond_1

    :cond_9
    :goto_2
    if-nez p2, :cond_8

    const/4 v5, 0x0

    return v5

    :cond_a
    const/16 v5, 0x7ff

    if-gt v0, v5, :cond_b

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->table7FF:[I

    and-int/lit8 v6, v0, 0x3f

    aget v5, v5, v6

    shr-int/lit8 v6, v0, 0x6

    const/4 v7, 0x1

    shl-int v6, v7, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_9

    goto/16 :goto_0

    :cond_b
    const v5, 0xd800

    if-lt v0, v5, :cond_c

    const v5, 0xdc00

    if-ge v0, v5, :cond_d

    :cond_c
    shr-int/lit8 v2, v0, 0xc

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->bmpBlockBits:[I

    shr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget v5, v5, v6

    shr-int/2addr v5, v2

    const v6, 0x10001

    and-int v4, v5, v6

    const/4 v5, 0x1

    if-gt v4, v5, :cond_e

    if-eqz v4, :cond_9

    goto/16 :goto_0

    :cond_d
    if-eqz p2, :cond_c

    add-int/lit8 v5, p2, -0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const v5, 0xd800

    if-lt v1, v5, :cond_c

    const v5, 0xdc00

    if-ge v1, v5, :cond_c

    invoke-static {v1, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v6, 0x10

    aget v5, v5, v6

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    const/16 v7, 0x11

    aget v6, v6, v7

    invoke-direct {p0, v3, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_e
    iget-object v5, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    aget v5, v5, v2

    iget-object v6, p0, Landroid/icu/impl/BMPSet;->list4kStarts:[I

    add-int/lit8 v7, v2, 0x1

    aget v6, v6, v7

    invoke-direct {p0, v0, v5, v6}, Landroid/icu/impl/BMPSet;->containsSlow(III)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_0
.end method
