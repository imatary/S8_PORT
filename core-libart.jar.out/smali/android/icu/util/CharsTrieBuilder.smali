.class public final Landroid/icu/util/CharsTrieBuilder;
.super Landroid/icu/util/StringTrieBuilder;
.source "CharsTrieBuilder.java"


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private chars:[C

.field private charsLength:I

.field private final intUnits:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/util/CharsTrieBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/util/CharsTrieBuilder;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/icu/util/StringTrieBuilder;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    return-void
.end method

.method private buildChars(Landroid/icu/util/StringTrieBuilder$Option;)V
    .locals 1

    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    if-nez v0, :cond_0

    const/16 v0, 0x400

    new-array v0, v0, [C

    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/StringTrieBuilder;->buildImpl(Landroid/icu/util/StringTrieBuilder$Option;)V

    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v2, v2

    if-le p1, v2, :cond_1

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v0, v2

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_0

    new-array v1, v0, [C

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v3, v3

    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v3, v4

    array-length v4, v1

    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v4, v5

    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy([CI[CII)V

    iput-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    :cond_1
    return-void
.end method

.method private write([CI)I
    .locals 4

    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    add-int v0, v1, p2

    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {p1, v3, v1, v2, p2}, Ljava/lang/System;->arraycopy([CI[CII)V

    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return v1
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;I)Landroid/icu/util/CharsTrieBuilder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/icu/util/StringTrieBuilder;->addImpl(Ljava/lang/CharSequence;I)V

    return-object p0
.end method

.method public build(Landroid/icu/util/StringTrieBuilder$Option;)Landroid/icu/util/CharsTrie;
    .locals 3

    new-instance v0, Landroid/icu/util/CharsTrie;

    invoke-virtual {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    return-object v0
.end method

.method public buildCharSequence(Landroid/icu/util/StringTrieBuilder$Option;)Ljava/lang/CharSequence;
    .locals 3

    invoke-direct {p0, p1}, Landroid/icu/util/CharsTrieBuilder;->buildChars(Landroid/icu/util/StringTrieBuilder$Option;)V

    iget-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v1, v1

    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    invoke-static {v0, v1, v2}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public clear()Landroid/icu/util/CharsTrieBuilder;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/util/StringTrieBuilder;->clearImpl()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return-object p0
.end method

.method protected getMaxBranchLinearSubNodeLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x5

    return v0
.end method

.method protected getMaxLinearMatchLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x10

    return v0
.end method

.method protected getMinLinearMatch()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v0, 0x30

    return v0
.end method

.method protected matchNodesCanHaveValues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method protected write(I)I
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    add-int/lit8 v0, v1, 0x1

    invoke-direct {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    iput v0, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    iget-object v2, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v2, v2

    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int/2addr v2, v3

    int-to-char v3, p1

    aput-char v3, v1, v2

    iget v1, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return v1
.end method

.method protected write(II)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    add-int v2, v4, p2

    invoke-direct {p0, v2}, Landroid/icu/util/CharsTrieBuilder;->ensureCapacity(I)V

    iput v2, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    array-length v4, v4

    iget v5, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int v0, v4, v5

    move v1, v0

    move v3, p1

    :goto_0
    if-lez p2, :cond_0

    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->chars:[C

    add-int/lit8 v0, v1, 0x1

    iget-object v5, p0, Landroid/icu/util/StringTrieBuilder;->strings:Ljava/lang/StringBuilder;

    add-int/lit8 p1, v3, 0x1

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    aput-char v5, v4, v1

    add-int/lit8 p2, p2, -0x1

    move v1, v0

    move v3, p1

    goto :goto_0

    :cond_0
    iget v4, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    return v4
.end method

.method protected writeDeltaTo(I)I
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v3, p0, Landroid/icu/util/CharsTrieBuilder;->charsLength:I

    sub-int v0, v3, p1

    sget-boolean v3, Landroid/icu/util/CharsTrieBuilder;->-assertionsDisabled:Z

    if-nez v3, :cond_1

    if-ltz v0, :cond_0

    move v3, v4

    :goto_0
    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    const v3, 0xfbff

    if-gt v0, v3, :cond_2

    invoke-virtual {p0, v0}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    move-result v3

    return v3

    :cond_2
    const v3, 0x3feffff

    if-gt v0, v3, :cond_3

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v4, v0, 0x10

    const v6, 0xfc00

    add-int/2addr v4, v6

    int-to-char v4, v4

    aput-char v4, v3, v5

    const/4 v1, 0x1

    :goto_1
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    add-int/lit8 v2, v1, 0x1

    int-to-char v4, v0

    aput-char v4, v3, v1

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    invoke-direct {p0, v3, v2}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    move-result v3

    return v3

    :cond_3
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const v6, 0xffff

    aput-char v6, v3, v5

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v5, v0, 0x10

    int-to-char v5, v5

    aput-char v5, v3, v4

    const/4 v1, 0x2

    goto :goto_1
.end method

.method protected writeValueAndFinal(IZ)I
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const v1, 0x8000

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-ltz p1, :cond_1

    const/16 v3, 0x3fff

    if-gt p1, v3, :cond_1

    if-eqz p2, :cond_0

    :goto_0
    or-int/2addr v1, p1

    invoke-virtual {p0, v1}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    move-result v1

    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-ltz p1, :cond_2

    const v3, 0x3ffeffff

    if-le p1, v3, :cond_3

    :cond_2
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const/16 v4, 0x7fff

    aput-char v4, v3, v2

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v4, p1, 0x10

    int-to-char v4, v4

    aput-char v4, v3, v5

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    int-to-char v4, p1

    const/4 v5, 0x2

    aput-char v4, v3, v5

    const/4 v0, 0x3

    :goto_1
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    iget-object v4, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    aget-char v4, v4, v2

    if-eqz p2, :cond_4

    :goto_2
    or-int/2addr v1, v4

    int-to-char v1, v1

    aput-char v1, v3, v2

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    invoke-direct {p0, v1, v0}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    move-result v1

    return v1

    :cond_3
    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v4, p1, 0x10

    add-int/lit16 v4, v4, 0x4000

    int-to-char v4, v4

    aput-char v4, v3, v2

    iget-object v3, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    int-to-char v4, p1

    aput-char v4, v3, v5

    const/4 v0, 0x2

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method protected writeValueAndType(ZII)I
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0, p3}, Landroid/icu/util/CharsTrieBuilder;->write(I)I

    move-result v1

    return v1

    :cond_0
    if-ltz p2, :cond_1

    const v1, 0xfdffff

    if-le p2, v1, :cond_2

    :cond_1
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    const/16 v2, 0x7fc0

    aput-char v2, v1, v4

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v2, p2, 0x10

    int-to-char v2, v2

    aput-char v2, v1, v3

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    int-to-char v2, p2

    const/4 v3, 0x2

    aput-char v2, v1, v3

    const/4 v0, 0x3

    :goto_0
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    aget-char v2, v1, v4

    int-to-char v3, p3

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v1, v4

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    invoke-direct {p0, v1, v0}, Landroid/icu/util/CharsTrieBuilder;->write([CI)I

    move-result v1

    return v1

    :cond_2
    const/16 v1, 0xff

    if-gt p2, v1, :cond_3

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    add-int/lit8 v2, p2, 0x1

    shl-int/lit8 v2, v2, 0x6

    int-to-char v2, v2

    aput-char v2, v1, v4

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    shr-int/lit8 v2, p2, 0xa

    and-int/lit16 v2, v2, 0x7fc0

    add-int/lit16 v2, v2, 0x4040

    int-to-char v2, v2

    aput-char v2, v1, v4

    iget-object v1, p0, Landroid/icu/util/CharsTrieBuilder;->intUnits:[C

    int-to-char v2, p2

    aput-char v2, v1, v3

    const/4 v0, 0x2

    goto :goto_0
.end method
