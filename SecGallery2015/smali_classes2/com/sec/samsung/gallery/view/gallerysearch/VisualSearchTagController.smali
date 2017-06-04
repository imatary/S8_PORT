.class public Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;
.super Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
.source "VisualSearchTagController.java"


# instance fields
.field private mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    new-instance v0, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 3

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v0

    sget v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mCurrentGalleryId:I

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 0

    return-void
.end method

.method public clearFilterList()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->clearTagFilter()V

    return-void
.end method

.method public getSelectedItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-result-object v0

    return-object v0
.end method

.method public getTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    return-object v0
.end method

.method public isSearchKeyEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mKeyword:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mKeyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->isTagFilterEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 0

    return-void
.end method

.method public resetSelectedItem()V
    .locals 0

    return-void
.end method

.method public setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mVisualSearchTagFilter:Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->setTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->mIsChangeSearchingCondition:Z

    :cond_0
    return-void
.end method
