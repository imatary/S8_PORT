.class public Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;
.super Lcom/sec/android/gallery3d/data/MediaSet;
.source "MapEventViewMarkerAlbum.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;
    }
.end annotation


# static fields
.field private static final IMAGE_URI:Landroid/net/Uri;

.field private static final MAP_PROJECT:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MapEventViewMarkerAlbum"

.field private static final VIDEO_URI:Landroid/net/Uri;

.field private static final mOrder:Ljava/lang/String; = "datetaken DESC, _id DESC"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private mBounds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mClusterItemPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;>;"
        }
    .end annotation
.end field

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

.field private final mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

.field private final mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mEventViewAlbumBuckId:I

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
    .locals 3

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->IMAGE_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->VIDEO_URI:Landroid/net/Uri;

    const/4 v0, 0x4

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

    sput-object v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->MAP_PROJECT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Ljava/util/ArrayList;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/app/GalleryApp;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/samsung/gallery/mapfragment/MapItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->needToCallDB:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    new-instance v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;

    invoke-direct {v0, p0, v2}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$DateComparator;-><init>(Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->sDateComparator:Ljava/util/Comparator;

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    new-instance v0, Lcom/sec/android/gallery3d/data/ChangeNotifier;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->IMAGE_URI:Landroid/net/Uri;

    aput-object v2, v1, v4

    sget-object v2, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->VIDEO_URI:Landroid/net/Uri;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    sget-object v3, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1, p2}, Lcom/sec/android/gallery3d/data/ChangeNotifier;-><init>(Lcom/sec/android/gallery3d/data/MediaSet;[Landroid/net/Uri;Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    iput-object p3, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    iput p4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->needToCallDB:Z

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method private isNotMatchClusterItems(Ljava/util/ArrayList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mClusterItemPathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadData()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->needToCallDB:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mBounds:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->makeBounds(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mBounds:Ljava/util/ArrayList;

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mBounds:Ljava/util/ArrayList;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(latitude >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "latitude"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "longitude"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "longitude"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "(latitude >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "latitude"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "longitude"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " >= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "longitude"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " <= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mScanBounds:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " ) "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v9, v3}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->makeData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    invoke-direct {p0, v4, v8, v5}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->makeData(Ljava/util/ArrayList;ZLjava/lang/String;)V

    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->sDateComparator:Ljava/util/Comparator;

    invoke-static {v4, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iput-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    iput-boolean v9, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->needToCallDB:Z

    const-string/jumbo v6, "MapEventViewMarkerAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "====> Map performance : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mClusterItems:Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v6, "MapEventViewMarkerAlbum"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "IllegalArgumentException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private makeBounds(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 20
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

    const-wide/high16 v12, 0x7ff8000000000000L    # NaN

    const-wide/high16 v8, 0x7ff8000000000000L    # NaN

    const-wide/high16 v14, 0x7ff8000000000000L    # NaN

    const-wide/high16 v10, 0x7ff8000000000000L    # NaN

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mClusterItemPathList:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mClusterItemPathList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v16

    cmpl-double v16, v12, v16

    if-lez v16, :cond_2

    :cond_1
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v12

    :cond_2
    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v16

    cmpl-double v16, v14, v16

    if-lez v16, :cond_4

    :cond_3
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v14

    :cond_4
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_5

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v16

    cmpg-double v16, v8, v16

    if-gez v16, :cond_6

    :cond_5
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLatitude()D

    move-result-wide v8

    :cond_6
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v16

    if-nez v16, :cond_7

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v16

    cmpg-double v16, v10, v16

    if-gez v16, :cond_0

    :cond_7
    invoke-virtual {v3}, Lcom/sec/samsung/gallery/mapfragment/MapItem;->getOriginLongitude()D

    move-result-wide v10

    goto :goto_0

    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-eqz v5, :cond_9

    const-wide v12, -0x10000000000001L

    const-wide v14, -0x10000000000001L

    const-wide v8, -0x10000000000001L

    const-wide v10, -0x10000000000001L

    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    :cond_9
    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    const-wide/high16 v18, -0x3fec000000000000L    # -5.0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    sub-double/2addr v12, v6

    sub-double/2addr v14, v6

    add-double/2addr v8, v6

    add-double/2addr v10, v6

    goto :goto_1
.end method

.method private makeData(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 31
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

    const/16 v19, 0x0

    if-eqz p2, :cond_2

    const-string/jumbo v3, "images_event_album"

    :goto_0
    if-eqz p2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "group_id = 0 and bucket_id = ? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz p2, :cond_4

    sget-object v2, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_IMAGE:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v24

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "_id"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "datetaken"

    aput-object v11, v6, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "latitude"

    aput-object v11, v6, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "longitude"

    aput-object v11, v6, v10

    const-string/jumbo v10, ", "

    invoke-static {v6, v10}, Lcom/sec/android/gallery3d/util/GalleryUtils;->mergeStrings([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, "from (select * from images_event_album where group_id != 0 and "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, " order by datetaken asc, _id asc) group by group_id union select "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const-string/jumbo v7, "datetaken DESC, _id DESC"

    invoke-virtual/range {v2 .. v7}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    :goto_3
    if-eqz v19, :cond_1

    const-string/jumbo v2, "MapEventViewMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, " Cursor count : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    const/4 v2, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x2

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v26

    const/4 v2, 0x3

    move-object/from16 v0, v19

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v28

    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->isNotMatchClusterItems(Ljava/util/ArrayList;)Z

    move-result v2

    if-nez v2, :cond_6

    :goto_4
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_1
    const-string/jumbo v2, "MapEventViewMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "====> Map performance : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v10, v20

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :goto_5
    return-void

    :cond_2
    const-string/jumbo v3, "video_event_album"

    goto/16 :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "bucket_id = ? AND "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_4
    sget-object v2, Lcom/sec/android/gallery3d/data/EventAlbumSet;->PATH_VIDEO:Lcom/sec/android/gallery3d/data/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    invoke-virtual {v2, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v24

    goto/16 :goto_2

    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDBMgr:Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    sget-object v8, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->MAP_PROJECT:[Ljava/lang/String;

    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v2

    const-string/jumbo v11, "datetaken DESC, _id DESC"

    move-object v7, v3

    move-object v9, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v19

    goto/16 :goto_3

    :cond_6
    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/util/LocationCoordinateUtil;->convertWGSToGCJ(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v30

    new-instance v6, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const/4 v2, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    const/4 v2, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const/4 v2, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    invoke-direct/range {v6 .. v17}, Lcom/sec/samsung/gallery/mapfragment/MapItem;-><init>(Lcom/sec/android/gallery3d/data/Path;JDDDD)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->updateContents(Lcom/sec/android/gallery3d/data/Path;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    :catch_0
    move-exception v22

    :try_start_2
    const-string/jumbo v2, "MapEventViewMarkerAlbum"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "SQLiteException : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    goto/16 :goto_5

    :catchall_0
    move-exception v2

    invoke-static/range {v19 .. v19}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private updateContents(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v0, 0x0

    instance-of v2, v1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    if-eqz v2, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->updateLocalMediaItems(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/database/Cursor;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v2, v1, Lcom/sec/android/gallery3d/data/UnionMediaItem;

    if-eqz v2, :cond_2

    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->updateUnionMediaItems(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/database/Cursor;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->updateSCloudMediaItems(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private updateLocalMediaItems(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/database/Cursor;)V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_1

    sget-object v7, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->IMAGE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalImage;->PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "MapEventViewMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalMediaItem;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/data/LocalMediaItem;->updateContent(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :cond_1
    sget-object v7, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->VIDEO_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/LocalVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method private updateSCloudMediaItems(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/database/Cursor;)V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    instance-of v3, p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Images;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudImage;->PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "MapEventViewMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudMediaItem;->updateContent(Landroid/database/Cursor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/samsung/android/scloud/cloudagent/CloudStore$Videos;->getContentUri()Landroid/net/Uri;

    move-result-object v7

    sget-object v2, Lcom/sec/android/gallery3d/remote/scloud/SCloudVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method

.method private updateUnionMediaItems(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/database/Cursor;)V
    .locals 8

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v3, :cond_1

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;->PROJECTION:[Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    const-string/jumbo v6, "MapEventViewMarkerAlbum"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1, p2}, Lcom/sec/android/gallery3d/data/UnionImage;->updateContent(Landroid/database/Cursor;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return-void

    :cond_1
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v3, :cond_2

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionLocalVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    instance-of v3, p1, Lcom/sec/android/gallery3d/data/UnionSCloudImage;

    if-eqz v3, :cond_3

    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->IMAGES_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionSCloudImage;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    sget-object v7, Lcom/sec/samsung/gallery/access/cmh/CMHProviderInterface;->VIDEOS_TABLE_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/gallery3d/data/UnionSCloudVideo;->PROJECTION:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v3
.end method


# virtual methods
.method public getBucketId()I
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mEventViewAlbumBuckId:I

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    goto :goto_0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

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

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    move v0, p1

    :goto_0
    add-int v4, p1, p2

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;

    iget-object v4, v3, Lcom/sec/samsung/gallery/mapfragment/MapItem;->path:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mMapItems:Ljava/util/ArrayList;

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

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mName:Ljava/lang/String;

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

.method public getTagType()Lcom/sec/samsung/gallery/core/TabTagType;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    goto :goto_0
.end method

.method public onContentDirty()V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->notifyContentChanged()V

    return-void
.end method

.method public reload()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mNotifier:Lcom/sec/android/gallery3d/data/ChangeNotifier;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChangeNotifier;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->loadData()V

    invoke-static {}, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->nextVersionNumber()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDataVersion:J

    :cond_0
    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mDataVersion:J

    return-wide v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mName:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcom/sec/samsung/gallery/core/TabTagType;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/data/MapEventViewMarkerAlbum;->mTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    return-void
.end method
