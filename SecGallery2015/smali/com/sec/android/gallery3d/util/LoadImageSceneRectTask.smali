.class public Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;
.super Ljava/lang/Thread;
.source "LoadImageSceneRectTask.java"


# static fields
.field public static final FEATURE_USE_VISION_INTELLIGENCE:Z

.field private static final FILES_ID_PROJECTION:[Ljava/lang/String;

.field private static final FILES_PROJECTION:[Ljava/lang/String;

.field private static final INDEX_CLOUD_ID:I = 0x1

.field private static final INDEX_IS_CLOUD:I = 0x0

.field private static final INDEX_MEDIA_ID:I = 0x2

.field private static final INDEX_QR_BARCODE_INFO:I = 0x5

.field private static final INDEX_SMART_CROP_RECT_RATIO:I = 0x3

.field private static final INDEX_TAG_DATA:I = 0x4

.field private static final INDEX_TAG_TYPE:I = 0x6

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final RECTF_COUNT:I = 0x4

.field private static final START_CLOUD_ID:I = 0x989680

.field private static final TAG:Ljava/lang/String; = "LoadImageSceneRectTask"

.field private static final TAG_DATA_BARCODE:Ljava/lang/String; = "Barcode"

.field private static final TAG_DATA_DOCUMENTS:Ljava/lang/String; = "Documents"

.field private static final TAG_DATA_QR:Ljava/lang/String; = "QR"

.field private static final TAG_TYPE_4:I = 0x4

.field private static final TAG_TYPE_5:I = 0x5

.field private static final TAG_TYPE_SERVER_104:I = 0x68

.field private static final USER_ROI_RECT_TYPE:Ljava/lang/String; = "Modify"

.field private static final mCMHDone:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mImageId:I

.field private static mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

.field private static final mSceneCropRectFArrayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mSceneTagDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mSmartCropRectRatio:Ljava/lang/String;


# instance fields
.field private mIsDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mCMHDone:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisionIntelligence:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "scene_region_ratio"

    aput-object v1, v0, v6

    const-string/jumbo v1, "tag_data"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "scene_qr_barcode_info"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "tag_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->PROJECTION:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v5

    const-string/jumbo v1, "vi_user_rect_ratio"

    aput-object v1, v0, v6

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FILES_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FILES_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string/jumbo v0, "load-scene-rect"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mIsDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mIsDirty:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->processImageSceneRectDB(Landroid/content/Context;)V

    return-void
.end method

.method private static checkTagType(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eq p0, v7, :cond_0

    const/16 v4, 0x68

    if-ne p0, v4, :cond_9

    :cond_0
    move v4, v6

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x5

    if-ne p0, v4, :cond_a

    const-string/jumbo v4, "QR"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "Barcode"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_1
    move v4, v6

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_2
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v3, p2, p3}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->removeDocumentType(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V

    :cond_3
    if-eqz v3, :cond_5

    if-ne p0, v7, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_5
    if-eqz v3, :cond_8

    const-string/jumbo v4, "Documents"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "QR"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "Barcode"

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_7
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    return v4

    :cond_9
    move v4, v5

    goto/16 :goto_0

    :cond_a
    move v4, v5

    goto/16 :goto_1

    :cond_b
    move v6, v5

    goto :goto_2
.end method

.method public static deleteImageCropRectInCache(I)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public static getCMHDone(I)I
    .locals 4

    const/4 v0, -0x1

    sget-boolean v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mCMHDone:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mCMHDone:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    monitor-exit v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static getCMHDone(Landroid/content/ContentResolver;)V
    .locals 12

    const/4 v11, 0x2

    const/4 v8, 0x0

    const-string/jumbo v3, "serviceflag&256"

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FILES_ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "LoadImageSceneRectTask"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v11, :cond_2

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    :goto_0
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mCMHDone:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mCMHDone:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mCMHDone:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x2

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v10

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v9

    :try_start_5
    const-string/jumbo v0, "LoadImageSceneRectTask"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getSceneCropRectFs(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static getSceneCropRects(Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v12, 0x2

    const/4 v8, 0x0

    const-string/jumbo v5, "tag_type DESC"

    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->TAGVIEW_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v12, :cond_3

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, p1, p2}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->checkTagType(ILjava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_1
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    sget v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    sget v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    :cond_5
    if-nez v6, :cond_6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    if-nez v10, :cond_7

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    invoke-static {p1, v6, v10, p2, v8}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->setSceneCropRectToMap(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/database/Cursor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "LoadImageSceneRectTask"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getSceneTagDatas(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSmartCrop(Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/HashMap;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;I)V"
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const v0, 0x989680

    if-le p3, v0, :cond_4

    const-string/jumbo v3, "cloud_id =? "

    :cond_0
    :goto_0
    const/4 v4, 0x0

    if-lez p3, :cond_1

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    :cond_1
    :try_start_0
    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->VISION_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FILES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "LoadImageSceneRectTask"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-lez p3, :cond_5

    sput p3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    :goto_1
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    if-nez v0, :cond_7

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    :cond_3
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    return-void

    :cond_4
    if-lez p3, :cond_0

    const-string/jumbo v3, "media_id =? "

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v9, :cond_6

    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_4
    sput v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "LoadImageSceneRectTask"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :cond_6
    const/4 v0, 0x2

    :try_start_3
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    goto :goto_4

    :cond_7
    invoke-static {p1, p2}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->setSmartCropRectToMap(Ljava/util/HashMap;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private notifyDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mIsDirty:Z

    return-void
.end method

.method private static processImageSceneRectDB(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getCMHDone(Landroid/content/ContentResolver;)V

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSmartCrop(Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/HashMap;I)V

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->getSceneCropRects(Landroid/content/ContentResolver;Ljava/util/HashMap;Ljava/util/HashMap;)V

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_1
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private static removeDocumentType(Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    sget v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v3, "Documents"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget v3, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static setSceneCropRectToMap(Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Landroid/database/Cursor;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v4, v1

    if-ge v0, v4, :cond_1

    aget-object v4, v1, v0

    sput-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    const-string/jumbo v5, "-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/StringTokenizer;

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    const-string/jumbo v5, "|"

    invoke-direct {v2, v4, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->setsceneCropRectFs(Ljava/util/StringTokenizer;Ljava/util/ArrayList;)V

    sget v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    invoke-interface {p4, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget v4, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static setSmartCropRectToMap(Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    sget v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_4

    sget v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    sget v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-nez v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    sget-object v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v4, Ljava/util/StringTokenizer;

    sget-object v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSmartCropRectRatio:Ljava/lang/String;

    const-string/jumbo v7, ","

    invoke-direct {v4, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    :cond_3
    :goto_1
    return-void

    :cond_4
    if-nez p0, :cond_0

    sget-object v7, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_0
    sget-object v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    sget v8, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v2, v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    sget-object v7, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    monitor-enter v7

    :try_start_1
    sget-object v6, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    sget v8, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    move-object v5, v0

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    :cond_5
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v1, Landroid/graphics/RectF;->right:F

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    iput v6, v1, Landroid/graphics/RectF;->bottom:F

    if-nez p0, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_7

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v6, v6, v7

    if-gtz v6, :cond_6

    const-string/jumbo v6, "Modify"

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v2, v9, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string/jumbo v6, "Modify"

    invoke-virtual {v5, v9, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {p0, p1, v2, v5}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->updateMapForSmartRect(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method private static setsceneCropRectFs(Ljava/util/StringTokenizer;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/StringTokenizer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->FEATURE_USE_VISION_INTELLIGENCE:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->start()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mLoadImageScenRectTask:Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->notifyDirty()V

    goto :goto_0
.end method

.method private static updateMapForSmartRect(Ljava/util/HashMap;Ljava/util/HashMap;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    sget v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez p0, :cond_2

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneCropRectFArrayMap:Ljava/util/HashMap;

    sget v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mSceneTagDataMap:Ljava/util/HashMap;

    sget v2, Lcom/sec/android/gallery3d/util/LoadImageSceneRectTask;->mImageId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method
