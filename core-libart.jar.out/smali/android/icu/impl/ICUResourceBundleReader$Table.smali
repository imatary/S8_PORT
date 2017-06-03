.class Landroid/icu/impl/ICUResourceBundleReader$Table;
.super Landroid/icu/impl/ICUResourceBundleReader$Container;
.source "ICUResourceBundleReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Table"
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final URESDATA_ITEM_NOT_FOUND:I = -0x1


# instance fields
.field protected key32Offsets:[I

.field protected keyOffsets:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/icu/impl/ICUResourceBundleReader$Table;->-assertionsDisabled:Z

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
.method findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    :goto_0
    if-ge v3, v0, :cond_3

    add-int v4, v3, v0

    ushr-int/lit8 v1, v4, 0x1

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v4, v4, v1

    invoke-static {p1, p2, v4}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap6(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;C)I

    move-result v2

    :goto_1
    if-gez v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v4, v4, v1

    invoke-static {p1, p2, v4}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap5(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;I)I

    move-result v2

    goto :goto_1

    :cond_1
    if-lez v2, :cond_2

    add-int/lit8 v3, v1, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    const/4 v4, -0x1

    return v4
.end method

.method getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V
    .locals 11

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-ge v1, v8, :cond_9

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v8, v8, v1

    invoke-static {p1, v8, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap13(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    :goto_1
    invoke-virtual {p0, p1, v1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v3

    invoke-static {v3}, Landroid/icu/impl/ICUResourceBundleReader;->RES_GET_TYPE(I)I

    move-result v7

    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_ARRAY(I)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap7(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    invoke-virtual {p4, p2, v2}, Landroid/icu/impl/UResource$TableSink;->getOrCreateArraySink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$ArraySink;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Table;->-assertionsDisabled:Z

    if-nez v8, :cond_2

    iget v8, v0, Landroid/icu/impl/ICUResourceBundleReader$Array;->size:I

    if-ne v8, v2, :cond_1

    move v8, v9

    :goto_2
    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_0
    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v8, v8, v1

    invoke-static {p1, v8, p2}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap14(Landroid/icu/impl/ICUResourceBundleReader;ILandroid/icu/impl/UResource$Key;)V

    goto :goto_1

    :cond_1
    move v8, v10

    goto :goto_2

    :cond_2
    invoke-virtual {v0, p1, p2, p3, v4}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v7}, Landroid/icu/impl/ICUResourceBundleReader;->URES_IS_TABLE(I)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap10(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    invoke-virtual {p4, p2, v2}, Landroid/icu/impl/UResource$TableSink;->getOrCreateTableSink(Landroid/icu/impl/UResource$Key;I)Landroid/icu/impl/UResource$TableSink;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v6

    sget-boolean v8, Landroid/icu/impl/ICUResourceBundleReader$Table;->-assertionsDisabled:Z

    if-nez v8, :cond_6

    iget v8, v6, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-ne v8, v2, :cond_5

    move v8, v9

    :goto_4
    if-nez v8, :cond_6

    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    throw v8

    :cond_5
    move v8, v10

    goto :goto_4

    :cond_6
    invoke-virtual {v6, p1, p2, p3, v5}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    goto :goto_3

    :cond_7
    invoke-static {p1, v3}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap0(Landroid/icu/impl/ICUResourceBundleReader;I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p4, p2}, Landroid/icu/impl/UResource$TableSink;->putNoFallback(Landroid/icu/impl/UResource$Key;)V

    goto :goto_3

    :cond_8
    invoke-static {p3, v3}, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->-set0(Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;I)I

    invoke-virtual {p4, p2, p3}, Landroid/icu/impl/UResource$TableSink;->put(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/UResource$Value;)V

    goto :goto_3

    :cond_9
    invoke-virtual {p4}, Landroid/icu/impl/UResource$TableSink;->leave()V

    return-void
.end method

.method getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    iget v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->size:I

    if-gt v0, p2, :cond_1

    :cond_0
    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->keyOffsets:[C

    aget-char v0, v0, p2

    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap11(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleReader$Table;->key32Offsets:[I

    aget v0, v0, p2

    invoke-static {p1, v0}, Landroid/icu/impl/ICUResourceBundleReader;->-wrap12(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getResource(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v0

    return v0
.end method
