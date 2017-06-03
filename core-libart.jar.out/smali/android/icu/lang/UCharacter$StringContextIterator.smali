.class Landroid/icu/lang/UCharacter$StringContextIterator;
.super Ljava/lang/Object;
.source "UCharacter.java"

# interfaces
.implements Landroid/icu/impl/UCaseProps$ContextIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/lang/UCharacter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringContextIterator"
.end annotation


# instance fields
.field protected cpLimit:I

.field protected cpStart:I

.field protected dir:I

.field protected index:I

.field protected limit:I

.field protected s:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    return-void
.end method


# virtual methods
.method public getCPLimit()I
    .locals 1

    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    return v0
.end method

.method public getCPStart()I
    .locals 1

    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    return v0
.end method

.method public moveToLimit()V
    .locals 1

    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    return-void
.end method

.method public next()I
    .locals 3

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    iget-object v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    return v0

    :cond_0
    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    if-gez v1, :cond_1

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    if-lez v1, :cond_1

    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointBefore(I)I

    move-result v0

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    return v0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public nextCaseMapCP()I
    .locals 3

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    iget v2, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    iget v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    return v0

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public reset(I)V
    .locals 1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpLimit:I

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    :goto_0
    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    iget v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->cpStart:I

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    goto :goto_0

    :cond_1
    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->dir:I

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->index:I

    goto :goto_0
.end method

.method public setLimit(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_0

    iput p1, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->s:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/icu/lang/UCharacter$StringContextIterator;->limit:I

    goto :goto_0
.end method
