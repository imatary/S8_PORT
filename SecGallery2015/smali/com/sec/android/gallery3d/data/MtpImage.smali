.class public Lcom/sec/android/gallery3d/data/MtpImage;
.super Lcom/sec/android/gallery3d/data/MediaItem;
.source "MtpImage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MtpImage"


# instance fields
.field private final mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

.field private final mContext:Landroid/content/Context;

.field private mDateModified:J

.field private final mDeviceId:I

.field private mFileName:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageWidth:I

.field private final mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

.field private final mObjInfo:Landroid/mtp/MtpObjectInfo;

.field private mObjectId:I

.field private mObjectParent:I

.field private mObjectSize:I

.field private mType:I


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;IILcom/sec/android/gallery3d/data/MtpContext;)V
    .locals 6

    invoke-static {p5, p3, p4}, Lcom/sec/android/gallery3d/data/MtpDevice;->getObjectInfo(Lcom/sec/android/gallery3d/data/MtpContext;II)Landroid/mtp/MtpObjectInfo;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/gallery3d/data/MtpImage;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/sec/android/gallery3d/data/MtpContext;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;ILandroid/mtp/MtpObjectInfo;Lcom/sec/android/gallery3d/data/MtpContext;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/data/MtpImage;->nextVersionNumber()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;J)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/GalleryApp;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mDeviceId:I

    iput-object p5, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    iput-object p4, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    if-nez v0, :cond_0

    const-string/jumbo v0, "MtpImage"

    const-string/jumbo v1, "object info is null, ignore a MTP image"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageWidth:I

    iput v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageHeight:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getObjectHandle()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectId:I

    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getParent()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectParent:I

    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getCompressedSize()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectSize:I

    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getDateModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mDateModified:J

    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageWidth:I

    invoke-virtual {p4}, Landroid/mtp/MtpObjectInfo;->getImagePixHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageHeight:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/data/MtpImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectParent:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/data/MtpImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/data/MtpImage;)Landroid/mtp/MtpObjectInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/data/MtpImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mDeviceId:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/data/MtpImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectId:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MtpContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/data/MtpImage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/data/MtpImage;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/data/MtpImage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mType:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/data/MtpImage;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mDateModified:J

    return-wide v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/data/MtpImage;Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/data/MtpImage;->writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private writeBitmapToByteBuffer(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 3

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/BitmapUtils;->compressToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-object v2
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/provider/GalleryProvider;->getUriFor(Landroid/content/Context;Lcom/sec/android/gallery3d/data/Path;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getDateInMs()J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mDateModified:J

    return-wide v0
.end method

.method public getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;
    .locals 7

    const/4 v6, 0x1

    invoke-super {p0}, Lcom/sec/android/gallery3d/data/MediaItem;->getDetails()Lcom/sec/android/gallery3d/data/MediaDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/data/MtpImage;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mContext:Landroid/content/Context;

    iget-wide v4, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mDateModified:J

    invoke-static {v2, v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xc

    iget v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    const/16 v1, 0xd

    iget v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    iget v1, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageHeight:I

    if-eqz v1, :cond_0

    const/16 v1, 0xf

    const-string/jumbo v2, "%dx%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageWidth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageHeight:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    :cond_0
    const/16 v1, 0xe

    iget v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectSize:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageHeight:I

    return v0
.end method

.method public getMediaType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "image/jpeg"

    return-object v0
.end method

.method public getMtpContext()Lcom/sec/android/gallery3d/data/MtpContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mFileName:Ljava/lang/String;

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectInfo()Landroid/mtp/MtpObjectInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjectSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSupportedOperations()J
    .locals 2

    const-wide v0, 0x20000000440L

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mImageWidth:I

    return v0
.end method

.method public importFile(Ljava/io/File;)Z
    .locals 6

    const-string/jumbo v3, "MtpImage"

    const-string/jumbo v4, "importFile start"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/sec/android/gallery3d/data/MtpImage$3;

    invoke-direct {v3, p0, p1}, Lcom/sec/android/gallery3d/data/MtpImage$3;-><init>(Lcom/sec/android/gallery3d/data/MtpImage;Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    new-instance v3, Ljava/lang/Thread;

    const-string/jumbo v4, "MTPImportThread"

    invoke-direct {v3, v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    const/4 v2, 0x0

    const-wide/16 v4, 0xf

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    const-string/jumbo v3, "MtpImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "importFile end result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v3, "MtpImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "importFile timed out. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mMtpContext:Lcom/sec/android/gallery3d/data/MtpContext;

    iget-object v4, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mObjInfo:Landroid/mtp/MtpObjectInfo;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MtpContext;->cancelImport(Landroid/mtp/MtpObjectInfo;)V

    goto :goto_0
.end method

.method public isDrm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iput p1, p0, Lcom/sec/android/gallery3d/data/MtpImage;->mType:I

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpImage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/MtpImage$1;-><init>(Lcom/sec/android/gallery3d/data/MtpImage;)V

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

    new-instance v0, Lcom/sec/android/gallery3d/data/MtpImage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/data/MtpImage$2;-><init>(Lcom/sec/android/gallery3d/data/MtpImage;)V

    return-object v0
.end method
