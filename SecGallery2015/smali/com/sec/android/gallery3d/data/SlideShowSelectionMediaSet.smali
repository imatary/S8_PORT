.class public Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "SlideShowSelectionMediaSet.java"


# static fields
.field private static final LOCAL_IMAGE:I = 0x4

.field private static final LOCAL_VIDEO:I = 0x5

.field private static final SCLOUD_IMAGE:I = 0x0

.field private static final SCLOUD_VIDEO:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlideSelectionMediaSet"

.field private static final UNION_IMAGE:I = 0x3

.field private static final UNION_VIDEO:I = 0x2


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

.field private mSlideShowMediaSetUtils:Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

.field private mTotalSelectedMediaCount:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-void
.end method

.method private createOrderMediaItemList(IILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-array v2, p2, [Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v4, 0x0

    move v0, p1

    :goto_0
    add-int v7, p1, p2

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

    aget-object v7, v7, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput-object v5, v2, v1

    goto :goto_1

    :cond_1
    invoke-static {v3, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object v3
.end method

.method private createUnorderedMediaItemList(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/16 v7, 0x8

    new-array v2, v7, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSlideShowMediaSetUtils:Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

    aget-object v8, v2, v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->getProjection(Lcom/sec/android/gallery3d/data/Path;)[Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSlideShowMediaSetUtils:Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

    aget-object v8, v2, v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->getContentProviderURI(Lcom/sec/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v5

    aget-object v7, v2, v0

    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aget-object v7, v2, v0

    invoke-direct {p0, v3, v5, v6, v7}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->getMediaItem([Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method private getMediaItem([Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p1

    move-object/from16 v4, p3

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v1, "SlideSelectionMediaSet"

    const-string/jumbo v2, "cursor is null !!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v11

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-direct {p0, v12, v7}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->updateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_2
    const-string/jumbo v1, "SlideSelectionMediaSet"

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1
.end method

.method private updateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSlideShowMediaSetUtils:Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->albumMatcher(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "SlideSelectionMediaSet"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Media Item Can be Processed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {p1, p2, v0, v1, v6}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {p1, p2, v0, v1, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x14

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v5, v6

    :goto_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x13

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v5, v6

    :goto_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    move-object v0, p1

    move-object v1, p2

    move v4, v6

    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/UnionAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/app/GalleryApp;ZZ)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {p1, p2, v0, v1, v6}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {p1, p2, v0, v1, v4}, Lcom/sec/android/gallery3d/data/LocalAlbum;->loadOrUpdateItem(Lcom/sec/android/gallery3d/data/Path;Landroid/database/Cursor;Lcom/sec/android/gallery3d/data/LibraryDataManager;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;Z)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method createWhereListMap(II)Ljava/util/LinkedHashMap;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v10, 0x6

    new-array v6, v10, [Lcom/sec/android/gallery3d/data/Path;

    const/4 v10, 0x0

    sget-object v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    aput-object v11, v6, v10

    const/4 v10, 0x1

    sget-object v11, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    aput-object v11, v6, v10

    const/4 v10, 0x2

    sget-object v11, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    aput-object v11, v6, v10

    const/4 v10, 0x3

    sget-object v11, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    aput-object v11, v6, v10

    const/4 v10, 0x4

    sget-object v11, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    aput-object v11, v6, v10

    const/4 v10, 0x5

    sget-object v11, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    aput-object v11, v6, v10

    move v0, p1

    add-int v7, p1, p2

    :goto_0
    if-ge v0, v7, :cond_3

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "_id = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->getSuffix()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    array-length v11, v6

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v3, v6, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v9, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    move-object v1, v8

    :goto_2
    invoke-virtual {v9, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " or "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v9
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    const-string/jumbo v3, "SlideSelectionMediaSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMediaItem()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->createWhereListMap(II)Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->createUnorderedMediaItemList(Ljava/util/LinkedHashMap;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->createOrderMediaItemList(IILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const-string/jumbo v3, "SlideSelectionMediaSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMediaItem() End "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mTotalSelectedMediaCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Ljava/util/LinkedHashMap;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    iput p2, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mTotalSelectedMediaCount:I

    iget v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mTotalSelectedMediaCount:I

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSelectionMediaItemPathList:[Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    new-instance v0, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSlideShowMediaSetUtils:Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/SlideShowSelectionMediaSet;->mSlideShowMediaSetUtils:Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/SlideShowMediaSetUtils;->init()V

    return-void
.end method

.method public reload()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
