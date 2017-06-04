.class public Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;
.super Lcom/sec/android/gallery3d/remote/RemoteMediaItem;
.source "NearbyDeviceCoverItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;
    }
.end annotation


# static fields
.field private static final SOCKET_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "NearbyDeviceCoverItem"


# instance fields
.field private final mDevice:Lcom/samsung/android/allshare/Device;

.field private mURLConnection:Ljava/net/HttpURLConnection;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;Lcom/samsung/android/allshare/Device;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;-><init>(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/app/GalleryApp;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;

    const-string/jumbo v0, "NearbyDeviceCoverItem"

    const-string/jumbo v1, "new NearbyDeviceCoverItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p3, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/samsung/android/allshare/Device;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Ljava/net/HttpURLConnection;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Ljava/net/HttpURLConnection;)Ljava/net/HttpURLConnection;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mURLConnection:Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/sec/android/gallery3d/app/GalleryApp;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mApplication:Lcom/sec/android/gallery3d/app/GalleryApp;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDataVersion:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->convertToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private convertToThumbnail(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10

    const/16 v9, 0xc8

    const/16 v8, 0x96

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-ge v2, v9, :cond_0

    if-ge v1, v8, :cond_0

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/high16 v7, -0x1000000

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->drawColor(I)V

    rsub-int v7, v2, 0xc8

    div-int/lit8 v3, v7, 0x2

    rsub-int v7, v1, 0x96

    div-int/lit8 v4, v7, 0x2

    int-to-float v7, v3

    int-to-float v8, v4

    invoke-virtual {v0, p1, v7, v8, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_0
    return-object v6

    :cond_0
    move-object v6, p1

    goto :goto_0
.end method


# virtual methods
.method public getContentUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v0}, Lcom/samsung/android/allshare/Device;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbPath()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sec/android/gallery3d/util/ThreadPool$Job",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;->mDevice:Lcom/samsung/android/allshare/Device;

    invoke-virtual {v1}, Lcom/samsung/android/allshare/Device;->getIcon()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$1;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$1;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem$HttpImageRequest;-><init>(Lcom/sec/android/gallery3d/remote/nearby/NearbyDeviceCoverItem;Ljava/lang/String;I)V

    goto :goto_0
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
