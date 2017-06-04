.class public Lcom/sec/android/gallery3d/data/MapListAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "MapListAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MapListAlbum$DateComparator;
    }
.end annotation


# static fields
.field private static final IMAGE_PROJECTION:Ljava/lang/String;

.field private static final IMAGE_WHERE:Ljava/lang/String; = "latitude <> 0 AND longitude <> 0"

.field private static final MAP_PROJECT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MapListAlbum"

.field private static final USE_CMH:Z

.field private static final VIDEO_WHERE:Ljava/lang/String; = "latitude <> 0 AND longitude <> 0"

.field private static mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private static mIsCloudSynchOn:Z

.field private static mIsFakeloading:Z


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mBwnDate:[J

.field private final mChannelId:I

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mMapItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final sDateComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->USE_CMH:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v3

    const-string/jumbo v2, "datetaken"

    aput-object v2, v1, v4

    const-string/jumbo v2, "latitude"

    aput-object v2, v1, v5

    const-string/jumbo v2, "longitude"

    aput-object v2, v1, v6

    const-string/jumbo v2, "_data"

    aput-object v2, v1, v7

    const-string/jumbo v2, ", "

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "datetaken"

    aput-object v1, v0, v4

    const-string/jumbo v1, "latitude"

    aput-object v1, v0, v5

    const-string/jumbo v1, "longitude"

    aput-object v1, v0, v6

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v7

    sput-object v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->MAP_PROJECT:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sput-boolean v3, Lcom/sec/android/gallery3d/data/MapListAlbum;->mIsFakeloading:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;[JILcom/sec/android/gallery3d/data/MediaSet;ZZ)V
    .locals 4

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapListAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Lcom/sec/android/gallery3d/data/MapListAlbum$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/MapListAlbum$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/MapListAlbum;Lcom/sec/android/gallery3d/data/MapListAlbum$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->sDateComparator:Ljava/util/Comparator;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/android/gallery3d/data/MapListAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/sec/android/gallery3d/data/MapListAlbum;->VIDEO_URI:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput p4, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    sput-boolean p6, Lcom/sec/android/gallery3d/data/MapListAlbum;->mIsCloudSynchOn:Z

    sput-object p5, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sput-boolean p7, Lcom/sec/android/gallery3d/data/MapListAlbum;->mIsFakeloading:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/MapListAlbum;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private extractDataFromCMHCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_9

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v16, 0x1

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_2

    sget-object v17, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_3

    sget-object v17, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_2
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    :goto_3
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v18

    const/4 v2, 0x5

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v20

    invoke-static/range {v18 .. v21}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v25

    sget-boolean v2, Lcom/sec/android/gallery3d/data/MapListAlbum;->mIsCloudSynchOn:Z

    if-nez v2, :cond_1

    const/4 v2, 0x2

    move/from16 v0, v16

    if-eq v0, v2, :cond_0

    :cond_1
    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const/4 v6, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v12, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct/range {v2 .. v14}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDDLjava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_2
    sget-object v17, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_1

    :cond_3
    sget-object v17, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    const/4 v2, 0x6

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const/4 v2, 0x7

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_6

    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_5

    sget-object v17, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_4
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto/16 :goto_3

    :cond_5
    sget-object v17, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_4

    :cond_6
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto/16 :goto_3

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v23

    if-ne v0, v2, :cond_8

    sget-object v17, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_5
    move-object/from16 v0, v17

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto/16 :goto_3

    :cond_8
    sget-object v17, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_5

    :cond_9
    return-void
.end method

.method private getOrderClauseCMH()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v0, "media_id"

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "clusterFileId"

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "datetaken DESC,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " DESC"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const-string/jumbo v1, "datetaken DESC,media_id DESC"

    goto :goto_0
.end method

.method private getProjectionCMH()[Ljava/lang/String;
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget v6, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    const-string/jumbo v5, "latitude != 0 and longitude != 0 "

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    if-eqz v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/16 v6, 0x8

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v6, "media_id"

    aput-object v6, v4, v8

    const-string/jumbo v6, "media_type"

    aput-object v6, v4, v9

    const-string/jumbo v6, "datetaken"

    aput-object v6, v4, v11

    const-string/jumbo v6, "_data"

    aput-object v6, v4, v12

    const-string/jumbo v6, "latitude"

    aput-object v6, v4, v10

    const/4 v6, 0x5

    const-string/jumbo v7, "longitude"

    aput-object v7, v4, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "is_cloud"

    aput-object v7, v4, v6

    const/4 v6, 0x7

    const-string/jumbo v7, "cloud_id"

    aput-object v7, v4, v6

    const-string/jumbo v6, " and (file_status = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " or "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "file_status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "clusterFileId"

    aput-object v6, v4, v8

    :cond_1
    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "and"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ", "

    invoke-static {v4, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " from timelineview where group_id != 0 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    const/4 v6, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v6, "media_id"

    aput-object v6, v4, v8

    const-string/jumbo v6, "media_type"

    aput-object v6, v4, v9

    const-string/jumbo v6, "datetaken"

    aput-object v6, v4, v11

    const-string/jumbo v6, "_data"

    aput-object v6, v4, v12

    const-string/jumbo v6, "latitude"

    aput-object v6, v4, v10

    const/4 v6, 0x5

    const-string/jumbo v7, "longitude"

    aput-object v7, v4, v6

    goto :goto_0

    :cond_3
    const/4 v6, 0x6

    new-array v4, v6, [Ljava/lang/String;

    const-string/jumbo v6, "media_id"

    aput-object v6, v4, v8

    const-string/jumbo v6, "media_type"

    aput-object v6, v4, v9

    const-string/jumbo v6, "datetaken"

    aput-object v6, v4, v11

    const-string/jumbo v6, "_data"

    aput-object v6, v4, v12

    const-string/jumbo v6, "latitude"

    aput-object v6, v4, v10

    const/4 v6, 0x5

    const-string/jumbo v7, "longitude"

    aput-object v7, v4, v6

    move-object v3, v4

    goto :goto_1
.end method

.method private getSelectionArgumentsCMH()[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUriCMH()Landroid/net/Uri;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->VIEW_URI__TIMELINE:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getWhereClauseCMH()Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, "latitude != 0 and longitude != 0 "

    iget v2, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mChannelId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " (group_id = 0 or (group_id !=0 and best_image = 1))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and (device_id = 1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, " and (file_status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "file_status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string/jumbo v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "and"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :cond_1
    const-string/jumbo v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and story_id = ? AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private loadData()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v4, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    sget-boolean v4, Lcom/sec/android/gallery3d/data/MapListAlbum;->mIsFakeloading:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/MapListAlbum;->makeDataDirectly(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    sput-object v4, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v3, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mMapItems:Ljava/util/ArrayList;

    const-string/jumbo v4, "MapListAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "====> Map performance : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v4, Lcom/sec/android/gallery3d/data/MapListAlbum;->USE_CMH:Z

    if-eqz v4, :cond_1

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/data/MapListAlbum;->makeDataFromCMH(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/data/MapListAlbum;->makeDataFromLocal(Ljava/util/ArrayList;Z)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/data/MapListAlbum;->makeDataFromLocal(Ljava/util/ArrayList;Z)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "MapListAlbum"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "IllegalArgumentException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeDataDirectly(Ljava/util/ArrayList;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;)V"
        }
    .end annotation

    sget-object v3, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBaseSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getSmallItemList()Ljava/util/ArrayList;

    move-result-object v22

    const/4 v14, 0x0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/SmallItem;->getLatitude()D

    move-result-wide v16

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/SmallItem;->getLongitude()D

    move-result-wide v18

    const-wide/16 v4, 0x0

    cmpl-double v3, v16, v4

    if-nez v3, :cond_1

    const-wide/16 v4, 0x0

    cmpl-double v3, v18, v4

    if-eqz v3, :cond_0

    :cond_1
    invoke-static/range {v16 .. v19}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v15

    invoke-static {v15}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/SmallItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/SmallItem;->getDateInMs()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const/4 v8, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Double;

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-direct/range {v2 .. v14}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDDLjava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private makeDataFromCMH(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getUriCMH()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getProjectionCMH()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getWhereClauseCMH()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getSelectionArgumentsCMH()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getOrderClauseCMH()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MapListAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    invoke-direct {p0, v7, p1}, Lcom/sec/android/gallery3d/data/MapListAlbum;->extractDataFromCMHCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "MapListAlbum"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SQLiteException : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method private makeDataFromLocal(Ljava/util/ArrayList;Z)V
    .locals 36
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;Z)V"
        }
    .end annotation

    const/16 v26, 0x0

    if-eqz p2, :cond_0

    sget-object v3, Lcom/sec/android/gallery3d/data/MapListAlbum;->IMAGE_URI:Landroid/net/Uri;

    :goto_0
    if-eqz p2, :cond_1

    const-string/jumbo v5, "group_id = 0 and latitude <> 0 AND longitude <> 0"

    :goto_1
    if-eqz p2, :cond_2

    sget-object v29, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_2
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    if-nez v2, :cond_4

    const-string/jumbo v25, " from images where group_id != 0 and latitude <> 0 AND longitude <> 0"

    if-eqz p2, :cond_3

    sget-object v2, Lcom/sec/android/gallery3d/data/MapListAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v2, v0, v6, v7}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    const-string/jumbo v8, "MapListAlbum"

    invoke-static/range {v2 .. v8}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    :goto_4
    if-eqz v26, :cond_7

    :goto_5
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v30

    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v32

    const/4 v2, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v30 .. v33}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->getLatLngList(DD)Ljava/util/ArrayList;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v35

    new-instance v12, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const/4 v2, 0x0

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    const/4 v2, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    const/4 v2, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    invoke-direct/range {v12 .. v24}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDDLjava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v27

    :try_start_1
    const-string/jumbo v2, "MapListAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SQLiteException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v27 .. v27}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_6
    return-void

    :cond_0
    sget-object v3, Lcom/sec/android/gallery3d/data/MapListAlbum;->VIDEO_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v5, "latitude <> 0 AND longitude <> 0"

    goto/16 :goto_1

    :cond_2
    sget-object v29, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_2

    :cond_3
    :try_start_2
    sget-object v4, Lcom/sec/android/gallery3d/data/MapListAlbum;->MAP_PROJECT:[Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    const-string/jumbo v25, " from images where group_id != 0 and latitude <> 0 AND longitude <> 0 AND datetaken BETWEEN ? AND ? "

    if-eqz p2, :cond_5

    sget-object v2, Lcom/sec/android/gallery3d/data/MapListAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v25

    invoke-static {v2, v0, v6, v7}, Lcom/sec/android/gallery3d/data/MapListAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v8

    :goto_7
    if-eqz p2, :cond_6

    const/4 v2, 0x6

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    :goto_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v7, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "datetaken DESC, _id DESC"

    const-string/jumbo v12, "MapListAlbum"

    move-object v7, v3

    invoke-static/range {v6 .. v12}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v26

    goto/16 :goto_4

    :cond_5
    sget-object v8, Lcom/sec/android/gallery3d/data/MapListAlbum;->MAP_PROJECT:[Ljava/lang/String;

    goto :goto_7

    :cond_6
    const/4 v2, 0x2

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x0

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mBwnDate:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v2

    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2

    :cond_7
    invoke-static/range {v26 .. v26}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_6
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMapItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mMapItems:Ljava/util/ArrayList;

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

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move v0, p1

    :goto_0
    add-int v4, p1, p2

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v4, v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "MapAlbum"

    return-object v0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 0

    return-object p0
.end method

.method public getSubMediaSetCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapListAlbum;->loadData()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapListAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MapListAlbum;->mDataVersion:J

    return-wide v0
.end method
