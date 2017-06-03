.class public abstract Landroid/icu/text/UnicodeFilter;
.super Ljava/lang/Object;
.source "UnicodeFilter.java"

# interfaces
.implements Landroid/icu/text/UnicodeMatcher;


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract contains(I)Z
.end method

.method public matches(Landroid/icu/text/Replaceable;[IIZ)I
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    aget v1, p2, v3

    if-ge v1, p3, :cond_0

    aget v1, p2, v3

    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_0

    aget v1, p2, v3

    invoke-static {v0}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p2, v3

    return v4

    :cond_0
    aget v1, p2, v3

    if-le v1, p3, :cond_2

    aget v1, p2, v3

    invoke-interface {p1, v1}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/icu/text/UnicodeFilter;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_2

    aget v1, p2, v3

    add-int/lit8 v1, v1, -0x1

    aput v1, p2, v3

    aget v1, p2, v3

    if-ltz v1, :cond_1

    aget v1, p2, v3

    aget v2, p2, v3

    invoke-interface {p1, v2}, Landroid/icu/text/Replaceable;->char32At(I)I

    move-result v2

    invoke-static {v2}, Landroid/icu/text/UTF16;->getCharCount(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    aput v1, p2, v3

    :cond_1
    return v4

    :cond_2
    if-eqz p4, :cond_3

    aget v1, p2, v3

    if-ne v1, p3, :cond_3

    const/4 v1, 0x1

    return v1

    :cond_3
    return v3
.end method
