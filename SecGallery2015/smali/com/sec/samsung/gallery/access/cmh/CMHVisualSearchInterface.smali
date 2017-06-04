.class public Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;
.super Ljava/lang/Object;
.source "CMHVisualSearchInterface.java"


# static fields
.field private static final BURST_SHOT:Ljava/lang/String; = " ( group_id != 0 AND best_image = 1 ) "

.field private static final FEATURE_UNION_CMH:Z

.field static final FEATURE_USE_ALBUM_HIDE:Z

.field public static final INDEX_SHOT_MODE_BURST_SHOT:I = 0x12

.field private static final INDEX_SHOT_MODE_IMAGE:I = 0x0

.field private static final INDEX_SHOT_MODE_IMAGE_360:I = 0x9

.field private static final INDEX_SHOT_MODE_IMAGE_ANIMATED_GIF:I = 0x3

.field private static final INDEX_SHOT_MODE_IMAGE_DUAL_CAMERA:I = 0x5

.field private static final INDEX_SHOT_MODE_IMAGE_PANORAMA:I = 0x1

.field private static final INDEX_SHOT_MODE_IMAGE_SELECTIVE_FOCUS:I = 0x2

.field private static final INDEX_SHOT_MODE_IMAGE_SELFIE:I = 0xa

.field private static final INDEX_SHOT_MODE_IMAGE_SHOT_N_MORE:I = 0x6

.field private static final INDEX_SHOT_MODE_IMAGE_SOUND_N_SHOT:I = 0x7

.field private static final INDEX_SHOT_MODE_IMAGE_SURROUND_SHOT:I = 0x8

.field private static final INDEX_SHOT_MODE_IMAGE_VIRTUAL_SHOT:I = 0x4

.field private static final INDEX_SHOT_MODE_VIDEO:I = 0xb

.field private static final INDEX_SHOT_MODE_VIDEO_360:I = 0x11

.field private static final INDEX_SHOT_MODE_VIDEO_FAST_MOTION:I = 0xe

.field private static final INDEX_SHOT_MODE_VIDEO_HYPER_LAPSE:I = 0xd

.field private static final INDEX_SHOT_MODE_VIDEO_SLOW_MOTION:I = 0xc

.field private static final INDEX_SHOT_MODE_VIDEO_VIDEO_COLLAGE:I = 0xf

.field private static final INDEX_SHOT_MODE_VIDEO_VIDEO_FLIP:I = 0x10

.field private static final IS_VIDEO_360:Ljava/lang/String; = " is_360_video = 1 "

.field private static final MEDIA_TYPE_IMAGE:Ljava/lang/String; = " media_type = 1 "

.field private static final MEDIA_TYPE_VIDEO:Ljava/lang/String; = " media_type = 3 "

.field private static final RECORDING_MODE:Ljava/lang/String; = " recording_mode = "

.field private static final SEFIE_WHERE:Ljava/lang/String;

.field private static final SEF_FILE_TYPE:Ljava/lang/String; = " sef_file_type = "

.field public static final SHOT_MODE_MAP:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

.field private static final TAG:Ljava/lang/String; = "CMHVSearchInterface"

.field public static final WHERE_HIDE:Ljava/lang/String; = "((bucket_id is null) OR (bucket_id NOT IN (select distinct(bucket_id) FROM files WHERE is_hide = 1)))"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumHide:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    sput-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_USE_ALBUM_HIDE:Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    sput-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_UNION_CMH:Z

    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHShotModeType;->SELFIE_SHOT_MODE_TYPE:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    const/16 v4, 0x27

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v4, "\', "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-lt v1, v5, :cond_1

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, -0x2

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sef_file_type IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_SELFIE_FILTER:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SEFIE_WHERE:Ljava/lang/String;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sput-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x0

    const-string/jumbo v4, " media_type = 1 "

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x1

    const-string/jumbo v4, " sef_file_type = 2272"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const-string/jumbo v3, " sef_file_type = 2112"

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x3

    const-string/jumbo v4, " sef_file_type = 2400"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x4

    const-string/jumbo v4, " sef_file_type = 2256"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x5

    const-string/jumbo v4, " sef_file_type = 2592"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x6

    const-string/jumbo v4, " sef_file_type = 2096"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/4 v3, 0x7

    const-string/jumbo v4, " sef_file_type = 2048"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0x8

    const-string/jumbo v4, " sef_file_type = 2384"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0x9

    const-string/jumbo v4, " sef_file_type = 2640"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0xa

    sget-object v4, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SEFIE_WHERE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0xb

    const-string/jumbo v4, " media_type = 3 "

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0xc

    const-string/jumbo v4, " recording_mode = 1"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0xd

    const-string/jumbo v4, " recording_mode = 5"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0xe

    const-string/jumbo v4, " recording_mode = 2"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0xf

    const-string/jumbo v4, " recording_mode = 3"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0x10

    const-string/jumbo v4, " recording_mode = 4"

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0x11

    const-string/jumbo v4, " is_360_video = 1 "

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->SHOT_MODE_MAP:Landroid/util/SparseArray;

    const/16 v3, 0x12

    const-string/jumbo v4, " ( group_id != 0 AND best_image = 1 ) "

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addSearchItems(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-direct {v2, v1, v0}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;)V

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CMHVSearchInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queried contents count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method

