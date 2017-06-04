.class public Lcom/sec/android/gallery3d/util/BurstImageUtils;
.super Ljava/lang/Object;
.source "BurstImageUtils.java"


# static fields
.field private static final CMH_WHERE_NORMAL:Ljava/lang/String; = "bucket_id = ? AND group_id = ? and (file_status = 0 or file_status = 4)"

.field private static final CMH_WHERE_TRASH:Ljava/lang/String; = "bucket_id = ? AND group_id = ? and file_status = 2"

.field private static final IMAGE_PROJECTION_ID_DATA:[Ljava/lang/String;

.field private static final IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

.field private static final ORDER:Ljava/lang/String; = "datetaken DESC, _id DESC"

.field private static final TAG:Ljava/lang/String; = "BurstImageUtils"

.field private static final UNION_LOCAL_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

.field private static final UNION_SCLOUD_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

.field private static final WHERE:Ljava/lang/String; = "bucket_id = ? AND group_id = ? "

.field private static final mBaseUri:Landroid/net/Uri;

.field private static final mCMHBaseUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mCMHBaseUri:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "_data"

    aput-object v1, v0, v3

    sput-object v0, Lcom/sec/android/gallery3d/util/BurstImageUtils;->IMAGE_PROJECTION_ID_DATA:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/BurstImageUtils;->IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/BurstImageUtils;->UNION_LOCAL_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "cloud_size"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/gallery3d/util/BurstImageUtils;->UNION_SCLOUD_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addContentValues(Ljava/util/ArrayList;Landroid/content/ContentValues;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static copyAllBurstShotImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I
    .locals 26

    const/4 v9, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v22

    sget-object v23, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1

    const-string/jumbo v22, "images_event_album"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1, v4, v10, v11}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/util/ArrayList;

    move-result-object v21

    :cond_0
    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->generateGroupId(Landroid/content/Context;)I

    move-result v14

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_2

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;

    const-string/jumbo v23, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v8, v1, v12}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    const/16 v23, 0x0

    const-string/jumbo v24, "."

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v15

    const-string/jumbo v23, "_id"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v23, "bucket_id"

    invoke-static/range {p2 .. p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v23, "bucket_display_name"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "title"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, "group_id"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    int-to-long v0, v14

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-static {v13, v0, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->insertGroupIdToSEF(Ljava/lang/String;J)V

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    sget-object v22, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v4, v10, v11, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v22, "BurstImageUtils"

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_2
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v9, v0, :cond_5

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;

    sget-object v23, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-static/range {v23 .. v23}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v23

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :try_start_1
    sget-object v22, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_4
    :goto_3
    return v9

    :catch_1
    move-exception v6

    const-string/jumbo v22, "BurstImageUtils"

    invoke-virtual {v6}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_3

    :catch_2
    move-exception v6

    const-string/jumbo v22, "BurstImageUtils"

    invoke-virtual {v6}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_6
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/content/ContentValues;

    const-string/jumbo v23, "_data"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    new-instance v7, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_4
.end method

.method public static copyAllBurstShotUnionImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I
    .locals 23

    const/4 v15, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v6

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUnionBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v22

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v17, 0x1

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v5, "cloud_server_id"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v5, "is_cloud"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    if-eqz v12, :cond_1

    if-eqz v16, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    if-eqz v12, :cond_3

    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    const-string/jumbo v5, "cloud_server_path"

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    new-instance v20, Ljava/io/File;

    move-object/from16 v0, v20

    invoke-direct {v0, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/16 v17, 0x0

    goto :goto_0

    :cond_3
    if-eqz v16, :cond_0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->copyAllBurstShotUnionLocalImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v17, :cond_6

    if-eqz v14, :cond_5

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    invoke-static {v0, v11, v10}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->copyListByServerId(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v15

    :cond_7
    move v4, v15

    goto :goto_1
.end method

.method private static copyAllBurstShotUnionLocalImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->generateGroupId(Landroid/content/Context;)I

    move-result v8

    const/4 v13, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    const-string/jumbo v17, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v5, v1, v6}, Lcom/sec/samsung/gallery/util/FileUtil;->copyFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v17, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x0

    const-string/jumbo v18, "."

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    const-string/jumbo v17, "_id"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "is_cloud"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "media_id"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_id"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_cached_path"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_thumb_path"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "file_status"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_server_path"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_size"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_original_size"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_is_uploaded"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_server_id"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "cloud_is_available_thumb"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "best_image"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "image_url"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "vendor"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v17, "bucket_id"

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v17, "bucket_display_name"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "title"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v17, "group_id"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    int-to-long v0, v8

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    invoke-static {v7, v0, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->insertGroupIdToSEF(Ljava/lang/String;J)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v16, "BurstImageUtils"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :cond_0
    if-eqz v13, :cond_3

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    sget-object v17, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-static/range {v17 .. v17}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :try_start_1
    sget-object v16, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v12, v0, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    return v13

    :catch_1
    move-exception v3

    const-string/jumbo v16, "BurstImageUtils"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_2

    :catch_2
    move-exception v3

    const-string/jumbo v16, "BurstImageUtils"

    invoke-virtual {v3}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_4
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/ContentValues;

    const-string/jumbo v17, "_data"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method public static delete(Landroid/content/Context;JI)Z
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteBurstShot(Landroid/content/Context;JI)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    const-string/jumbo v5, "bucket_id = ? AND group_id = ? "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BurstImageUtils"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0
.end method

.method private static generateGroupId(Landroid/content/Context;)I
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    int-to-long v4, v0

    sub-long/2addr v2, v4

    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const v4, 0x7fffffff

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method public static getBucketIdFromDB(Landroid/content/Context;I)I
    .locals 9

    const/4 v0, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v3, "_id = ?"

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "bucket_id"

    aput-object v0, v2, v7

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const-string/jumbo v6, "BurstImageUtils"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-nez v8, :cond_0

    const-string/jumbo v0, "BurstImageUtils"

    const-string/jumbo v4, "query fail: "

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return v7

    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :cond_1
    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getBurstShotCount(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 10

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v1

    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-eqz v7, :cond_0

    instance-of v7, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v7, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "images_event_album"

    invoke-static {p0, v7, v1, v2, v3}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/util/ArrayList;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/sec/android/gallery3d/util/BurstImageUtils;->IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v7}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    :cond_4
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v7, :cond_7

    move-object v7, p1

    check-cast v7, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/UnionImage;->isCloudOnlyItem()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v4, Lcom/sec/android/gallery3d/util/BurstImageUtils;->UNION_SCLOUD_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    :goto_2
    instance-of v7, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v7, :cond_5

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getFileStatus()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    const/4 v5, 0x1

    :cond_5
    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUnionBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1

    :cond_6
    sget-object v4, Lcom/sec/android/gallery3d/util/BurstImageUtils;->UNION_LOCAL_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    goto :goto_2

    :cond_7
    instance-of v7, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v7, :cond_2

    check-cast p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->getAlbumId()I

    move-result v1

    sget-object v7, Lcom/sec/android/gallery3d/util/BurstImageUtils;->IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    invoke-static {p0, v1, v2, v3, v7}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->getBurstShotItem(Landroid/content/Context;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    goto :goto_1
.end method

.method public static getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IJ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    const-string/jumbo v3, "bucket_id = ? AND group_id = ? "

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    const-string/jumbo v6, "BurstImageUtils"

    move-object v0, p0

    move-object v2, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_0

    const-string/jumbo v0, "BurstImageUtils"

    const-string/jumbo v1, "query fail: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->addContentValues(Ljava/util/ArrayList;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_1
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public static getBurstShotItem(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const-string/jumbo v0, "images_hidden_album"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    sget-object v1, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    array-length v0, v2

    add-int/lit8 v0, v0, -0x1

    const-string/jumbo v1, "source_album"

    aput-object v1, v2, v0

    :goto_0
    :try_start_0
    invoke-static {p0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getLocalDatabaseManager(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    const-string/jumbo v3, "bucket_id = ? AND group_id = ? "

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_1

    const-string/jumbo v0, "BurstImageUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "query fail: getBurstShotItem "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v7

    :cond_0
    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v6, v8}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->addContentValues(Ljava/util/ArrayList;Landroid/content/ContentValues;)V

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getBurstShotPaths(Landroid/content/Context;IJ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v4, Lcom/sec/android/gallery3d/util/BurstImageUtils;->IMAGE_PROJECTION_ID_DATA:[Ljava/lang/String;

    invoke-static {v0, p1, p2, p3, v4}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const-string/jumbo v5, "_data"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static getBurstShotUriList(Landroid/content/ContentResolver;IJ)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IJ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotUriList(Landroid/content/ContentResolver;IJLandroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getBurstShotUriList(Landroid/content/ContentResolver;IJLandroid/net/Uri;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IJ",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v11, 0x1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    sget-object v2, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "sef_file_type"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string/jumbo v4, "sef_file_sub_type"

    aput-object v4, v3, v1

    const-string/jumbo v4, "bucket_id = ? AND group_id = ? "

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x1

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string/jumbo v6, "datetaken DESC, _id DESC"

    const-string/jumbo v7, "BurstImageUtils"

    move-object v1, p0

    invoke-static/range {v1 .. v7}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_0

    const-string/jumbo v1, "BurstImageUtils"

    const-string/jumbo v2, "query fail: "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_0
    return-object v8

    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v11, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v8, v1, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v1

    :cond_1
    :try_start_2
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private static getLocalDatabaseManager(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;
    .locals 2

    instance-of v1, p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v1

    return-object v1

    :cond_0
    move-object v0, p0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    goto :goto_0
.end method

.method public static getSizeBurstShot(Landroid/content/Context;Lcom/sec/android/gallery3d/data/LocalImage;)I
    .locals 12

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;->groupId:J

    iget v1, p1, Lcom/sec/android/gallery3d/data/LocalImage;->bucketId:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "images_event_album"

    invoke-static {p0, v8, v1, v2, v3}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/util/ArrayList;

    move-result-object v7

    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v9, "_size"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v5, v9

    goto :goto_1

    :cond_0
    sget-object v8, Lcom/sec/android/gallery3d/util/BurstImageUtils;->IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    invoke-static {v4, v1, v2, v3, v8}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_0

    :cond_1
    const-string/jumbo v9, "BurstImageUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ContentValue "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "has no integer SIZE column."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return v5
.end method

.method public static getSizeUnionBurstShot(Landroid/content/Context;Lcom/sec/android/gallery3d/data/UnionImage;)I
    .locals 14

    iget-wide v2, p1, Lcom/sec/android/gallery3d/data/UnionImage;->groupId:J

    iget v1, p1, Lcom/sec/android/gallery3d/data/UnionImage;->bucketId:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionImage;->isCloudOnlyItem()Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v4, Lcom/sec/android/gallery3d/util/BurstImageUtils;->UNION_SCLOUD_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    :goto_0
    instance-of v10, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v10, :cond_1

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->getFileStatus()I

    move-result v10

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static/range {v0 .. v5}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUnionBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    const-string/jumbo v11, "_size"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v7, v11

    goto :goto_2

    :cond_0
    sget-object v4, Lcom/sec/android/gallery3d/util/BurstImageUtils;->UNION_LOCAL_IMAGE_PROJECTION_SIZE:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v11, "BurstImageUtils"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ContentValue "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "has no integer SIZE column."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return v7
.end method

.method private static getUnionBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;Z)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "IJ[",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    if-eqz p5, :cond_0

    const-string/jumbo v3, "bucket_id = ? AND group_id = ? and file_status = 2"

    :goto_0
    :try_start_0
    sget-object v1, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mCMHBaseUri:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const/4 v0, 0x1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v0

    const-string/jumbo v5, "datetaken DESC, _id DESC"

    const-string/jumbo v6, "BurstImageUtils"

    move-object v0, p0

    move-object v2, p4

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v0, "BurstImageUtils"

    const-string/jumbo v1, "query fail: "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    return-object v8

    :cond_0
    const-string/jumbo v3, "bucket_id = ? AND group_id = ? and (file_status = 0 or file_status = 4)"

    goto :goto_0

    :cond_1
    :goto_2
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    invoke-static {v7, v9}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->addContentValues(Ljava/util/ArrayList;Landroid/content/ContentValues;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0

    :cond_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1
.end method

.method public static getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v5, 0x0

    :cond_1
    return-object v5

    :cond_2
    const-string/jumbo v6, "\\."

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "%s.%s"

    new-array v7, v11, [Ljava/lang/Object;

    aget-object v8, v3, v9

    aput-object v8, v7, v9

    aget-object v8, v3, v10

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "%s_%02d.%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v8, v3, v9

    aput-object v8, v7, v9

    add-int/lit8 v2, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    aget-object v8, v3, v10

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move v1, v2

    goto :goto_0
.end method

.method private static insertGroupIdToSEF(Ljava/lang/String;J)V
    .locals 7

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "Burst_Shot_Info"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/16 v4, 0x9e0

    sget v5, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->OVERWRITE_IF_EXISTS:I

    invoke-static {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/lib/factory/SefWrapper;->addData(Ljava/io/File;Ljava/lang/String;[BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "BurstImageUtils"

    const-string/jumbo v3, "error while addSEFData in insertGroupIdToSEF"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static moveAllBurstShotImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->copyAllBurstShotImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v6

    invoke-static {p0, v4, v5, v6}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->delete(Landroid/content/Context;JI)Z

    move-result v1

    :cond_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static moveAllBurstShotUnionImage(Landroid/content/Context;Lcom/sec/android/gallery3d/data/UnionImage;Ljava/lang/String;)I
    .locals 26

    const/16 v17, 0x1

    const/16 v16, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getBucketId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getGroupId()J

    move-result-wide v6

    sget-object v8, Lcom/sec/android/gallery3d/data/UnionImage;->PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUnionBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v25

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSyncOffFolder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v10, 0x1

    :cond_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    const/16 v19, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/content/ContentValues;

    const-string/jumbo v5, "cloud_server_id"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v5, "is_cloud"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    if-eqz v13, :cond_2

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v19, 0x0

    goto :goto_0

    :cond_2
    if-eqz v13, :cond_4

    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    const-string/jumbo v5, "cloud_server_path"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_1

    new-instance v23, Ljava/io/File;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/16 v19, 0x0

    goto :goto_0

    :cond_4
    if-eqz v18, :cond_1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->copyAllBurstShotUnionLocalImage(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getGroupId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getBucketId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->delete(Landroid/content/Context;JI)Z

    move-result v16

    :cond_6
    if-eqz v19, :cond_8

    if-eqz v15, :cond_7

    if-eqz v16, :cond_7

    const/4 v4, 0x1

    :goto_1
    return v4

    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    :cond_8
    if-eqz v15, :cond_b

    if-eqz v16, :cond_b

    if-eqz v10, :cond_9

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v1, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->deleteByServerId(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    :cond_9
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v12, v11, v4}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->moveListByServerId(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)I

    move-result v17

    :cond_a
    move/from16 v4, v17

    goto :goto_1

    :cond_b
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static moveToSecret(Landroid/content/Context;IJLjava/lang/String;)Z
    .locals 22

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v18, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    move/from16 v0, p1

    move-wide/from16 v1, p2

    move-object/from16 v3, v18

    invoke-static {v13, v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x1

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    const-string/jumbo v19, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getUniqueFilename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v7, v1, v8}, Lcom/sec/samsung/gallery/util/FileUtil;->moveFileForPrivate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v19, Ljava/io/File;

    move-object/from16 v0, v19

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v19, 0x0

    const-string/jumbo v20, "."

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    const-string/jumbo v19, "_id"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v19, "bucket_id"

    invoke-static/range {p4 .. p4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getBucketId(Ljava/lang/String;)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v19, "bucket_display_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "title"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v19, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v18, "BurstImageUtils"

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    :cond_0
    if-eqz v14, :cond_4

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    sget-object v19, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-static/range {v19 .. v19}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v18

    if-eqz v18, :cond_2

    :try_start_1
    sget-object v18, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0, v11}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->delete(Landroid/content/Context;JI)Z

    :cond_3
    :goto_2
    return v14

    :catch_1
    move-exception v5

    const-string/jumbo v18, "BurstImageUtils"

    invoke-virtual {v5}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_2

    :catch_2
    move-exception v5

    const-string/jumbo v18, "BurstImageUtils"

    invoke-virtual {v5}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/content/ContentValues;

    const-string/jumbo v19, "_data"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_3
.end method

.method public static rotate(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;II)V
    .locals 28

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v6

    add-int v24, p2, p3

    move/from16 v0, v24

    rem-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    if-gez v16, :cond_0

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x168

    move/from16 v16, v0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v24

    sget-object v25, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_2

    const-string/jumbo v24, "images_event_album"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1, v6, v12, v13}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/Context;Ljava/lang/String;IJ)Ljava/util/ArrayList;

    move-result-object v22

    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_1
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentValues;

    const-string/jumbo v25, "_data"

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v0, v16

    invoke-static {v11, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->updateExifData(Ljava/lang/String;I)V

    new-instance v25, Ljava/io/File;

    move-object/from16 v0, v25

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->length()J

    move-result-wide v20

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "_id = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "_id"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v25, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-static/range {v25 .. v25}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "_size"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    const-string/jumbo v26, "orientation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v25, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v25

    if-eqz v25, :cond_1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v25, "_size"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v25, "orientation"

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    sget-object v24, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-static {v15, v6, v12, v13, v0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getBurstShotItem(Landroid/content/ContentResolver;IJ[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v22

    goto/16 :goto_0

    :cond_3
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v24

    sget-object v25, Lcom/sec/android/gallery3d/util/BurstImageUtils;->mBaseUri:Landroid/net/Uri;

    invoke-virtual/range {v25 .. v25}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    sget-object v24, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v24

    if-eqz v24, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/sec/android/gallery3d/util/BurstImageUtils;->getLocalDatabaseManager(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v24

    const-string/jumbo v25, "images_event_album"

    const/16 v26, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v18

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->updateEventInfo(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_4

    sget-object v24, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v24 .. v24}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v24

    if-eqz v24, :cond_4

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v9

    :goto_3
    const-string/jumbo v24, "BurstImageUtils"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v9

    goto :goto_3
.end method

.method private static updateExifData(Ljava/lang/String;I)V
    .locals 7

    new-instance v3, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    sget v5, Lcom/sec/android/gallery3d/exif/ExifInterface;->TAG_ORIENTATION:I

    invoke-static {p1}, Lcom/sec/android/gallery3d/exif/ExifInterface;->getOrientationValueForRotation(I)S

    move-result v6

    invoke-static {v6}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/gallery3d/exif/ExifInterface;->buildTag(ILjava/lang/Object;)Lcom/sec/android/gallery3d/exif/ExifTag;

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_0
    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/exif/ExifInterface;->setTag(Lcom/sec/android/gallery3d/exif/ExifTag;)Lcom/sec/android/gallery3d/exif/ExifTag;

    invoke-virtual {v3, p0}, Lcom/sec/android/gallery3d/exif/ExifInterface;->forceRewriteExif(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v5, "BurstImageUtils"

    const-string/jumbo v6, "cannot find file to set exif: "

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v5, "BurstImageUtils"

    const-string/jumbo v6, "cannot set exif data - write orientation"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "Orientation"

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getExifOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
