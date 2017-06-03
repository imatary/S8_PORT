.class final Landroid/icu/impl/ICUResourceBundleReader$Table32;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table32"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap4(Landroid/icu/impl/ICUResourceBundleReader;I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->size:I

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Container;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
