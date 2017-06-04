.class public Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "LocalCameraAlbumSet.java"


# static fields
.field private static final BUCKET_GROUP_BY:Ljava/lang/String; = " GROUP BY bucket_id, (media_type"

.field private static final BUCKET_ORDER_BY:Ljava/lang/String; = "UPPER(bucket_display_name)"

.field private static final EXTERNAL_MEDIA:Ljava/lang/String; = "external"

.field private static final INDEX_DATA:I = 0x2

.field private static final MEDIATYPE_IMAGE:Ljava/lang/String; = "media_type=1"

.field private static final MEDIATYPE_IMAGES_AND_VIDEOS:Ljava/lang/String; = "media_type=1 OR media_type=3"

.field private static final MEDIATYPE_VIDEO:Ljava/lang/String; = "media_type=3"

.field public static final PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

.field public static final PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

.field private static final PROJECTION_BUCKET:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LocalCameraAlbumSet"

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mWatchUris:[Landroid/net/Uri;


# instance fields
.field private final mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

.field private mLoadBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation
.end field

.field private final mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

.field private final mSingleBucketId:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "bucket_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "bucket_display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const-string/jumbo v0, "external"

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mBaseUri:Landroid/net/Uri;

    new-array v0, v5, [Landroid/net/Uri;

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v2

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    aput-object v1, v0, v3

    const-string/jumbo v1, "external"

    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mWatchUris:[Landroid/net/Uri;

    const-string/jumbo v0, "/localcamera/image"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/localcamera/video"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;I)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;I)V
    .locals 2

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    iput p3, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mSingleBucketId:I

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mWatchUris:[Landroid/net/Uri;

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    return-void
.end method

.method private static circularShiftRight([Ljava/lang/Object;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;II)V"
        }
    .end annotation

    sub-int v1, p2, p1

    if-lez v1, :cond_0

    aget-object v0, p0, p2

    add-int/lit8 v1, p1, 0x1

    sub-int v2, p2, p1

    invoke-static {p0, p1, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, p0, p1

    :cond_0
    return-void
.end method

.method private static findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I
    .locals 3

    const/4 v0, 0x0

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    iget v2, v2, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    if-ne v2, p1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private getDcimAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 20

    const/4 v13, 0x0

    const/16 v17, 0x0

    const/4 v2, 0x0

    aget-object v2, p2, v2

    iget v11, v2, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_2

    mul-int/lit8 v17, p4, 0x2

    :cond_0
    :goto_0
    sget-object v9, Lcom/sec/android/gallery3d/data/LibraryDataManager;->sDateTakenComparator:Ljava/util/Comparator;

    move/from16 v0, v17

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v16, v0

    const/4 v12, 0x0

    move v14, v13

    :goto_1
    move/from16 v0, p4

    if-ge v12, v0, :cond_4

    aget-object v10, p2, v12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x2

    if-lez v2, :cond_a

    add-int/lit8 v13, v14, 0x1

    const/4 v4, 0x2

    sget-object v5, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    iget v6, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v7, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getLocalCameraAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v16, v14

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    and-int/lit8 v2, v2, 0x4

    if-lez v2, :cond_1

    add-int/lit8 v14, v13, 0x1

    const/4 v4, 0x4

    sget-object v5, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    iget v6, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    iget-object v7, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    iget-object v8, v10, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getLocalCameraAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v16, v13

    move v13, v14

    :cond_1
    add-int/lit8 v12, v12, 0x1

    move v14, v13

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    :cond_3
    move/from16 v17, p4

    goto :goto_0

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;

    if-eqz v2, :cond_5

    move-object/from16 v15, v18

    check-cast v15, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;

    move-object v2, v15

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;->changeSources([Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_3
    const/4 v2, 0x1

    invoke-virtual {v15, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setCameraAlbum(Z)V

    return-object v15

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    :cond_6
    if-eqz v18, :cond_7

    move-object/from16 v15, v18

    check-cast v15, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    goto :goto_3

    :cond_7
    new-instance v15, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    const/4 v2, 0x1

    :goto_4
    move-object/from16 v0, v19

    invoke-direct {v15, v0, v3, v11, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZ)V

    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    :cond_9
    new-instance v15, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v9, v2, v1}, Lcom/sec/android/gallery3d/data/LocalCameraMergeAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Ljava/util/Comparator;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;[Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_3

    :cond_a
    move v13, v14

    goto/16 :goto_2
.end method

.method private getLocalCameraAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 10

    invoke-virtual {p3, p4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->peekMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v9

    if-eqz v9, :cond_1

    instance-of v0, v9, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    if-eqz v0, :cond_0

    move-object v0, v9

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->isCameraPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v0, v9

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDCIMName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;->setName(Ljava/lang/String;)V

    :cond_0
    move-object v0, v9

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v0, v9

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    check-cast v9, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_1
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    const/4 v4, 0x1

    move v3, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    const/4 v4, 0x0

    move v3, p4

    move-object v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/gallery3d/data/LocalCameraAlbum;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;IZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getTypeFromPath(Lcom/sec/android/gallery3d/data/Path;)I
    .locals 4

    iget v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mSingleBucketId:I

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->split()[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v3, v1, 0x1

    if-ge v2, v3, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    aget-object v2, v0, v1

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getTypeFromString(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private isCameraPath(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/data/BucketHelper;->CAMERA_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/BucketHelper;->CAMERA_EXTERNAL_PATH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadBucketEntries(Landroid/database/Cursor;)[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4, v2}, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    return-object v3
.end method

.method private loadSubMediaSets()Ljava/util/ArrayList;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ">;"
        }
    .end annotation

    sget-object v4, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->assertNotInRenderThread()V

    const/4 v15, 0x0

    const/16 v17, 0x0

    :try_start_0
    const-string/jumbo v6, " GROUP BY bucket_id, (media_type"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mSingleBucketId:I

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bucket_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mSingleBucketId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->PROJECTION_BUCKET:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "UPPER(bucket_display_name)"

    const-string/jumbo v9, "LocalCameraAlbumSet"

    invoke-static/range {v3 .. v9}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-nez v15, :cond_5

    const-string/jumbo v3, "LocalCameraAlbumSet"

    const-string/jumbo v5, "cannot open local database: "

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_1
    return-object v14

    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "media_type=1 OR media_type=3)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "media_type=1)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "media_type=3)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->loadBucketEntries(Landroid/database/Cursor;)[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v17

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    const/16 v22, 0x0

    const/16 v16, 0x0

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDataManager()Lcom/sec/android/gallery3d/data/LibraryDataManager;

    move-result-object v8

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v20

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_6

    move/from16 v24, v22

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v5, 0x0

    aget-object v7, v17, v24

    aput-object v7, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v5, v7}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getDcimAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v23

    :cond_6
    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->CAMERA_BUCKET_ID:I

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v20

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_7

    move/from16 v24, v22

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v5, 0x0

    aget-object v7, v17, v24

    aput-object v7, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v5, v7}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getDcimAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v23

    :cond_7
    sget v3, Lcom/sec/android/gallery3d/util/MediaSetUtils;->SDCARD_CAMERA_BUCKET_ID:I

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v20

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_8

    move/from16 v24, v22

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;

    const/4 v5, 0x0

    aget-object v7, v17, v24

    aput-object v7, v3, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v3, v5, v7}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getDcimAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;[Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;Lcom/sec/android/gallery3d/data/Path;I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    move/from16 v22, v23

    :cond_8
    sget v3, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->COVER_CAMERA_BUCKET_ID:I

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v20

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_9

    add-int/lit8 v23, v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    move/from16 v22, v23

    :cond_9
    sget v3, Lcom/sec/android/gallery3d/app/GalleryCoverMode;->SDCARD_COVER_CAMERA_BUCKET_ID:I

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->findBucket([Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;I)I

    move-result v20

    const/4 v3, -0x1

    move/from16 v0, v20

    if-eq v0, v3, :cond_a

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->circularShiftRight([Ljava/lang/Object;II)V

    :cond_a
    move/from16 v19, v16

    :goto_1
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v19

    if-ge v0, v3, :cond_b

    aget-object v18, v17, v19

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mType:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mPath:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, v18

    iget v11, v0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketId:I

    move-object/from16 v0, v18

    iget-object v12, v0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v13, v0, Lcom/sec/android/gallery3d/data/BucketHelper$BucketEntry;->bucketPath:Ljava/lang/String;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->getLocalCameraAlbum(Lcom/sec/android/gallery3d/data/LibraryDataManager;ILcom/sec/android/gallery3d/data/Path;ILjava/lang/String;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v15}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3

    :cond_b
    const/16 v19, 0x0

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v21

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    add-int/lit8 v19, v19, 0x1

    goto :goto_2
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public reload()J
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->loadSubMediaSets()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDataVersion:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDefaultAppContext:Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00de

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->setDCIMName(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mLoadBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDataVersion:J

    :cond_2
    iget-wide v2, p0, Lcom/sec/android/gallery3d/data/LocalCameraAlbumSet;->mDataVersion:J

    return-wide v2
.end method
