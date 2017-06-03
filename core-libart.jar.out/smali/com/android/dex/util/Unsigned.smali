.class public final Lcom/android/dex/util/Unsigned;
.super Ljava/lang/Object;
.source "Unsigned.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compare(II)I
    .locals 8

    const-wide v6, 0xffffffffL

    if-ne p0, p1, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    int-to-long v4, p0

    and-long v0, v4, v6

    int-to-long v4, p1

    and-long v2, v4, v6

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static compare(SS)I
    .locals 3

    const v2, 0xffff

    if-ne p0, p1, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    and-int v0, p0, v2

    and-int v1, p1, v2

    if-ge v0, v1, :cond_1

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method
