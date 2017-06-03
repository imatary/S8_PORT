.class abstract Landroid/icu/text/CharsetRecog_2022;
.super Landroid/icu/text/CharsetRecognizer;
.source "CharsetRecog_2022.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022CN;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022JP;,
        Landroid/icu/text/CharsetRecog_2022$CharsetRecog_2022KR;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/text/CharsetRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method match([BI[[B)I
    .locals 11

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_7

    aget-byte v8, p1, v2

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_5

    const/4 v0, 0x0

    :goto_1
    array-length v8, p3

    if-ge v0, v8, :cond_4

    aget-object v6, p3, v0

    sub-int v8, p2, v2

    array-length v9, v6

    if-ge v8, v9, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_2
    array-length v8, v6

    if-ge v3, v8, :cond_2

    aget-byte v8, v6, v3

    add-int v9, v2, v3

    aget-byte v9, p1, v9

    if-ne v8, v9, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v2, v8

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    :cond_5
    aget-byte v8, p1, v2

    const/16 v9, 0xe

    if-eq v8, v9, :cond_6

    aget-byte v8, p1, v2

    const/16 v9, 0xf

    if-ne v8, v9, :cond_3

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    if-nez v1, :cond_8

    return v10

    :cond_8
    mul-int/lit8 v8, v1, 0x64

    mul-int/lit8 v9, v4, 0x64

    sub-int/2addr v8, v9

    add-int v9, v1, v4

    div-int v5, v8, v9

    add-int v8, v1, v7

    const/4 v9, 0x5

    if-ge v8, v9, :cond_9

    add-int v8, v1, v7

    rsub-int/lit8 v8, v8, 0x5

    mul-int/lit8 v8, v8, 0xa

    sub-int/2addr v5, v8

    :cond_9
    if-gez v5, :cond_a

    const/4 v5, 0x0

    :cond_a
    return v5
.end method
