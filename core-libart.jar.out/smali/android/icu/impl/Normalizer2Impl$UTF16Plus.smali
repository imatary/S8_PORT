.class public final Landroid/icu/impl/Normalizer2Impl$UTF16Plus;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/Normalizer2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UTF16Plus"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static equal(Ljava/lang/CharSequence;IILjava/lang/CharSequence;II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sub-int v2, p2, p1

    sub-int v3, p5, p4

    if-eq v2, v3, :cond_0

    return v4

    :cond_0
    if-ne p0, p3, :cond_1

    if-ne p1, p4, :cond_1

    return v5

    :cond_1
    move v1, p4

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_3

    add-int/lit8 p1, v0, 0x1

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 p4, v1, 0x1

    invoke-interface {p3, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    move v1, p4

    move v0, p1

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static equal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-ne p0, p1, :cond_0

    return v5

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v4

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_3

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v5
.end method

.method public static isSurrogateLead(I)Z
    .locals 2

    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0x400

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
