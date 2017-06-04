.class public Lcom/sec/android/gallery3d/util/GlIndex;
.super Ljava/lang/Object;
.source "GlIndex.java"


# static fields
.field private static final BIT_GRP_MASK:I = 0x3fff

.field private static final BIT_ITM_MASK:I = 0x3ffff

.field private static final BIT_SHIFT:I = 0x12


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertIndexToItemCode(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x12

    or-int/2addr v0, p1

    return v0
.end method

.method public static getGroupFirstItemIndex(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x12

    return v0
.end method

.method public static getGroupIndex(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x12

    and-int/lit16 v0, v0, 0x3fff

    return v0
.end method

.method public static getItemIndex(I)I
    .locals 1

    const v0, 0x3ffff

    and-int/2addr v0, p0

    return v0
.end method
