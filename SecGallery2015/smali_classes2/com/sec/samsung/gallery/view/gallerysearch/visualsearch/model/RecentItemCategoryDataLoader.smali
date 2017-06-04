.class public Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;
.super Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;
.source "RecentItemCategoryDataLoader.java"


# static fields
.field private static final INVALID_ID:I = -0x1


# instance fields
.field private mMediaId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CategoryDataLoader;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->mMediaId:I

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->mMediaId:I

    return-void
.end method

.method private addRelatedLocationCategory(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Related locations"

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->mMediaId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorTagviewLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method

.method private addRelatedPeopleCategory(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "Related people"

    iget v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->mMediaId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/CursorPeopleLoader;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->addCategory(Ljava/util/List;Lcom/sec/samsung/gallery/view/gallerysearch/base/model/CursorLoader;Z)V

    return-void
.end method


# virtual methods
.method protected addSubCategory(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/base/model/Category;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->addRelatedLocationCategory(Ljava/util/List;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/model/RecentItemCategoryDataLoader;->addRelatedPeopleCategory(Ljava/util/List;)V

    return-void
.end method
