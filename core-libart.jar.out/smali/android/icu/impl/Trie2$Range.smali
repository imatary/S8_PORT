.class public Landroid/icu/impl/Trie2$Range;
.super Ljava/lang/Object;
.source "Trie2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Trie2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public endCodePoint:I

.field public leadSurrogate:Z

.field public startCodePoint:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Landroid/icu/impl/Trie2$Range;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/icu/impl/Trie2$Range;

    iget v2, p0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Landroid/icu/impl/Trie2$Range;->value:I

    iget v3, v0, Landroid/icu/impl/Trie2$Range;->value:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    iget-boolean v3, v0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-static {}, Landroid/icu/impl/Trie2;->-wrap3()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/Trie2$Range;->startCodePoint:I

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap2(II)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/Trie2$Range;->endCodePoint:I

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap2(II)I

    move-result v0

    iget v1, p0, Landroid/icu/impl/Trie2$Range;->value:I

    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap1(II)I

    move-result v0

    iget-boolean v1, p0, Landroid/icu/impl/Trie2$Range;->leadSurrogate:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Landroid/icu/impl/Trie2;->-wrap0(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
