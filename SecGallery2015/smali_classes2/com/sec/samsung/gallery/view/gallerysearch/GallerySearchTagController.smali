.class public Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;
.super Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
.source "GallerySearchTagController.java"


# instance fields
.field private final mSelectedFilterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    new-instance v0, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    return-void
.end method

.method private addTag(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 5

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getRawTagData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getCategoryType()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->addTag(ILjava/lang/String;I)V

    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mIsChangeSearchingCondition:Z

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTextTagData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getCategoryType()I

    move-result v3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getObjects()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->addTag(ILjava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static declared-synchronized getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    .locals 3

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v0

    sget v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mCurrentGalleryId:I

    if-eq v0, v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    sput-object v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private removeTag(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/core/SearchFilterType;->TIME:Lcom/sec/samsung/gallery/core/SearchFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/SearchFilterType;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getRawTagData()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getFilterType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->removeTag(ILjava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mIsChangeSearchingCondition:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTextTagData()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->addTag(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "HIDE_SEARCH_HISTORY"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SEARCH_BY_CATEGORY"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public clearFilterList()V
    .locals 1

    invoke-super {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->clearFilterList()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->freeFilter()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mIsChangeSearchingCondition:Z

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTagFilter()Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    return-object v0
.end method

.method public bridge synthetic getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;
    .locals 1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    move-result-object v0

    return-object v0
.end method

.method public isSearchKeyEmpty()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mKeyword:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mKeyword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mTagFilter:Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/GallerySearchTagFilter;->getExistFilterMask()I

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->removeTag(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SEARCH_BY_CATEGORY"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resetSelectedItem()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchTagController;->mSelectedFilterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
    .locals 0

    return-void
.end method
