.class Landroid/icu/text/CharsetRecog_sbcs$NGramParser;
.super Ljava/lang/Object;
.source "CharsetRecog_sbcs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/CharsetRecog_sbcs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NGramParser"
.end annotation


# static fields
.field private static final N_GRAM_MASK:I = 0xffffff


# instance fields
.field protected byteIndex:I

.field protected byteMap:[B

.field private hitCount:I

.field private ngram:I

.field private ngramCount:I

.field private ngramList:[I

.field protected spaceChar:B


# direct methods
.method public constructor <init>([I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    iput-object p1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    iput-object p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    return-void
.end method

.method private lookup(I)V
    .locals 1

    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    iget-object v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramList:[I

    invoke-static {v0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->search([II)I

    move-result v0

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    :cond_0
    return-void
.end method

.method private nextByte(Landroid/icu/text/CharsetDetector;)I
    .locals 3

    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    iget v1, p1, Landroid/icu/text/CharsetDetector;->fInputLen:I

    if-lt v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v0, p1, Landroid/icu/text/CharsetDetector;->fInputBytes:[B

    iget v1, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteIndex:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private static search([II)I
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    aget v1, p0, v1

    if-gt v1, p1, :cond_0

    const/16 v0, 0x20

    :cond_0
    add-int/lit8 v1, v0, 0x10

    aget v1, p0, v1

    if-gt v1, p1, :cond_1

    add-int/lit8 v0, v0, 0x10

    :cond_1
    add-int/lit8 v1, v0, 0x8

    aget v1, p0, v1

    if-gt v1, p1, :cond_2

    add-int/lit8 v0, v0, 0x8

    :cond_2
    add-int/lit8 v1, v0, 0x4

    aget v1, p0, v1

    if-gt v1, p1, :cond_3

    add-int/lit8 v0, v0, 0x4

    :cond_3
    add-int/lit8 v1, v0, 0x2

    aget v1, p0, v1

    if-gt v1, p1, :cond_4

    add-int/lit8 v0, v0, 0x2

    :cond_4
    add-int/lit8 v1, v0, 0x1

    aget v1, p0, v1

    if-gt v1, p1, :cond_5

    add-int/lit8 v0, v0, 0x1

    :cond_5
    aget v1, p0, v0

    if-le v1, p1, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    if-ltz v0, :cond_7

    aget v1, p0, v0

    if-eq v1, p1, :cond_8

    :cond_7
    const/4 v1, -0x1

    return v1

    :cond_8
    return v0
.end method


# virtual methods
.method protected addByte(I)V
    .locals 2

    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    add-int/2addr v0, v1

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    iget v0, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngram:I

    invoke-direct {p0, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->lookup(I)V

    return-void
.end method

.method public parse(Landroid/icu/text/CharsetDetector;)I
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parse(Landroid/icu/text/CharsetDetector;B)I

    move-result v0

    return v0
.end method

.method public parse(Landroid/icu/text/CharsetDetector;B)I
    .locals 6

    iput-byte p2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-virtual {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->parseCharacters(Landroid/icu/text/CharsetDetector;)V

    iget-byte v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    iget v2, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->hitCount:I

    int-to-double v2, v2

    iget v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->ngramCount:I

    int-to-double v4, v4

    div-double v0, v2, v4

    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    const/16 v2, 0x62

    return v2

    :cond_0
    const-wide v2, 0x4072c00000000000L    # 300.0

    mul-double/2addr v2, v0

    double-to-int v2, v2

    return v2
.end method

.method protected parseCharacters(Landroid/icu/text/CharsetDetector;)V
    .locals 5

    const/4 v3, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->nextByte(Landroid/icu/text/CharsetDetector;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->byteMap:[B

    aget-byte v2, v4, v0

    if-eqz v2, :cond_0

    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v4, :cond_2

    :goto_1
    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->addByte(I)V

    :cond_1
    iget-byte v4, p0, Landroid/icu/text/CharsetRecog_sbcs$NGramParser;->spaceChar:B

    if-ne v2, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    return-void
.end method
