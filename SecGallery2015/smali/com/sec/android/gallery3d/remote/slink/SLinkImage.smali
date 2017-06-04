.class public Lcom/sec/android/gallery3d/remote/slink/SLinkImage;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.source "SLinkImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;
    }
.end annotation


# static fields
.field private static final PROXY_WAIT_RETRY:I = 0x2

.field private static final PROXY_WAIT_TIME:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "SLinkImage"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;IJLcom/sec/android/gallery3d/app/GalleryApp;)V
    .locals 3

    invoke-direct {p0, p1, p5}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iput p2, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_id:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->source_id:Ljava/lang/String;

    invoke-interface {p5}, Lcom/sec/android/gallery3d/app/GalleryApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;)Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    return-object v0
.end method


# virtual methods
.method public delete(Lcom/sec/android/gallery3d/data/dboperation/AggregateDbOperation;)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Files;->deleteFile(Landroid/content/Context;J)V

    const/4 v0, 0x1

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDateInMs()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->date_taken:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 6

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->date_taken:J

    invoke-static {v2, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_id:I

    return v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    return-object v0
.end method

.method public getNearbyItem()Lcom/samsung/android/allshare/Item;
    .locals 10

    const/4 v6, 0x0

    const-string/jumbo v7, "SLinkImage"

    const-string/jumbo v8, "getNearbyUri()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v8

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media;->getImageUriBatch(Landroid/content/ContentResolver;J)Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media$ImagesUriBatch;

    move-result-object v5

    if-nez v5, :cond_1

    const-string/jumbo v7, "SLinkImage"

    const-string/jumbo v8, "Image Uri Batch is Null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-object v6

    :cond_1
    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media$ImagesUriBatch;->getLocalUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v6, "SLinkImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "localUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/allshare/Item$LocalContentBuilder;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v8, v8, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$LocalContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v6

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media$ImagesUriBatch;->getSameAccessPointUri()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_3

    const-string/jumbo v6, "SLinkImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sameAccessPointUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v7, v7, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    invoke-direct {v6, v4, v7}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v6

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ge v2, v7, :cond_0

    const-string/jumbo v7, "SLinkImage"

    const-string/jumbo v8, "try to get proxy uri"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Media$ImagesUriBatch;->getHttpProxyUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string/jumbo v6, "SLinkImage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "httpProxyUri : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/samsung/android/allshare/Item$WebContentBuilder;

    iget-object v7, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v7, v7, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    invoke-direct {v6, v1, v7}, Lcom/samsung/android/allshare/Item$WebContentBuilder;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/samsung/android/allshare/Item$WebContentBuilder;->build()Lcom/samsung/android/allshare/Item;

    move-result-object v6

    goto/16 :goto_0

    :cond_4
    :try_start_0
    const-string/jumbo v7, "SLinkImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wait until S Link proxy is initialized: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x7d0

    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v7, "SLinkImage"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public getRotation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->rotation:I

    return v0
.end method

.method public getSlinkObjectId()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->source_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->source_id:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide v0, 0x40080008042062cL    # 2.11640276873908E-289

    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getSlinkObjectId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/samsunglink/SlinkMediaStore$Images$Thumbnails;->getEntryUri(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->getDateInMs()J

    move-result-wide v4

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/gallery3d/remote/slink/SLinkImage$SLinkImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/slink/SLinkImage;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/sec/android/gallery3d/data/Path;JII)V

    return-object v0
.end method

.method public requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateContent(Landroid/database/Cursor;)Z
    .locals 8

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;-><init>()V

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->setProperty(Ljava/lang/Object;)V

    new-instance v1, Lcom/sec/android/gallery3d/util/UpdateHelper;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_url:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->width:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->height:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->content_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->rotation:I

    iget v4, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->rotation:I

    invoke-virtual {v1, v3, v4}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(II)I

    move-result v3

    iput v3, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->rotation:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-wide v4, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->date_taken:J

    iget-wide v6, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->date_taken:J

    invoke-virtual {v1, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/util/UpdateHelper;->update(JJ)J

    move-result-wide v4

    iput-wide v4, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->date_taken:J

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/slink/SLinkImage;->mSlinkEntry:Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;

    iget-object v3, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    iput-object v3, v2, Lcom/sec/android/gallery3d/remote/slink/SLinkItemEntry;->device_type:Lcom/samsung/android/sdk/samsunglink/SlinkDevicePhysicalType;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/util/UpdateHelper;->isUpdated()Z

    move-result v2

    goto :goto_0
.end method
