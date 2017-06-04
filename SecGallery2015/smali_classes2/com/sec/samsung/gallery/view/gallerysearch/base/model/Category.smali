.class public Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;
.super Ljava/lang/Object;
.source "Category.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Category"


# instance fields
.field private final mCategoryType:Ljava/lang/String;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->mCategoryType:Ljava/lang/String;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->mItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne p1, p0, :cond_0

    const-string/jumbo v4, "Category"

    const-string/jumbo v6, "Both are null in equals of Category"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    :goto_0
    return v4

    :cond_0
    instance-of v4, p1, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    if-eqz v4, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->size()I

    move-result v4

    if-eq v4, v1, :cond_1

    const-string/jumbo v4, "Category"

    const-string/jumbo v5, "the size fo this category is not same as that of  other in equals of Category"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "Category"

    const-string/jumbo v5, "this category is not same as other in equals of Category"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "TAG"

    const-string/jumbo v5, "this category is not Category in equals of Category"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    goto :goto_0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->mCategoryType:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
