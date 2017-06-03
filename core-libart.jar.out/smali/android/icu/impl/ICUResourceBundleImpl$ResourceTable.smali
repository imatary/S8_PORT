.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceTable"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundle$WholeBundle;)V

    iget-object v0, p1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p2}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method

.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getTable(I)Landroid/icu/impl/ICUResourceBundleReader$Table;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method


# virtual methods
.method findString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v2, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v2, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v2, v1, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$TableSink;)V

    return-void
.end method

.method protected getKey(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v0, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v1, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/util/UResourceBundle;",
            ")",
            "Landroid/icu/util/UResourceBundle;"
        }
    .end annotation

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Table;

    iget-object v2, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v2, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v1, v2, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->getContainerResource(I)I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->createBundleObject(Ljava/lang/String;ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method protected handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v4, v8, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v8, Landroid/icu/impl/ICUResourceBundleReader$Table;

    invoke-virtual {v8, v4, p1}, Landroid/icu/impl/ICUResourceBundleReader$Table;->findTableItem(Landroid/icu/impl/ICUResourceBundleReader;Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v8, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v8, v4, v1}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    return-object v6

    :cond_0
    invoke-virtual {v4, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ne v2, v3, :cond_1

    return-object v7

    :cond_1
    invoke-virtual {v0, v4, v2}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    :cond_2
    invoke-super {p0, p1}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    return-object v8

    :cond_3
    aput-object v6, v7, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v4, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iget-object v3, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceTable;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v3, Landroid/icu/impl/ICUResourceBundleReader$Table;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getSize()I

    move-result v4

    if-ge v0, v4, :cond_0

    invoke-virtual {v3, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader$Table;->getKey(Landroid/icu/impl/ICUResourceBundleReader;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
