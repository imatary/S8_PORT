.class final Landroid/icu/impl/ICUResourceBundleReader$Table1632;
.super Landroid/icu/impl/ICUResourceBundleReader$Table;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Table1632"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleReader;I)V
    .locals 1

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Table;-><init>()V

    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap9(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap2(Landroid/icu/impl/ICUResourceBundleReader;I)[C

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->keyOffsets:[C

    array-length v0, v0

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->size:I

    add-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, -0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->itemsOffset:I

    return-void
.end method


# virtual methods
.method getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table1632;->getContainer32Resource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
