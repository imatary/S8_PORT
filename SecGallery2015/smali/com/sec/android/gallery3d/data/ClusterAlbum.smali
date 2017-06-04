.class public Lcom/sec/android/gallery3d/data/ClusterAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "ClusterAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;
    }
.end annotation


# static fields
.field private static final FEATURE_USE_FACE_TAG:Z

.field private static final FEATURE_USE_TAB_UI:Z

.field private static final TAG:Ljava/lang/String; = "ClusterAlbum"


# instance fields
.field private mAddrValues:[[D

.field private mAlbumKey:Ljava/lang/String;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private final mContext:Landroid/content/Context;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field public mGroupId:I

.field private mIsDirty:Z

.field private mKind:I

.field private final mLocalImagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Ljava/lang/String;

.field private mMediaSetType:I

.field private mName:Ljava/lang/String;

.field private final mPathHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation
.end field

.field private mPeopleName:Ljava/lang/String;

.field public mPersonId:I

.field private mSmallItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->FEATURE_USE_FACE_TAG:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->FEATURE_USE_TAB_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/data/DataManager;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mLocation:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPeopleName:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mAddrValues:[[D

    iput v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPersonId:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mGroupId:I

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mIsDirty:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mLocalImagePaths:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPathHashMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mMediaSetType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :cond_0
    iput p4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/ClusterAlbum;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/ClusterAlbum;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateSelectedFaces(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method private autoRecommend(Lcom/sec/android/gallery3d/data/Path;I)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v0, p2}, Lcom/sec/samsung/gallery/access/face/FaceList;->recommendFaces(Landroid/content/Context;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;II)V

    return-void
.end method

.method private checkMediaSetType()V
    .locals 9

    const/4 v8, 0x1

    iget v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/16 v7, 0xb

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/16 v7, 0xc

    if-eq v6, v7, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/16 v7, 0xd

    if-ne v6, v7, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v6, "/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x9

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v6, 0xa

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v8, :cond_2

    iput v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mMediaSetType:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-le v3, v8, :cond_3

    if-eq v3, v2, :cond_3

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mMediaSetType:I

    goto :goto_0

    :cond_3
    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mMediaSetType:I

    goto :goto_0
.end method

.method private getLocalMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/sec/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v18

    :cond_0
    add-int v2, p2, p3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v19, v20

    :goto_1
    sub-int v2, v13, p2

    new-array v9, v2, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v10, Lcom/sec/android/gallery3d/data/ClusterAlbum$4;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9}, Lcom/sec/android/gallery3d/data/ClusterAlbum$4;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v2, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10, v2}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    new-instance v18, Ljava/util/ArrayList;

    sub-int v2, v13, p2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getRefreshOperation()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    const/4 v15, 0x1

    :cond_1
    const/4 v14, 0x0

    :goto_2
    array-length v2, v9

    if-ge v14, v2, :cond_9

    aget-object v2, v9, v14

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v2, :cond_8

    aget-object v2, v9, v14

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v17

    if-nez v17, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    aget-object v4, v9, v14

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    :goto_4
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v12

    const-string/jumbo v2, "ClusterAlbum"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/LocalImage;->setFacePaths(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isPhotoPage()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v16, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/LocalImage;->isFaceInfoDeleted()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mIsDirty:Z

    if-eqz v2, :cond_5

    if-nez v15, :cond_5

    const/4 v11, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "ClusterAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_4

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/data/LocalImage;->isFileModified(Landroid/database/Cursor;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v16

    :cond_4
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_5
    if-eqz v16, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/LocalImage;->deleteFaceInfo()V

    goto :goto_3

    :catchall_1
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_8
    aget-object v2, v9, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_9
    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mIsDirty:Z

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    move-object/from16 v19, v20

    goto/16 :goto_4
.end method

.method public static getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/sec/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt p1, v5, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v3

    :cond_0
    add-int v5, p1, p2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sub-int v5, v2, p1

    new-array v0, v5, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v1, Lcom/sec/android/gallery3d/data/ClusterAlbum$1;

    invoke-direct {v1, v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum$1;-><init>([Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v5, 0x0

    invoke-virtual {p3, v4, v1, v5}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    new-instance v3, Ljava/util/ArrayList;

    sub-int v5, v2, p1

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v3, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getMediaItemFromPathEx(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;II",
            "Lcom/sec/android/gallery3d/data/DataManager;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, p2

    if-lt v0, v2, :cond_0

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v18

    :cond_0
    add-int v2, p2, p3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    sub-int v2, v13, p2

    new-array v9, v2, [Lcom/sec/android/gallery3d/data/MediaItem;

    new-instance v10, Lcom/sec/android/gallery3d/data/ClusterAlbum$3;

    move-object/from16 v0, p0

    invoke-direct {v10, v0, v9}, Lcom/sec/android/gallery3d/data/ClusterAlbum$3;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;[Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    const/16 v19, 0x0

    :try_start_0
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-object/from16 v19, v20

    :goto_1
    if-nez v19, :cond_2

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :goto_2
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v12

    const-string/jumbo v2, "ClusterAlbum"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10, v2}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    :goto_3
    new-instance v18, Ljava/util/ArrayList;

    sub-int v2, v13, p2

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getRefreshOperation()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    const/4 v15, 0x1

    :cond_3
    const/4 v14, 0x0

    :goto_4
    array-length v2, v9

    if-ge v14, v2, :cond_d

    aget-object v2, v9, v14

    instance-of v2, v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v2, :cond_c

    aget-object v2, v9, v14

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->setFacePaths(Ljava/util/ArrayList;)V

    aget-object v2, v9, v14

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mLocalImagePaths:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->setPathMap(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    aget-object v2, v9, v14

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v17

    if-nez v17, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    aget-object v4, v9, v14

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_5
    const/16 v21, 0x0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    new-instance v22, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v2, v0, v13}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object/from16 v21, v22

    :goto_6
    if-nez v21, :cond_6

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    :goto_7
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v12

    const-string/jumbo v2, "ClusterAlbum"

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v10, v2}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItemsFromSmallItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/LocalImage;->setFacePaths(Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->isPhotoPage()Z

    move-result v2

    if-eqz v2, :cond_b

    const/16 v16, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/LocalImage;->isFaceInfoDeleted()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mIsDirty:Z

    if-eqz v2, :cond_9

    if-nez v15, :cond_9

    const/4 v11, 0x0

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v17

    iget v4, v0, Lcom/sec/android/gallery3d/data/LocalImage;->id:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v8, "ClusterAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_8

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/data/LocalImage;->isFileModified(Landroid/database/Cursor;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v16

    :cond_8
    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_9
    if-eqz v16, :cond_a

    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/LocalImage;->deleteFaceInfo()V

    goto/16 :goto_5

    :catchall_2
    move-exception v2

    invoke-static {v11}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_a
    aget-object v2, v9, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_b
    aget-object v2, v9, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    aget-object v2, v9, v14

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_d
    if-eqz v15, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->setRefreshOperation(I)V

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mIsDirty:Z

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    move-object/from16 v21, v22

    goto/16 :goto_7

    :catchall_4
    move-exception v2

    move-object/from16 v19, v20

    goto/16 :goto_2
.end method

.method private updateOneFace(Landroid/content/Context;Lcom/sec/android/gallery3d/data/Path;I)V
    .locals 3

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2, p3}, Lcom/sec/samsung/gallery/access/face/FaceList;->setPerson(Landroid/content/Context;II)V

    return-void
.end method

.method private updateSelectedFaces(Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, p2}, Lcom/sec/samsung/gallery/access/face/PersonList;->updateJoinedName(Landroid/content/Context;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4, v1, p3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateOneFace(Landroid/content/Context;Lcom/sec/android/gallery3d/data/Path;I)V

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xd

    aget-object v4, v4, v5

    const-string/jumbo v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    move-object v2, v1

    :cond_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v2, p3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->autoRecommend(Lcom/sec/android/gallery3d/data/Path;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateMediaSet()V

    :cond_4
    return-void
.end method


# virtual methods
.method public confirmFaces()V
    .locals 8

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, "/"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x3

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v7, 0x9

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v7, 0xa

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v4, v3, :cond_0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    invoke-static {v7, v0, v4}, Lcom/sec/samsung/gallery/access/face/FaceList;->setPerson(Landroid/content/Context;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$2;

    invoke-direct {v0, p0, p1}, Lcom/sec/android/gallery3d/data/ClusterAlbum$2;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    const/4 v1, 0x1

    return v1
.end method

.method protected enumerateMediaItems(Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)I
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1, p2}, Lcom/sec/android/gallery3d/data/DataManager;->mapMediaItems(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet$ItemConsumer;I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getAddrValues()[[D
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mAddrValues:[[D

    return-object v0
.end method

.method public getBucketId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    sget v0, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public getImageCount()I
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_0
    if-ge v0, v4, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mAlbumKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPathEx(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItemCount()I
    .locals 2

    sget-object v1, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMediaItemEx(II)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getLocalMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMediaItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMediaSetType()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mMediaSetType:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getBaseSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    return-object v0
.end method

.method public getSmallItemList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setSmallItemList()Ljava/util/ArrayList;

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSmallItemList(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-static {v5, v6, v7, v8}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemFromPath(Ljava/util/ArrayList;IILcom/sec/android/gallery3d/data/DataManager;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    new-instance v4, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v4}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v5

    iput v5, v4, Lcom/sec/android/gallery3d/data/SmallItem;->height:I

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v5

    iput v5, v4, Lcom/sec/android/gallery3d/data/SmallItem;->width:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 6

    const-wide/16 v0, 0x405

    sget-boolean v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;->FEATURE_USE_FACE_TAG:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getClusterKind()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    const v4, 0x7f0a0492

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, v0

    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x100000000000000L

    or-long/2addr v2, v0

    const-wide/high16 v4, 0x40000000000000L

    or-long/2addr v2, v4

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/sec/android/gallery3d/data/ClusterAlbum;->FEATURE_USE_TAB_UI:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getClusterKind()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    :cond_2
    move-wide v2, v0

    goto :goto_0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/16 v1, 0x104

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/16 v1, 0x100

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mKind:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    goto :goto_0
.end method

.method public getTotalMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getVideoCount()I
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItemCount()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-ge v0, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaObject;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public isLeafAlbum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 10

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->isArcMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->isPhotoPage()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    :goto_0
    return-wide v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    const-wide/16 v4, -0x1

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mClusterAlbumSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    cmp-long v5, v6, v8

    if-lez v5, :cond_3

    move v1, v3

    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_7

    sget-boolean v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;->FEATURE_USE_FACE_TAG:Z

    if-eqz v4, :cond_6

    if-eqz v0, :cond_6

    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mIsDirty:Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mArcDataVersion:J

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getArcVersionNumber()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getArcVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mArcDataVersion:J

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    :cond_7
    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    goto :goto_0
.end method

.method public removeFaces()V
    .locals 6

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x3

    aget-object v5, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    invoke-static {v5, v0}, Lcom/sec/samsung/gallery/access/face/FaceList;->setFaceUnknown(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAddrValues([[D)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mAddrValues:[[D

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mAlbumKey:Ljava/lang/String;

    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mLocation:Ljava/lang/String;

    return-void
.end method

.method setMediaItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    monitor-enter v1

    if-nez p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMediaItemsEx(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    monitor-enter v1

    if-eqz p1, :cond_1

    :try_start_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mLocalImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPathHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-boolean v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->FEATURE_USE_FACE_TAG:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->checkMediaSetType()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method public setSmallItemList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mSmallItemList:Ljava/util/ArrayList;

    return-void
.end method

.method public updateDataVersion()V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataVersion:J

    return-void
.end method

.method public updateFaces(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/samsung/gallery/access/face/PersonList;->addPerson(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPaths:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p2, v0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateSelectedFaces(Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method public updateMediaSet()V
    .locals 0

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->setVersion()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->onContentDirty()V

    return-void
.end method

.method public updateOperation(Ljava/util/ArrayList;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "reload"

    const-string/jumbo v1, "clusteralbum showProcessingDialog"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/ArcLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v9

    new-instance v0, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPeopleName:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, p0

    move-object v3, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/gallery3d/data/ClusterAlbum$UpdateOperation;-><init>(Lcom/sec/android/gallery3d/data/ClusterAlbum;Ljava/lang/String;Ljava/util/ArrayList;Landroid/content/Context;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/ClusterAlbum$1;)V

    invoke-virtual {v9, v0}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method public updateSlotName(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mPeopleName:Ljava/lang/String;

    move-object v0, p2

    const-string/jumbo v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2

    :cond_0
    iput-object v0, p0, Lcom/sec/android/gallery3d/data/ClusterAlbum;->mName:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2, p3, p4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->updateOperation(Ljava/util/ArrayList;ILjava/lang/String;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method
