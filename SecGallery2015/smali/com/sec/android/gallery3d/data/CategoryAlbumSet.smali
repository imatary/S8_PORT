.class public Lcom/sec/android/gallery3d/data/CategoryAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "CategoryAlbumSet.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;,
        Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;
    }
.end annotation


# static fields
.field public static final PEOPLE_BASE_PATH:Ljava/lang/String; = "/local/all"

.field public static final PEOPLE_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "CategoryAlbumSet"

.field public static final TOP_PATH:Ljava/lang/String; = "/local/categoryalbumset"


# instance fields
.field private faceClusterReload:Z

.field private mAlbums:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBaseUri:Landroid/net/Uri;

.field private mCategoryCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mIsUsedCMH:Z

.field private mLoadTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mWatchUri:[Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "/local/all"

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->PEOPLE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_IMAGE_TABLE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mBaseUri:Landroid/net/Uri;

    const/4 v0, 0x3

    new-array v1, v0, [Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_IMAGE_TABLE_URI:Landroid/net/Uri;

    :goto_0
    aput-object v0, v1, v3

    const/4 v0, 0x1

    sget-object v2, Lcom/sec/android/gallery3d/data/CategoryAlbum;->UPDATE_URI:Landroid/net/Uri;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mWatchUri:[Landroid/net/Uri;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->faceClusterReload:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mWatchUri:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-instance v0, Landroid/os/Handler;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mHandler:Landroid/os/Handler;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mBaseUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/gallery3d/data/CategoryAlbumSet;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->faceClusterReload:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/CategoryAlbumSet;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkCategoryItems()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;",
            ">;"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CategoryAlbumSet : checkCategoryItems() DCM query Start : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_CATEGORY_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "category_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "media_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "display_count"

    aput-object v6, v4, v5

    const-string/jumbo v5, "category_type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "4"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "CategoryAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    :goto_0
    const-string/jumbo v2, "Gallery_Performance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CategoryAlbumSet : checkCategoryItems() DCM query End : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v16

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v2, :cond_4

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "Scenery"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "Food"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "Documents"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "People"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "Flower"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    :goto_2
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    return-object v9

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->DCM_CATEGORY_TABLE_URI:Landroid/net/Uri;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "category_name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "media_count"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "display_count"

    aput-object v6, v4, v5

    const-string/jumbo v5, "category_type=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "4"

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const-string/jumbo v8, "CategoryAlbumSet"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    goto/16 :goto_0

    :cond_3
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v2, "CategoryAlbumSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCategoryItems : [DCM query] category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", display_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;

    invoke-direct {v2, v14, v12}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v13

    :try_start_2
    const-string/jumbo v2, "CategoryAlbumSet"

    invoke-virtual {v13}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_3

    :cond_4
    if-eqz v11, :cond_1

    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_5
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v2, "Scenery"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "Food"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "Documents"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "People"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_2

    :cond_6
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v2, 0x2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v2, "CategoryAlbumSet"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkCategoryItems : [DCM query] category = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", display_count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;

    invoke-direct {v2, v14, v12}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private static circularShiftRight(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;

    move v0, p2

    :goto_0
    if-le v0, p1, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private static findName(Ljava/util/ArrayList;Ljava/lang/String;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;

    iget-object v2, v2, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    const/4 v12, -0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    const/4 v7, 0x0

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v10, :cond_7

    const-string/jumbo v10, "People"

    :goto_0
    invoke-static {v11, v10}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->findName(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_0

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v7, v5}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->circularShiftRight(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    move v7, v8

    :cond_0
    iget-object v11, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v10, :cond_8

    const-string/jumbo v10, "Scenery"

    :goto_1
    invoke-static {v11, v10}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->findName(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_1

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v7, v5}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->circularShiftRight(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    move v7, v8

    :cond_1
    iget-object v11, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v10, :cond_9

    const-string/jumbo v10, "Food"

    :goto_2
    invoke-static {v11, v10}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->findName(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_2

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v7, v5}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->circularShiftRight(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    move v7, v8

    :cond_2
    iget-object v11, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v10, :cond_a

    const-string/jumbo v10, "Documents"

    :goto_3
    invoke-static {v11, v10}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->findName(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_3

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    add-int/lit8 v8, v7, 0x1

    invoke-static {v10, v7, v5}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->circularShiftRight(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    move v7, v8

    :cond_3
    iget-boolean v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    const-string/jumbo v11, "Flower"

    invoke-static {v10, v11}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->findName(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v5

    if-eq v5, v12, :cond_4

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    invoke-static {v10, v7, v5}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->circularShiftRight(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    :cond_4
    const/4 v4, 0x0

    :goto_4
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_d

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;

    iget-object v6, v10, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;->name:Ljava/lang/String;

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;

    iget v2, v10, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$CategoryCount;->count:I

    if-lez v2, :cond_6

    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-nez v10, :cond_c

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mIsUsedCMH:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "People"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    :cond_5
    sget-object v10, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->PEOPLE_PATH:Ljava/lang/String;

    invoke-virtual {v3, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    invoke-virtual {v9, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v10}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v10

    new-instance v11, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;

    invoke-direct {v11, p0, v9}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet$AlbumsLoader;-><init>(Lcom/sec/android/gallery3d/data/CategoryAlbumSet;Lcom/sec/android/gallery3d/data/MediaSet;)V

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    :cond_6
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "People"

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v10, "Scenery"

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v10, "Food"

    goto/16 :goto_2

    :cond_a
    const-string/jumbo v10, "Documents"

    goto/16 :goto_3

    :cond_b
    const-string/jumbo v10, "People"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "/local/categoryalbum/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_d
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "filter"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->notifyContentChanged()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->notifyDirty()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mLoadTask:Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->checkCategoryItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mCategoryCount:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mAlbums:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mDataVersion:J

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->faceClusterReload:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->faceClusterReload:Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mDataVersion:J

    :cond_2
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/CategoryAlbumSet;->mDataVersion:J

    return-wide v0
.end method
