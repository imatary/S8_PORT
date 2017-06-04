.class public abstract Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.source "NearbyItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;,
        Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;
    }
.end annotation


# static fields
.field private static final CONNECTION_TIME_OUT:I = 0xea60

.field public static final ITEM_PATH_PREFIX:Ljava/lang/String; = "/nearby/item"

.field private static final NEARBY_SCREENNAIL_SIZE:I = 0x4b000

.field private static final NEARBY_THUMBNAIL_SIZE:I = 0x6400

.field private static final NOT_INITED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteMediaItem"

.field private static mDisplayPixels:I

.field private static mIsOverFHD:Z


# instance fields
.field private mDecodedHeight:I

.field private mDecodedWidth:I

.field private final mDevice:Lcom/samsung/android/allshare/Device;

.field mNearbyItem:Lcom/samsung/android/allshare/Item;

.field private mNearbyLargeThumbnail:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDisplayPixels:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mIsOverFHD:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Item;Lcom/samsung/android/allshare/Device;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    iput-object p4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->initLargeThumbnail()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)J
    .locals 2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->generateKey()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDecodedWidth:I

    return p1
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDecodedHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method private generateKey()J
    .locals 4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getDateInMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getFileSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private getNearbyThumbUriString()Ljava/lang/String;
    .locals 2

    sget-boolean v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mIsOverFHD:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyLargeThumbnail:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyLargeThumbnail:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initLargeThumbnail()V
    .locals 10

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->isOverFullHD()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item;->getResourceList()Ljava/util/ArrayList;

    move-result-object v4

    :try_start_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/allshare/Item$Resource;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$Resource;->getResolution()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v3, v6, v1

    const/16 v8, 0x6400

    if-ge v8, v3, :cond_0

    const v8, 0x4b000

    if-ge v3, v8, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$Resource;->getURI()Landroid/net/Uri;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item$Resource;->getURI()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyLargeThumbnail:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v7, "RemoteMediaItem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Exception : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string/jumbo v8, "RemoteMediaItem"

    const-string/jumbo v9, "resource.getURI() : null!!"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private isOverFullHD()Z
    .locals 2

    sget v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDisplayPixels:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayPixels(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDisplayPixels:I

    sget v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDisplayPixels:I

    const v1, 0x1fa400

    if-lt v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mIsOverFHD:Z

    :cond_0
    sget-boolean v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mIsOverFHD:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 12

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v6, "RemoteMediaItem"

    const-string/jumbo v7, "getDetails : details is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item;->getDate()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "RemoteMediaItem"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDetails : Title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v8}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", mNearbyItem.getDate() is null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v7}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v8, 0x4

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v9

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item;->getDate()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_6

    const-wide/16 v6, 0x0

    :goto_1
    invoke-static {v9, v6, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v8, v6}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v5

    if-eqz v5, :cond_3

    const/16 v6, 0xc

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v6, 0xd

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_4
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item;->getFileSize()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-ltz v6, :cond_5

    const/16 v6, 0xe

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_5
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item;->getLocation()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isValidLocation(DD)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x9

    const/4 v7, 0x2

    new-array v7, v7, [D

    const/4 v8, 0x0

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    aput-wide v10, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    aput-wide v10, v7, v8

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xa

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xb

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item;->getDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xa

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v6, 0xb

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getDeviceID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceNIC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getNIC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFullImageRotation()I
    .locals 10

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v5}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->getOrientationValue(Ljava/lang/String;)I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getDownloadCache()Lcom/sec/android/gallery3d/data/DownloadCache;

    move-result-object v5

    new-instance v6, Ljava/net/URL;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->generateKey()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/data/DownloadCache;->lookup(Ljava/net/URL;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/DownloadCache$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/exif/ExifInterface;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/exif/ExifInterface;-><init>()V

    iget-object v5, v1, Lcom/sec/android/gallery3d/data/DownloadCache$Entry;->cacheFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/sec/android/gallery3d/data/Exif;->getOrientation(Lcom/sec/android/gallery3d/exif/ExifInterface;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "RemoteMediaItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 7

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getResolution()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x78

    :try_start_0
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/16 v4, 0x78

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    :cond_0
    move v4, v3

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "RemoteMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolution is null, decode size instead : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDecodedHeight:I

    goto :goto_0
.end method

.method public getItemToShow()Lcom/samsung/android/allshare/Item;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    return-object v0
.end method

.method public getLatitude()D
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item;->getMimetype()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNearbyThumbUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getNearbyUri()Ljava/lang/String;
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Item;->getFileSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide v0, 0x400080000440L

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Item;->getThumbnail()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 7

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v4}, Lcom/samsung/android/allshare/Item;->getResolution()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x78

    :try_start_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_0
    move v4, v2

    :goto_0
    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "RemoteMediaItem"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "resolution is null, decode size instead : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDecodedWidth:I

    goto :goto_0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v4, "requestImage start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    if-nez v3, :cond_0

    const-string/jumbo v3, "RemoteMediaItem"

    const-string/jumbo v4, "mNearbyItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getHeight()I

    move-result v0

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    if-le v1, v3, :cond_1

    invoke-static {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v3

    if-gt v0, v3, :cond_2

    :cond_1
    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getNearbyUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/lang/String;ILcom/sec/android/gallery3d/remote/nearby/NearbyItem$1;)V

    move-object v2, v3

    goto :goto_0

    :cond_2
    if-ne p1, v5, :cond_3

    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getNearbyUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/lang/String;ILcom/sec/android/gallery3d/remote/nearby/NearbyItem$1;)V

    move-object v2, v3

    goto :goto_0

    :cond_3
    new-instance v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->getNearbyThumbUriString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v4, p1, v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$HttpImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/lang/String;ILcom/sec/android/gallery3d/remote/nearby/NearbyItem$1;)V

    move-object v2, v3

    goto :goto_0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;

    new-instance v4, Ljava/net/URL;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v2, p0, v4, v5}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$NearbyLargeImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;Ljava/net/URL;Lcom/sec/android/gallery3d/remote/nearby/NearbyItem$1;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "RemoteMediaItem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MalformedURLException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v2, v3

    goto :goto_0
.end method

.method public updateContent(Lcom/samsung/android/allshare/Item;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-virtual {v2}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/allshare/Item;->getURI()Landroid/net/Uri;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mNearbyItem:Lcom/samsung/android/allshare/Item;

    invoke-static {}, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->nextVersionNumber()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyItem;->mDataVersion:J

    :cond_0
    return-void
.end method
