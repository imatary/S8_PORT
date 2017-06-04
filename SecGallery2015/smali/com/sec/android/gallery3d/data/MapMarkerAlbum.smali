.class public Lcom/sec/android/gallery3d/data/MapMarkerAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "MapMarkerAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MapMarkerAlbum$DateComparator;
    }
.end annotation


# static fields
.field private static final INVALID_LATITUDE:D = 0.0

.field private static final INVALID_LONGITUDE:D = 0.0

.field private static final TAG:Ljava/lang/String; = "MapMarkerAlbum"

.field private static final USE_CMH:Z

.field private static mIsCloudSyncOn:Z


# instance fields
.field private final IMAGE_PROJECTION:Ljava/lang/String;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mBaseImageWhere:Ljava/lang/String;

.field private mBaseVideoWhere:Ljava/lang/String;

.field private mBwnDate:[J

.field private final mChannelId:I

.field private final mClusterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mIsUpdateAll:Z

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

.field private mName:Ljava/lang/String;

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mResolver:Landroid/content/ContentResolver;

.field private mScanBounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

.field private mUpdateItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private needToCallDB:Z

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
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->USE_CMH:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/util/ArrayList;[JIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/app/GalleryApp;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;[JIZ)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "datetaken"

    aput-object v2, v1, v3

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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->needToCallDB:Z

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsUpdateAll:Z

    new-instance v0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum$DateComparator;

    invoke-direct {v0, p0, v6}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/MapMarkerAlbum;Lcom/sec/android/gallery3d/data/MapMarkerAlbum$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->sDateComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-array v1, v5, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->VIDEO_URI:Landroid/net/Uri;

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    iput p5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->needToCallDB:Z

    sput-boolean p6, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsCloudSyncOn:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/MapMarkerAlbum;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private extractDataFromCMHCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 19
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

    move-result v17

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/4 v15, 0x1

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    sget-object v16, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_4

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    sget-object v16, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_2
    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    :goto_3
    const/4 v2, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/data/Path;->setObject(Lcom/sec/android/gallery3d/data/MediaObject;)V

    sget-boolean v2, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsCloudSyncOn:Z

    if-nez v2, :cond_1

    const/4 v2, 0x2

    if-eq v15, v2, :cond_0

    :cond_1
    new-instance v2, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-direct/range {v2 .. v13}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDD)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v16, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_1

    :cond_3
    sget-object v16, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    const/4 v6, -0x1

    if-ne v2, v6, :cond_7

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const/4 v2, 0x4

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v2, 0x2

    if-ne v15, v2, :cond_6

    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_5

    sget-object v16, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_3

    :cond_5
    sget-object v16, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_4

    :cond_6
    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_3

    :cond_7
    const/4 v2, 0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_8

    sget-object v16, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_5
    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    goto :goto_3

    :cond_8
    sget-object v16, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto :goto_5

    :cond_9
    return-void
.end method

.method private getOrderClauseCMH()Ljava/lang/String;
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

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

.method private getPaths(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    move v0, p1

    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v1, v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v3, v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private getProjectionCMH(Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " and latitude != 0 and longitude != 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "media_id"

    aput-object v5, v4, v7

    const-string/jumbo v5, "media_type"

    aput-object v5, v4, v8

    const-string/jumbo v5, "datetaken"

    aput-object v5, v4, v9

    const-string/jumbo v5, "is_cloud"

    aput-object v5, v4, v10

    const-string/jumbo v5, "cloud_id"

    aput-object v5, v4, v11

    const-string/jumbo v5, " and (file_status = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " or "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "file_status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "clusterFileId"

    aput-object v5, v4, v7

    :cond_1
    const-string/jumbo v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "and"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ", "

    invoke-static {v4, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " from timelineview where group_id != 0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_2
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "media_id"

    aput-object v5, v4, v7

    const-string/jumbo v5, "media_type"

    aput-object v5, v4, v8

    const-string/jumbo v5, "datetaken"

    aput-object v5, v4, v9

    goto :goto_0

    :cond_3
    new-array v4, v10, [Ljava/lang/String;

    const-string/jumbo v5, "media_id"

    aput-object v5, v4, v7

    const-string/jumbo v5, "media_type"

    aput-object v5, v4, v8

    const-string/jumbo v5, "datetaken"

    aput-object v5, v4, v9

    move-object v3, v4

    goto :goto_1
.end method

.method private getProjectionLocal(ZLjava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " from images where group_id != 0 and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    invoke-static {v2, v0, v4, v4}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getGroupProjection(Ljava/lang/String;Ljava/lang/String;ZZ)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->MAP_PROJECT:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getSelectionArgumentsCMH()[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    iget v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectionArgumentsLocal(Z)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v2, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    aget-wide v2, v1, v5

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getUriCMH()Landroid/net/Uri;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderTimeInterface;->VIEW_URI__TIMELINE:Landroid/net/Uri;

    goto :goto_0
.end method

.method private getWhereClauseCMH(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and latitude != 0 and longitude != 0 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " (group_id = 0 or (group_id !=0 and best_image = 1))"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and (device_id = 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, " and (file_status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "file_status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "and"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_1
    const-string/jumbo v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " (is_cloud = 1 or is_cloud = 3) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and story_id = ? AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method private getWhereClauseLocal(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND datetaken BETWEEN ? AND ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private loadData()V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v4, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    iput-boolean v8, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->needToCallDB:Z

    const-string/jumbo v5, "MapMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "====> Map performance : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->needToCallDB:Z

    if-nez v5, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->makeBounds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(latitude >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseImageWhere:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "(latitude >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "latitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " >= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "longitude"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " <= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ) "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseVideoWhere:Ljava/lang/String;

    :cond_2
    sget-boolean v5, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->USE_CMH:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseImageWhere:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->makeDataFromCMH(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseImageWhere:Ljava/lang/String;

    invoke-direct {p0, v4, v8, v5}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->makeDataFromLocal(Ljava/util/ArrayList;ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseVideoWhere:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v5}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->makeDataFromLocal(Ljava/util/ArrayList;ZLjava/lang/String;)V

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "MapMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IllegalArgumentException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private makeBounds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    const-wide/high16 v6, 0x7ff8000000000000L    # NaN

    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v14

    cmpl-double v14, v10, v14

    if-lez v14, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v10

    :cond_2
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_3

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-lez v14, :cond_4

    :cond_3
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v12

    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_5

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v14

    cmpg-double v14, v6, v14

    if-gez v14, :cond_6

    :cond_5
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v6

    :cond_6
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v14

    if-nez v14, :cond_7

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v14

    cmpg-double v14, v8, v14

    if-gez v14, :cond_0

    :cond_7
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v8

    goto :goto_0

    :cond_8
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_9

    const-wide v10, -0x10000000000001L

    const-wide v12, -0x10000000000001L

    const-wide v6, -0x10000000000001L

    const-wide v8, -0x10000000000001L

    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_9
    const-wide/high16 v14, 0x4024000000000000L    # 10.0

    const-wide/high16 v16, -0x3fec000000000000L    # -5.0

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v10, v4

    sub-double/2addr v12, v4

    add-double/2addr v6, v4

    add-double/2addr v8, v4

    goto :goto_1
.end method

.method private makeDataFromCMH(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getUriCMH()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getProjectionCMH(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getWhereClauseCMH(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getSelectionArgumentsCMH()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getOrderClauseCMH()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "MapMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :try_start_0
    invoke-direct {p0, v7, p1}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->extractDataFromCMHCursor(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-void

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "MapMarkerAlbum"

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

.method private makeDataFromLocal(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/16 v20, 0x0

    if-eqz p2, :cond_0

    sget-object v5, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->IMAGE_URI:Landroid/net/Uri;

    :goto_0
    if-eqz p2, :cond_1

    sget-object v22, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getProjectionLocal(ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getWhereClauseLocal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getSelectionArgumentsLocal(Z)[Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "datetaken DESC, _id DESC"

    const-string/jumbo v10, "MapMarkerAlbum"

    invoke-static/range {v4 .. v10}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    if-eqz v20, :cond_2

    const-string/jumbo v4, "MapMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Cursor count : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    const/4 v4, 0x1

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/data/Path;->setObject(Lcom/sec/android/gallery3d/data/MediaObject;)V

    new-instance v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    invoke-direct/range {v6 .. v17}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDD)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v4

    :cond_0
    sget-object v5, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->VIDEO_URI:Landroid/net/Uri;

    goto/16 :goto_0

    :cond_1
    sget-object v22, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    goto/16 :goto_1

    :cond_2
    :try_start_1
    const-string/jumbo v4, "MapMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "====> Map performance : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v18

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static/range {v20 .. v20}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void
.end method

.method private reloadItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsUpdateAll:Z

    const/4 v8, 0x0

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_2

    sget-object v7, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "MapMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v7, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_3
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v0, :cond_8

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_5

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->PROJECTION:[Ljava/lang/String;

    :goto_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "MapMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/data/UnionImage;->updateContent(Landroid/database/Cursor;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :cond_5
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v0, :cond_6

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_2

    :cond_6
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v0, :cond_7

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->PROJECTION:[Ljava/lang/String;

    goto :goto_2

    :cond_7
    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_8
    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v0, :cond_a

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->PROJECTION:[Ljava/lang/String;

    :goto_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :try_start_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "MapMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_9

    check-cast p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {p1, v8}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->updateContent(Landroid/database/Cursor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_9
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_1

    :cond_a
    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method


# virtual methods
.method public getBetweenDate()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    const/4 v2, 0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getBucketId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
.end method

.method public getChannelId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mChannelId:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLatitudeLongitudeBounds()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->makeBounds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(latitude >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "latitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseImageWhere:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "(latitude >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "latitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " AND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "longitude"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseVideoWhere:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    invoke-direct/range {p0 .. p2}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->getPaths(II)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v11

    if-nez v11, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sec/android/gallery3d/data/LocalImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sec/android/gallery3d/data/LocalVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sec/android/gallery3d/data/UnionImage;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getParent()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/sec/android/gallery3d/data/UnionVideo;->ITEM_PATH:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v2, v10}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v3, v10}, Lcom/sec/android/gallery3d/data/LocalAlbum;->getMediaItemForLocalVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v1, v10}, Lcom/sec/android/gallery3d/remote/scloud/SCloudAlbum;->getMediaItemForCloudVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v8, v10}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionImage(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iget-object v10, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v9, v10}, Lcom/sec/android/gallery3d/data/UnionAlbum;->getMediaItemForUnionVideo(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_7
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v4, :cond_8

    const-string/jumbo v11, "MapMarkerAlbum"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "MediaItem is null for path "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v11, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_8
    if-eqz v4, :cond_7

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_9
    new-instance v10, Lcom/sec/android/gallery3d/data/MapMarkerAlbum$1;

    invoke-direct {v10, p0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum$1;-><init>(Lcom/sec/android/gallery3d/data/MapMarkerAlbum;)V

    invoke-static {v6, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v6
.end method

.method public getMediaItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsUpdateAll:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->loadData()V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mDataVersion:J

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsUpdateAll:Z

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mDataVersion:J

    return-wide v0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mUpdateItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mUpdateItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->reloadItem(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method public setBetweenDate(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v1, ","

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [J

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v1, v2

    iput-object v1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBwnDate:[J

    :cond_0
    return-void
.end method

.method public setLatitudeLongitudeBounds(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->needToCallDB:Z

    new-instance v0, Ljava/util/StringTokenizer;

    const-string/jumbo v2, ","

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    :goto_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(latitude >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "latitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseImageWhere:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "(latitude >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "latitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "longitude"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mBaseVideoWhere:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    return-void
.end method

.method public updateItem(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mIsUpdateAll:Z

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MapMarkerAlbum;->mUpdateItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-void
.end method
