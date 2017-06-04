.class public Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;
.super Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;
.source "SearchInfoSaveRestoreCmd.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchInfoSaveRestore"


# instance fields
.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

.field private mBundle:Landroid/os/Bundle;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/puremvc/java/multicore/patterns/command/SimpleCommand;-><init>()V

    return-void
.end method

.method private restoreInfoFromBundle()V
    .locals 15

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v13, "SEARCH_LOCATION_TYPE"

    sget-object v14, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v14

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v13, "SEARCH_CATEGORY"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v13, "SEARCH_KEYWORD"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v13, "SEARCH_SUB_CATEGORY"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v13, "SEARCH_PERSON_NAME"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    if-nez v2, :cond_0

    if-nez v1, :cond_0

    sget-object v5, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v5

    if-eq v3, v5, :cond_6

    :cond_0
    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->setVisualSearchTagFilter(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/sec/android/gallery3d/data/VisualSearchTagFilter$SearchKeywordInfo;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setVisualSearchTagFilter(Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;)V

    const-string/jumbo v5, "People"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "Related people"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchTagController;->getTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getTagName()Ljava/lang/String;

    move-result-object v11

    if-nez v7, :cond_2

    sget-object v5, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->VISUAL_SEARCH_SUB_CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    if-eqz v10, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v5, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_2
    :goto_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5, v12}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchText(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    move-object v12, v11

    goto :goto_1

    :cond_6
    if-eqz v8, :cond_2

    invoke-virtual {v9, v8}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->addKeyword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual {v9, v8, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->insertHistoryItem(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    const/4 v13, 0x1

    invoke-virtual {v5, v6, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->updateKeyword(Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->getTagListMap()Ljava/util/LinkedHashMap;

    move-result-object v13

    invoke-virtual {v5, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->setTagListMap(Ljava/util/LinkedHashMap;)V

    move-object v12, v8

    goto :goto_1
.end method

.method private saveInfoToBundle()V
    .locals 9

    const/4 v2, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getVisualSearchTagFilter()Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getLocationType()I

    move-result v4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getOriginalTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/VisualSearchTagFilter;->getPersonName()Ljava/lang/String;

    move-result-object v5

    if-nez v0, :cond_0

    if-nez v6, :cond_0

    sget-object v7, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->NONE:Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/SearchTagFilter$LocationType;->ordinal()I

    move-result v7

    if-eq v4, v7, :cond_1

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "SEARCH_CATEGORY"

    invoke-virtual {v7, v8, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "SEARCH_SUB_CATEGORY"

    invoke-virtual {v7, v8, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "SEARCH_LOCATION_TYPE"

    invoke-virtual {v7, v8, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "SEARCH_PERSON_NAME"

    invoke-virtual {v7, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_1
    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;->getKeyword()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "SEARCH_KEYWORD"

    invoke-virtual {v7, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public execute(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 6

    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    aget-object v1, v2, v3

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x2

    aget-object v3, v2, v3

    check-cast v3, Landroid/os/Bundle;

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_2

    :cond_0
    const-string/jumbo v4, "SearchInfoSaveRestore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_1

    const-string/jumbo v3, "save"

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " search information"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v3, "restore"

    goto :goto_0

    :cond_2
    check-cast v1, Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iput-object v1, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mAlbum:Lcom/sec/android/gallery3d/data/GallerySearchAlbum;

    iget-object v3, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->saveInfoToBundle()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/controller/SearchInfoSaveRestoreCmd;->restoreInfoFromBundle()V

    goto :goto_1
.end method