.method public static getContentItems(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v2, "CMHVSearchInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContentItems for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_USE_ALBUM_HIDE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "( "

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "((bucket_id is null) OR (bucket_id NOT IN (select distinct(bucket_id) FROM files WHERE is_hide = 1)))"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    :try_start_1
    const-string/jumbo v2, "uri"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v2, "/"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "datetaken"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v15, 0x0

    const-string/jumbo v2, "pos_ratio"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    :cond_1
    const/4 v13, 0x0

    const-string/jumbo v2, "is_cloud"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    const/4 v13, 0x1

    :cond_2
    :goto_1
    sget-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_UNION_CMH:Z

    if-eqz v2, :cond_6

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-direct {v2, v3, v10, v15, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;Ljava/lang/String;Z)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CMHVSearchInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queried contents count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_3
    const-string/jumbo v2, "CMHVSearchInterface"

    const-string/jumbo v3, "CMHVisualSearchInterface:getContentItems time : %d ms, selection : %s."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p3, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_4
    :try_start_3
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_4
    const-string/jumbo v2, "CMHVSearchInterface"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_3

    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    :cond_6
    :try_start_5
    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v10, v15, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;Ljava/lang/String;Z)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v11

    :try_start_6
    const-string/jumbo v2, "CMHVSearchInterface"

    invoke-virtual {v11}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static getContentItemsByRaw(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v2, "CMHVSearchInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getContentItems for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    const-string/jumbo v2, "uri"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v2, "/"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v2, "datetaken"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/16 v16, 0x0

    const-string/jumbo v2, "scene_position"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_1

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v16, v15

    :cond_1
    const/4 v13, 0x0

    const-string/jumbo v2, "is_cloud"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const/4 v2, -0x1

    if-eq v8, v2, :cond_2

    invoke-interface {v9, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    const/4 v13, 0x1

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_UNION_CMH:Z

    if-eqz v2, :cond_5

    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    const-string/jumbo v3, "_id"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v10, v0, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;Ljava/lang/String;Z)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CMHVSearchInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "queried contents count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    const-string/jumbo v2, "CMHVSearchInterface"

    const-string/jumbo v3, "CMHVisualSearchInterface:getContentItemsByRaw time : %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v14

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    :try_start_1
    new-instance v2, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v16

    invoke-direct {v2, v3, v10, v0, v13}, Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;-><init>(ILjava/lang/Long;Ljava/lang/String;Z)V

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v11

    :try_start_2
    const-string/jumbo v2, "CMHVSearchInterface"

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v9}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method public static getEventSearchItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_UNION_CMH:Z

    if-eqz v0, :cond_0

    const-string/jumbo v8, "fileid"

    :goto_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v12, p1}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getWhereOfEventSearchItems(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    :try_start_0
    const-string/jumbo v0, "CMHVSearchInterface"

    const-string/jumbo v1, "getEventSearchItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "DISTINCT "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v3, "datetaken"

    aput-object v3, v2, v0

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-static {v6, v9}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->addSearchItems(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_1
    const-string/jumbo v0, "CMHVSearchInterface"

    const-string/jumbo v1, "CMHVisualSearchInterface:getEventSearchItems time : %d ms, selection : %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    const-string/jumbo v8, "media_id"

    goto :goto_0

    :catch_0
    move-exception v7

    :try_start_1
    const-string/jumbo v0, "CMHVSearchInterface"

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v6}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v0
.end method

.method public static getSpecifySearchItems(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/GallerySearchAlbum$SearchItem;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_UNION_CMH:Z

    if-eqz v2, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v10, "image_id"

    :goto_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v5, p2

    :goto_1
    :try_start_0
    const-string/jumbo v2, "CMHVSearchInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSpecifySearchItems : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v10, v4, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "datetaken"

    aput-object v3, v4, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v7}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->cmhQuery(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    invoke-static {v8, v11}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->addSearchItems(Landroid/database/Cursor;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_2
    const-string/jumbo v2, "CMHVSearchInterface"

    const-string/jumbo v3, "CMHVisualSearchInterface:getSpecifySearchItems time : %d ms"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :cond_0
    const-string/jumbo v10, "_id"

    goto :goto_0

    :cond_1
    const-string/jumbo v10, "media_id"

    goto :goto_0

    :cond_2
    move-object/from16 v0, p2

    invoke-static {v14, v0}, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->getWhereOfSpecifySearchItems(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :catch_0
    move-exception v9

    :try_start_1
    const-string/jumbo v2, "CMHVSearchInterface"

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    invoke-static {v8}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private static getWhereOfEventSearchItems(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is_recommended"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " = 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "is_shared"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " != 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_USE_ALBUM_HIDE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "((bucket_id is null) OR (bucket_id NOT IN (select distinct(bucket_id) FROM files WHERE is_hide = 1)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method private static getWhereOfSpecifySearchItems(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 2

    const-string/jumbo v0, "(file_status = 0 OR file_status = 4)"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/sec/samsung/gallery/access/cmh/CMHVisualSearchInterface;->FEATURE_USE_ALBUM_HIDE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "((bucket_id is null) OR (bucket_id NOT IN (select distinct(bucket_id) FROM files WHERE is_hide = 1)))"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, " AND "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-object p0
.end method
