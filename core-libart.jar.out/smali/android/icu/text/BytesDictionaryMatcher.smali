.class Landroid/icu/text/BytesDictionaryMatcher;
.super Landroid/icu/text/DictionaryMatcher;
.source "BytesDictionaryMatcher.java"


# instance fields
.field private final characters:[B

.field private final transform:I


# direct methods
.method public constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Landroid/icu/text/DictionaryMatcher;-><init>()V

    iput-object p1, p0, Landroid/icu/text/BytesDictionaryMatcher;->characters:[B

    const/high16 v0, 0x7f000000

    and-int/2addr v0, p2

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Landroid/icu/impl/Assert;->assrt(Z)V

    iput p2, p0, Landroid/icu/text/BytesDictionaryMatcher;->transform:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private transform(I)I
    .locals 3

    const/16 v1, 0x200d

    if-ne p1, v1, :cond_0

    const/16 v1, 0xff

    return v1

    :cond_0
    const/16 v1, 0x200c

    if-ne p1, v1, :cond_1

    const/16 v1, 0xfe

    return v1

    :cond_1
    iget v1, p0, Landroid/icu/text/BytesDictionaryMatcher;->transform:I

    const v2, 0x1fffff

    and-int/2addr v1, v2

    sub-int v0, p1, v1

    if-ltz v0, :cond_2

    const/16 v1, 0xfd

    if-ge v1, v0, :cond_3

    :cond_2
    const/4 v1, -0x1

    return v1

    :cond_3
    return v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v5

    new-instance v0, Landroid/icu/util/BytesTrie;

    iget-object v6, p0, Landroid/icu/text/BytesDictionaryMatcher;->characters:[B

    invoke-direct {v0, v6, v7}, Landroid/icu/util/BytesTrie;-><init>([BI)V

    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-ne v1, v8, :cond_0

    return v7

    :cond_0
    invoke-direct {p0, v1}, Landroid/icu/text/BytesDictionaryMatcher;->transform(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/icu/util/BytesTrie;->first(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    const/4 v3, 0x1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v4}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ge v2, p5, :cond_2

    if-eqz p6, :cond_1

    invoke-virtual {v0}, Landroid/icu/util/BytesTrie;->getValue()I

    move-result v6

    aput v6, p6, v2

    :cond_1
    aput v3, p3, v2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v4, v6, :cond_5

    :cond_3
    aput v2, p4, v7

    return v3

    :cond_4
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq v4, v6, :cond_3

    :cond_5
    if-ge v3, p2, :cond_3

    invoke-virtual {v5}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v1

    if-eq v1, v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v1}, Landroid/icu/text/BytesDictionaryMatcher;->transform(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/icu/util/BytesTrie;->next(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v4

    goto :goto_0
.end method
