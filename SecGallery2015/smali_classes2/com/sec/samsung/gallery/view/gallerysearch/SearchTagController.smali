.class public abstract Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
.super Ljava/lang/Object;
.source "SearchTagController.java"


# static fields
.field static mCurrentGalleryId:I

.field static sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;


# instance fields
.field final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

.field mIsChangeSearchingCondition:Z

.field mKeyword:Ljava/lang/String;

.field private mTagList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end field

.field private mTagListMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagList:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagListMap:Ljava/util/LinkedHashMap;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mIsChangeSearchingCondition:Z

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryId()I

    move-result v1

    sput v1, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mCurrentGalleryId:I

    return-void
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    const-class v0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->sInstance:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addKeyword(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;->getTextTagData()Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mKeyword:Ljava/lang/String;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mIsChangeSearchingCondition:Z

    return-object p1
.end method

.method public abstract addSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
.end method

.method public checkSearchConditionChange()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mIsChangeSearchingCondition:Z

    return v0
.end method

.method public clearFilterList()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mKeyword:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mIsChangeSearchingCondition:Z

    return-void
.end method

.method public abstract getSelectedItem()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTagFilter()Lcom/sec/android/gallery3d/data/SearchTagFilter;
.end method

.method public getTagList()Ljava/util/ArrayList;
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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTagListMap()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagListMap:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    move-object v0, p1

    if-eqz p2, :cond_0

    move-object v0, p2

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->deleteHistory(Ljava/lang/String;)V

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mHistoryController:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryController;->insertHistory(Landroid/content/ContentValues;)V

    :cond_1
    return-void
.end method

.method public abstract isSearchKeyEmpty()Z
.end method

.method public abstract removeSelectedItem(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;)V
.end method

.method public resetSearchConditionChange()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mIsChangeSearchingCondition:Z

    return-void
.end method

.method public abstract resetSelectedItem()V
.end method

.method public setTagList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagList:Ljava/util/ArrayList;

    return-void
.end method

.method public setTagListMap(Ljava/util/LinkedHashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/samsung/gallery/core/SearchFilterType;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->mTagListMap:Ljava/util/LinkedHashMap;

    return-void
.end method

.method abstract setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V
.end method
