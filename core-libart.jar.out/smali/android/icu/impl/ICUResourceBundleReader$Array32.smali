.class final Landroid/icu/impl/ICUResourceBundleReader$Array32;
.super Landroid/icu/impl/ICUResourceBundleReader$Array;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Array32"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Array;-><init>()V

    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->size:I

    add-int/lit8 v0, p2, 0x4

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Array32;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Array32;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
