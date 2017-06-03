.class Landroid/icu/text/CharsDictionaryMatcher;
.super Landroid/icu/text/DictionaryMatcher;
.source "CharsDictionaryMatcher.java"


# instance fields
.field private characters:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/DictionaryMatcher;-><init>()V

    iput-object p1, p0, Landroid/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public matches(Ljava/text/CharacterIterator;I[I[II[I)I
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    invoke-static {p1}, Landroid/icu/text/UCharacterIterator;->getInstance(Ljava/text/CharacterIterator;)Landroid/icu/text/UCharacterIterator;

    move-result-object v4

    new-instance v5, Landroid/icu/util/CharsTrie;

    iget-object v6, p0, Landroid/icu/text/CharsDictionaryMatcher;->characters:Ljava/lang/CharSequence;

    invoke-direct {v5, v6, v7}, Landroid/icu/util/CharsTrie;-><init>(Ljava/lang/CharSequence;I)V

    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-ne v0, v8, :cond_0

    return v7

    :cond_0
    invoke-virtual {v5, v0}, Landroid/icu/util/CharsTrie;->firstForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    const/4 v2, 0x1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/icu/util/BytesTrie$Result;->hasValue()Z

    move-result v6

    if-eqz v6, :cond_4

    if-ge v1, p5, :cond_2

    if-eqz p6, :cond_1

    invoke-virtual {v5}, Landroid/icu/util/CharsTrie;->getValue()I

    move-result v6

    aput v6, p6, v1

    :cond_1
    aput v2, p3, v1

    add-int/lit8 v1, v1, 0x1

    :cond_2
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->FINAL_VALUE:Landroid/icu/util/BytesTrie$Result;

    if-ne v3, v6, :cond_5

    :cond_3
    aput v1, p4, v7

    return v2

    :cond_4
    sget-object v6, Landroid/icu/util/BytesTrie$Result;->NO_MATCH:Landroid/icu/util/BytesTrie$Result;

    if-eq v3, v6, :cond_3

    :cond_5
    if-ge v2, p2, :cond_3

    invoke-virtual {v4}, Landroid/icu/text/UCharacterIterator;->nextCodePoint()I

    move-result v0

    if-eq v0, v8, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v5, v0}, Landroid/icu/util/CharsTrie;->nextForCodePoint(I)Landroid/icu/util/BytesTrie$Result;

    move-result-object v3

    goto :goto_0
.end method
