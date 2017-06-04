.class public Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "MapEventViewListAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MapEventViewListAlbum$DateComparator;
    }
.end annotation


# static fields
.field private static final EVENT_URI:Landroid/net/Uri;

.field private static final IMAGE_URI:Landroid/net/Uri;

.field private static final IMAGE_WHERE:Ljava/lang/String; = "latitude <> 0 AND longitude <> 0"

.field private static final MAP_PROJECT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MapEventViewListAlbum"

.field private static final VIDEO_URI:Landroid/net/Uri;

.field private static final VIDEO_WHERE:Ljava/lang/String; = "latitude <> 0 AND longitude <> 0"

.field private static final mOrder:Ljava/lang/String; = "datetaken DESC, _id DESC"


# instance fields
.field private final IMAGE_PROJECTION:Ljava/lang/String;

.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEventViewAlbumBuckId:I

.field private final mGroupProjection:[Ljava/lang/String;

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
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->IMAGE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->VIDEO_URI:Landroid/net/Uri;

    sget-object v0, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->EVENT_URI:Landroid/net/Uri;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "latitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "longitude"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->MAP_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;I)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    const-string/jumbo v2, "datetaken"

    aput-object v2, v1, v5

    const-string/jumbo v2, "latitude"

    aput-object v2, v1, v6

    const-string/jumbo v2, "longitude"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "_data"

    aput-object v3, v1, v2

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

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "from (select * from images_event_album where group_id != 0 and bucket_id = ? and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "latitude <> 0 AND longitude <> 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " order by datetaken asc, _id asc) group by group_id union select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->IMAGE_PROJECTION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mGroupProjection:[Ljava/lang/String;

    new-instance v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum$DateComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;Lcom/sec/android/gallery3d/data/MapEventViewListAlbum$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->sDateComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-static {p2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    new-array v1, v7, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->VIDEO_URI:Landroid/net/Uri;

    aput-object v2, v1, v5

    sget-object v2, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->EVENT_URI:Landroid/net/Uri;

    aput-object v2, v1, v6

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput p3, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mEventViewAlbumBuckId:I

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private loadData()V
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->makeData(Ljava/util/ArrayList;Z)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->makeData(Ljava/util/ArrayList;Z)V

    :try_start_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v3, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mMapItems:Ljava/util/ArrayList;

    const-string/jumbo v4, "MapEventViewListAlbum"

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

    :catch_0
    move-exception v2

    const-string/jumbo v4, "MapEventViewListAlbum"

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

    goto :goto_0
.end method

.method private makeData(Ljava/util/ArrayList;Z)V
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;Z)V"
        }
    .end annotation

    const/16 v19, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v3, "images_event_album"

    :goto_0
    if-eqz p2, :cond_3

    const-string/jumbo v5, "group_id = 0 and bucket_id = ? AND latitude <> 0 AND longitude <> 0"

    :goto_1
    if-eqz p2, :cond_4

    sget-object v2, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mEventViewAlbumBuckId:I

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v22

    :goto_2
    if-eqz p2, :cond_5

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mGroupProjection:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mEventViewAlbumBuckId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mEventViewAlbumBuckId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    :goto_3
    if-eqz v19, :cond_1

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v24

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    const/4 v2, 0x4

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v28

    new-instance v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const/4 v2, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-direct/range {v6 .. v18}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDDLjava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_4
    return-void

    :cond_2
    const-string/jumbo v3, "video_event_album"

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v5, "bucket_id = ? AND latitude <> 0 AND longitude <> 0"

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mEventViewAlbumBuckId:I

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v22

    goto/16 :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    sget-object v4, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->MAP_PROJECT:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mEventViewAlbumBuckId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v19

    goto/16 :goto_3

    :catch_0
    move-exception v20

    :try_start_2
    const-string/jumbo v2, "MapEventViewListAlbum"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SQLiteException : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v20 .. v20}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mMapItems:Ljava/util/ArrayList;

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

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move v0, p1

    :goto_0
    add-int v4, p1, p2

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v4, v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mMapItems:Ljava/util/ArrayList;

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

    const-string/jumbo v0, "MapEventAlbum"

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

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->loadData()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewListAlbum;->mDataVersion:J

    return-wide v0
.end method
