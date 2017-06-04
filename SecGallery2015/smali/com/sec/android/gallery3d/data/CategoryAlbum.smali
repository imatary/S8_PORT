.class public Lcom/sec/android/gallery3d/data/CategoryAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "CategoryAlbum.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;,
        Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;
    }
.end annotation


# static fields
.field private static final INVALID_TYPE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "CategoryAlbum"

.field public static final TOP_PATH:Ljava/lang/String; = "/local/categoryalbum"

.field public static final UPDATE_URI:Landroid/net/Uri;


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseCMHUri:Landroid/net/Uri;

.field private final mBaseUri:Landroid/net/Uri;

.field private mBurstshotMap:Ljava/util/HashMap;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCateogryType:Ljava/lang/String;

.field private final mIsUsedCMH:Z

.field private final mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mProjection:[Ljava/lang/String;

.field private mSortType:I

.field private final mWatchUri:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->TABLE_URI__DAY_CLUSTER:Landroid/net/Uri;

    :goto_0
    sput-object v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    return-void

    :cond_0
    const-string/jumbo v0, "category://categoryupdate"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/CategoryAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderChannelInterface;->DETAILED_IMAGES_TABLE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBaseCMHUri:Landroid/net/Uri;

    new-array v1, v5, [Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    :goto_0
    aput-object v0, v1, v2

    sget-object v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    aput-object v0, v1, v3

    sget-object v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mWatchUri:[Landroid/net/Uri;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mSortType:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mIsUsedCMH:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mWatchUri:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mIsUsedCMH:Z

    if-eqz v0, :cond_1

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v2

    const-string/jumbo v1, "media_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "group_id"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mProjection:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBaseUri:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "date"

    aput-object v1, v0, v2

    const-string/jumbo v1, "id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v4

    const-string/jumbo v1, "media_group_id"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mProjection:[Ljava/lang/String;

    goto :goto_1
.end method

.method private getSubList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p3, :cond_1

    :cond_0
    return-object v1

    :cond_1
    move v0, p2

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private loadItems()Ljava/util/ArrayList;
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;",
            ">;"
        }
    .end annotation

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v10, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CategoryAlbum : loadItems() DCM query Start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mIsUsedCMH:Z

    if-eqz v2, :cond_4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "device_id"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = 1 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "scene_name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "and (bucket_id not in (select distinct(bucket_id) from files where is_hide = 1))"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBaseCMHUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mProjection:[Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "CategoryAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    :goto_0
    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CategoryAlbum : loadItems() DCM query End : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_3

    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v2, 0x3

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-object v16

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBaseUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mProjection:[Ljava/lang/String;

    const-string/jumbo v5, "scene_type =? "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "CategoryAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v17

    new-instance v15, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-direct {v15, v0, v11, v2}, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/lang/Long;Lcom/sec/android/gallery3d/data/CategoryAlbum$1;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo v2, "CategoryAlbum"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadItems() : id =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", bucket_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", group_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v2

    invoke-static {v10}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v0, 0x1

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/CategoryAlbum;->loadItems()Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    :cond_0
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v7, v3, 0x1

    if-lt p1, v7, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v4

    :cond_1
    iget-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getSortByType()I

    move-result v5

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mSortType:I

    if-eq v7, v5, :cond_2

    iput v5, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mSortType:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    new-instance v9, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sec/android/gallery3d/data/CategoryAlbum$CategoryComparator;-><init>(Landroid/content/Context;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int v7, p1, p2

    invoke-static {v7, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, v7, p1, v2}, Lcom/sec/android/gallery3d/data/CategoryAlbum;->getSubList(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v6

    sub-int v7, v2, p1

    new-array v0, v7, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v1, Lcom/sec/android/gallery3d/data/CategoryAlbum$1;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/data/CategoryAlbum$1;-><init>(Lcom/sec/android/gallery3d/data/CategoryAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v1, v8}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    new-instance v4, Ljava/util/ArrayList;

    sub-int v7, v2, p1

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/CategoryAlbum;->loadItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mIsUsedCMH:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_STRING_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_1
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide/16 v0, 0x405

    return-wide v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 3

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mIsUsedCMH:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/core/TabTagType;

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return-object v0

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->CATEGORY_TYPE_MAP:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mCateogryType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/core/TabTagType;

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    goto :goto_1
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reload()J
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/gallery3d/data/CategoryAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mDataVersion:J

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mItems:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mBurstshotMap:Ljava/util/HashMap;

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mSortType:I

    :cond_2
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbum;->mDataVersion:J

    return-wide v0
.end method
