.class final Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;
.super Landroid/icu/impl/ICUResourceBundleImpl;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ResourceInt"
.end annotation


# instance fields
.field private resource:I


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    iput p3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    return-void
.end method


# virtual methods
.method public getInt()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_INT(I)I

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public getUInt()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceInt;->resource:I

    invoke-static {v0}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_UINT(I)I

    move-result v0

    return v0
.end method
