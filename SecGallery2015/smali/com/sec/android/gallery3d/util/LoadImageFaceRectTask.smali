.class public Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;
.super Ljava/lang/Thread;
.source "LoadImageFaceRectTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$SMART_CROP_INDEX;
    }
.end annotation


# static fields
.field private static final DEFAULT_SMART_CROP_TYPE:I = 0x1

.field private static final INDEX_CLOUD_ID:I = 0x1

.field private static final INDEX_FILE_ID_FOR_SHARE_EVENT:I = 0x0

.field private static final INDEX_IS_CLOUD:I = 0x0

.field private static final INDEX_MEDIA_ID:I = 0x2

.field private static final INDEX_SMART_CROP_RECT_RATIO:I = 0x3

.field private static final INDEX_SMART_CROP_RECT_RATIO_FOR_SHARE_EVENT:I = 0x1

.field private static final PROJECTION:[Ljava/lang/String;

.field private static final PROJECTION_FOR_SHARE_EVENT:[Ljava/lang/String;

.field private static final RECTF_COUNT:I = 0x4

.field public static final SMART_CROP_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "LoadImageFaceRectTask"

.field private static final USE_CMH:Z

.field public static final USE_SMART_CROP:Z

.field private static final mFaceRectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private static mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

.field private static final mSmartCropRectFArrayMap:Ljava/util/HashMap;
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

.field private static final mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;
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


# instance fields
.field private mIsDirty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportSmartCrop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "is_cloud"

    aput-object v1, v0, v3

    const-string/jumbo v1, "cloud_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string/jumbo v2, "smartcrop_rect_ratio"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->PROJECTION:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "smartcrop_rect_ratio"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->PROJECTION_FOR_SHARE_EVENT:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string/jumbo v0, "load-face-rect"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mIsDirty:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mIsDirty:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mIsDirty:Z

    return p1
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->processImageFaceRectDB(Landroid/content/Context;)V

    return-void
.end method

.method public static deleteImageCropRectInCache(I)V
    .locals 3

    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v0, :cond_0

    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private static getFaceRect(Landroid/content/ContentResolver;)V
    .locals 24

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const/4 v12, 0x0

    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/access/face/FaceData;->FACES_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "pos_left"

    aput-object v5, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v5, "pos_top"

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string/jumbo v5, "pos_right"

    aput-object v5, v4, v2

    const/4 v2, 0x3

    const-string/jumbo v5, "pos_bottom"

    aput-object v5, v4, v2

    const/4 v5, 0x4

    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_CMH:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "media_id"

    :goto_0
    aput-object v2, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "LoadImageFaceRectTask"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x2

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->right:I

    const/4 v2, 0x3

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x4

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/util/ArrayList;

    if-nez v20, :cond_7

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    new-instance v19, Landroid/graphics/RectF;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/Rect;

    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    iget v9, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->left:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_8

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->left:F

    :cond_3
    :goto_5
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_9

    move/from16 v0, v23

    int-to-float v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->top:F

    :cond_4
    :goto_6
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->right:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_a

    move/from16 v0, v22

    int-to-float v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->right:F

    :cond_5
    :goto_7
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_b

    int-to-float v4, v9

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    goto :goto_4

    :cond_6
    :try_start_1
    const-string/jumbo v2, "image_id"

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v10

    :try_start_2
    const-string/jumbo v2, "LoadImageFaceRectTask"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v12}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_8
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move/from16 v0, v17

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    move/from16 v0, v17

    int-to-float v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->left:F

    goto :goto_5

    :cond_9
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->top:F

    move/from16 v0, v23

    int-to-float v5, v0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    move/from16 v0, v23

    int-to-float v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->top:F

    goto :goto_6

    :cond_a
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->right:F

    move/from16 v0, v22

    int-to-float v5, v0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    move/from16 v0, v22

    int-to-float v4, v0

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->right:F

    goto :goto_7

    :cond_b
    move-object/from16 v0, v19

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v5, v9

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    int-to-float v4, v9

    move-object/from16 v0, v19

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_c
    move-object/from16 v0, v19

    iget v2, v0, Landroid/graphics/RectF;->top:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v2, v2, v4

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceCount(Landroid/content/ContentResolver;I)I

    move-result v2

    if-ltz v2, :cond_d

    const/high16 v2, -0x40000000    # -2.0f

    move-object/from16 v0, v19

    iput v2, v0, Landroid/graphics/RectF;->top:F

    :cond_d
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    :cond_e
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    invoke-virtual {v2, v14}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v3

    return-void

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method public static getImageCropRectF(I)Landroid/graphics/RectF;
    .locals 4

    sget-boolean v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v1, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_1
    sget-object v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mFaceRectMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/RectF;

    monitor-exit v2

    goto :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public static getSmartCropRectFs(I)Ljava/util/ArrayList;
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

    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    :cond_0
    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getSmartCropRectFsForShareEvent(I)Ljava/util/ArrayList;
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

    sget-boolean v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    :cond_0
    monitor-exit v2

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private static getSmartCropRects(Landroid/content/ContentResolver;)V
    .locals 20

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    const/4 v15, 0x0

    const/16 v17, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "LoadImageFaceRectTask"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    :goto_0
    const/4 v2, 0x3

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_7

    :cond_1
    :goto_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_1
    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMap:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string/jumbo v5, "device_id = 1000 AND mime_type = \'image/jpeg\'"

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->FILES_TABLE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->PROJECTION_FOR_SHARE_EVENT:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "LoadImageFaceRectTask"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->clear()V

    if-eqz v15, :cond_5

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v2, 0x1

    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_9

    :cond_4
    :goto_3
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    sget-object v3, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_3
    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    sget-object v2, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mSmartCropRectFArrayMapForShareEvent:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    return-void

    :cond_6
    const/4 v2, 0x2

    :try_start_4
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    goto :goto_0

    :cond_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v19, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v16

    const/16 v2, 0x18

    move/from16 v0, v16

    if-lt v0, v2, :cond_1

    const/4 v13, 0x0

    :goto_5
    const/4 v2, 0x6

    if-ge v13, v2, :cond_8

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v11

    :try_start_5
    const-string/jumbo v2, "LoadImageFaceRectTask"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v2

    :cond_9
    :try_start_7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v19, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v16

    const/16 v2, 0x18

    move/from16 v0, v16

    if-lt v0, v2, :cond_4

    const/4 v13, 0x0

    :goto_6
    const/4 v2, 0x6

    if-ge v13, v2, :cond_a

    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->left:F

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->right:F

    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_3

    :catch_1
    move-exception v11

    :try_start_8
    const-string/jumbo v2, "LoadImageFaceRectTask"

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_4

    :catchall_2
    move-exception v2

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :catchall_3
    move-exception v2

    :try_start_9
    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v2
.end method

.method private notifyDirty()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mIsDirty:Z

    return-void
.end method

.method private static processImageFaceRectDB(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-boolean v1, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getSmartCropRects(Landroid/content/ContentResolver;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getFaceRect(Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->isAlive()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask$1;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->start()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->mLoadImageFaceRectTask:Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->notifyDirty()V

    goto :goto_0
.end method
