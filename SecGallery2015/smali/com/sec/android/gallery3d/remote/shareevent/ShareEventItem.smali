.class public Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.source "ShareEventItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;,
        Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;
    }
.end annotation


# static fields
.field private static final BYTESBUFFER_SIZE:I = 0x32000

.field private static final BYTESBUFFE_POOL_SIZE:I = 0x5

.field private static final FEATURE_USE_SHARE_VIA:Z

.field private static final INVALID_LATLNG:D = 0.0

.field private static final SCLOUD_IMAGE_ITEM_PATH:Ljava/lang/String;

.field private static final SCLOUD_VIDEO_ITEM_PATH:Ljava/lang/String;

.field public static final SHARE_EVENT_IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

.field public static final SHARE_EVENT_VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

.field private static final TAG:Ljava/lang/String; = "ShareEventItem"

.field private static final sChannelThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;


# instance fields
.field private mCMHFileId:I

.field private mChannelId:I

.field private mDownloadFilePath:Ljava/lang/String;

.field private mDownloadMediaId:I

.field private final mFilePath:Ljava/lang/String;

.field private mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

.field private mOriFileName:Ljava/lang/String;

.field private final mOriFilePath:Ljava/lang/String;

.field private mSmartCropRectFs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mThmFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "/shareevent/image/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_IMAGE_PATH:Lcom/sec/android/gallery3d/data/Path;

    const-string/jumbo v0, "/shareevent/video/item"

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SHARE_EVENT_VIDEO_PATH:Lcom/sec/android/gallery3d/data/Path;

    new-instance v0, Lcom/sec/android/gallery3d/data/BytesBufferPool;

    const/4 v1, 0x5

    const v2, 0x32000

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/data/BytesBufferPool;-><init>(II)V

    sput-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->sChannelThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseShareViaSharedEventContent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->FEATURE_USE_SHARE_VIA:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "/union/scloud/video/item/"

    :goto_0
    sput-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SCLOUD_VIDEO_ITEM_PATH:Ljava/lang/String;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "/union/scloud/image/item/"

    :goto_1
    sput-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SCLOUD_IMAGE_ITEM_PATH:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "/scloud/video/item/"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "/scloud/image/item/"

    goto :goto_1
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    iput v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mCMHFileId:I

    iput v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mChannelId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mSmartCropRectFs:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iput-object p6, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mThmFilePath:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mOriFilePath:Ljava/lang/String;

    invoke-direct {p0, p5}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->setFileName(Ljava/lang/String;)V

    iput p7, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mChannelId:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mThmFilePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mFilePath:Ljava/lang/String;

    iput p3, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mCMHFileId:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;)Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    return-object v0
.end method

.method public static getBytesBufferPool()Lcom/sec/android/gallery3d/data/BytesBufferPool;
    .locals 1

    sget-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->sChannelThumbBufferPool:Lcom/sec/android/gallery3d/data/BytesBufferPool;

    return-object v0
.end method

.method private setFileName(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mOriFileName:Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    aget-object v1, v0, v1

    const-string/jumbo v2, "Download"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public getCMHFileId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mCMHFileId:I

    return v0
.end method

.method public getCachedPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mChannelId:I

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 3

    sget-object v0, Lcom/sec/android/gallery3d/provider/GalleryProvider;->BASE_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mDateInMs:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 12

    const-wide/16 v10, 0x3e8

    const/16 v9, 0x2f

    const/4 v8, 0x1

    invoke-super {p0}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mFilePath:Ljava/lang/String;

    const/16 v7, 0x2e

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mFilePath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getFileName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v6, v9, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v8, :cond_2

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v0, v8, v4}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    const/4 v6, 0x4

    new-instance v7, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getDateInMs()J

    move-result-wide v8

    mul-long/2addr v8, v10

    mul-long/2addr v8, v10

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->getOriginalFileSize()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5}, Ljava/lang/Integer;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public getDownloadFilePath()Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getFilePathString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iput-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iput v4, v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    iput v4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadFilePath:Ljava/lang/String;

    :cond_0
    return-object v1

    :cond_1
    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadFilePath:Ljava/lang/String;

    goto :goto_0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mOriFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mHeight:I

    return v0
.end method

.method public getLatLong([D)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    aput-wide v2, p1, v4

    aput-wide v2, p1, v5

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLatitude:D

    aput-wide v0, p1, v4

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLongitude:D

    aput-wide v0, p1, v5

    goto :goto_0
.end method

.method public getLatitude()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLatitude:D

    goto :goto_0
.end method

.method public getLongitude()D
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-wide v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mLongitude:D

    goto :goto_0
.end method

.method public getMediaType()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v1, v1, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mOriFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFileId(Z)I
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mCMHFileId:I

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getOriginalFileId(Landroid/content/Context;I)I

    move-result v1

    iput v1, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    goto :goto_0
.end method

.method public getOriginalFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mOriFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalFileSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalfileSize:I

    goto :goto_0
.end method

.method public getPlayUri()Landroid/net/Uri;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getMediaIdFromFileId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    iget v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOrientationDegree:I

    goto :goto_0
.end method

.method public getShareUri()Landroid/net/Uri;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v3, v3, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getMediaIdFromFileId(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    iget v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    const-string/jumbo v3, "video"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v0, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v2, v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    const-string/jumbo v3, "image"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mDownloadMediaId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method public getSmartCropRectFs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mSmartCropRectFs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedOperations()J
    .locals 4

    const-wide/16 v0, 0x401

    sget-boolean v2, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->FEATURE_USE_SHARE_VIA:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mThmFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mThmFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getUgci()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mUGCI:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValidSharedEventItem()Lcom/sec/android/gallery3d/data/MediaObject;
    .locals 6

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v5, v5, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getMediaORSCloudIdFromFileId(Landroid/content/Context;I)I

    move-result v2

    const v4, 0xf4240

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget-object v4, v4, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mMimeType:Ljava/lang/String;

    const-string/jumbo v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SCLOUD_VIDEO_ITEM_PATH:Ljava/lang/String;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v5, v5, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mOriginalFileId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/LibraryDataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    sget-object v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->SCLOUD_IMAGE_ITEM_PATH:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    iget v0, v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;->mWidth:I

    return v0
.end method

.method declared-synchronized loadRectOfSmartCrop()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->USE_SMART_CROP:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mCMHFileId:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/LoadImageFaceRectTask;->getSmartCropRectFsForShareEvent(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mSmartCropRectFs:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-direct {v0, p0, p1, v1}, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;ILcom/sec/android/gallery3d/app/GalleryApp;)V

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

.method public updateShareEventInfo(Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem;->mInfo:Lcom/sec/android/gallery3d/remote/shareevent/ShareEventItem$ShareEventInfo;

    return-void
.end method
