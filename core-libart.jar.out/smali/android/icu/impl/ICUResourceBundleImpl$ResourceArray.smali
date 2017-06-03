.class Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;
.super Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;
.source "ICUResourceBundleImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/ICUResourceBundleImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceArray"
.end annotation


# direct methods
.method constructor <init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceContainer;-><init>(Landroid/icu/impl/ICUResourceBundleImpl;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v0, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    invoke-virtual {v0, p3}, Landroid/icu/impl/ICUResourceBundleReader;->getArray(I)Landroid/icu/impl/ICUResourceBundleReader$Array;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    return-void
.end method


# virtual methods
.method getAllItems(Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V
    .locals 2

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v0, v1, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iput-object v0, p2, Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v1, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    check-cast v1, Landroid/icu/impl/ICUResourceBundleReader$Array;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleReader$Array;->getAllItems(Landroid/icu/impl/ICUResourceBundleReader;Landroid/icu/impl/UResource$Key;Landroid/icu/impl/ICUResourceBundleReader$ReaderValue;Landroid/icu/impl/UResource$ArraySink;)V

    return-void
.end method

.method public getStringArray()[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->handleGetStringArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method protected handleGet(ILjava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 1
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

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    return-object v0
.end method

.method protected handleGet(Ljava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;
    .locals 2
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

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->createBundleObject(ILjava/lang/String;Ljava/util/HashMap;Landroid/icu/util/UResourceBundle;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    return-object v1
.end method

.method protected handleGetStringArray()[Ljava/lang/String;
    .locals 7

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->wholeBundle:Landroid/icu/impl/ICUResourceBundle$WholeBundle;

    iget-object v2, v5, Landroid/icu/impl/ICUResourceBundle$WholeBundle;->reader:Landroid/icu/impl/ICUResourceBundleReader;

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getSize()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/icu/impl/ICUResourceBundleImpl$ResourceArray;->value:Landroid/icu/impl/ICUResourceBundleReader$Container;

    invoke-virtual {v5, v2, v0}, Landroid/icu/impl/ICUResourceBundleReader$Container;->getContainerResource(Landroid/icu/impl/ICUResourceBundleReader;I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/icu/impl/ICUResourceBundleReader;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v5, Landroid/icu/util/UResourceTypeMismatchException;

    const-string/jumbo v6, ""

    invoke-direct {v5, v6}, Landroid/icu/util/UResourceTypeMismatchException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method
