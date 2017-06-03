.class Landroid/icu/impl/ICUResourceBundleReader$Container;
.super Ljava/lang/Object;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Container"
.end annotation


# instance fields
.field protected itemsOffset:I

.field protected size:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContainer16Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 3

    if-ltz p2, :cond_0

    iget v1, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v1, p2, :cond_1

    :cond_0
    const/4 v1, -0x1

    return v1

    :cond_1
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get2(Landroid/icu/impl/ICUResourceBundleReader;)Ljava/nio/CharBuffer;

    move-result-object v1

    iget v2, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->charAt(I)C

    move-result v0

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get3(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    if-ge v0, v1, :cond_2

    :goto_0
    const/high16 v1, 0x60000000

    or-int/2addr v1, v0

    return v1

    :cond_2
    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get3(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p1}, Landroid/icu/impl/ICUResourceBundleReader;->-get4(Landroid/icu/impl/ICUResourceBundleReader;)I

    move-result v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method protected getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 2

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    if-gt v0, p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    return v0

    :cond_1
    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap8(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method

.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method

.method final getSize()I
    .locals 1

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    return v0
.end method
