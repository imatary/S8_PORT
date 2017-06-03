.class Landroid/icu/impl/ICUResourceBundleReader$Array;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Array"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$Array;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->-assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/icu/impl/ICUResourceBundleReader$Container;-><init>()V

    return-void
.end method


# virtual methods
.method getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ge v1, v8, :cond_7

    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v7

    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    invoke-virtual {p4, v1, v2}, Landroid/icu/impl/UResource$ArraySink;->getOrCreateArraySink(II)Landroid/icu/impl/UResource$ArraySink;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Array;->-assertionsDisabled:Z

    if-nez v8, :cond_1

    iget v8, v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ne v8, v2, :cond_0

    move v8, v9

    :goto_1
    if-nez v8, :cond_1

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_0
    move v8, v10

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p1, p2, p3, v4}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap10(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    invoke-virtual {p4, v1, v2}, Landroid/icu/impl/UResource$ArraySink;->getOrCreateTableSink(II)Landroid/icu/impl/UResource$TableSink;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v6

    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Array;->-assertionsDisabled:Z

    if-nez v8, :cond_5

    iget v8, v6, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-ne v8, v2, :cond_4

    move v8, v9

    :goto_3
    if-nez v8, :cond_5

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_4
    move v8, v10

    goto :goto_3

    :cond_5
    invoke-virtual {v6, p1, p2, p3, v5}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    goto :goto_2

    :cond_6
    invoke-static {p3, v3}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->-set0(Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;I)I

    invoke-virtual {p4, v1, p3}, Landroid/icu/impl/UResource$ArraySink;->put(ILandroid/icu/impl/UResource$Value;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p4}, Landroid/icu/impl/UResource$ArraySink;->leave()V

    return-void
.end method
