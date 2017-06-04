.class public Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;
.super Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;
.source "SinglePhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/detailview/Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;
    }
.end annotation


# static fields
.field private static final GIF:Ljava/lang/String; = "gif"

.field private static final IS_NOS:Z

.field private static final MSG_UPDATE_IMAGE:I = 0x1

.field private static final MYFILES_USB_URI_IN_MOS:Ljava/lang/String; = "file:///storage/"

.field private static final MYFILES_USB_URI_IN_NOS:Ljava/lang/String; = "content://com.sec.android.app.myfiles.FileProvider/external"

.field private static final TAG:Ljava/lang/String; = "SinglePhotoDataAdapter"


# instance fields
.field private mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

.field private mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

.field private mDecodeDirect:Z

.field private mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasFullImage:Z

.field private mIsAlive:Z

.field private final mItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private final mLargeListener:Lcom/sec/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/FutureListener",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

.field private mLoadingState:I

.field private final mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

.field private final mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

.field private mTask:Lcom/sec/android/gallery3d/util/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private final mThumbListener:Lcom/sec/android/gallery3d/util/FutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/android/gallery3d/util/FutureListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->IS_NOS:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mDecodeDirect:Z

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$2;-><init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/sec/android/gallery3d/util/FutureListener;

    new-instance v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$3;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$3;-><init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/sec/android/gallery3d/util/FutureListener;

    new-instance v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$4;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$4;-><init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$5;

    invoke-direct {v0, p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$5;-><init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p3}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mIsAlive:Z

    iput-object p4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    new-instance v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;-><init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mIsAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/LoadingListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mDecodeDirect:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mDecodeDirect:Z

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeDirectComplete(Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeLargeComplete(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->onDecodeThumbComplete(Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->updateBrokenImage()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method private getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/QuramAGIF;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/QuramAGIF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    return-object v0
.end method

.method private isUsbContent()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->IS_NOS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "content://com.sec.android.app.myfiles.FileProvider/external"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v0, "file:///storage/"

    goto :goto_0
.end method

.method private onDecodeDirectComplete(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "image/golf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/sec/android/gallery3d/golf/GolfMgr;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/golf/GolfMgr;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/golf/GolfMgr;->createThumbnails(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->updateBrokenImage()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyCurrentImageInvalidated()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SinglePhotoDataAdapter"

    const-string/jumbo v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onDecodeLargeComplete(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V
    .locals 4

    :try_start_0
    iget-object v1, p1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mDecodeDirect:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mDecodeDirect:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/sec/android/gallery3d/util/FutureListener;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->updateBrokenImage()V

    const/4 v1, 0x2

    iput v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SinglePhotoDataAdapter"

    const-string/jumbo v2, "fail to decode large"

    invoke-static {v1, v2, v0}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    iput v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    iget-object v1, p1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->backupImage:Landroid/graphics/Bitmap;

    iget-object v2, p1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    iget-object v1, p1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;->decoder:Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->setRegionDecoder(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyCurrentImageInvalidated()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onDecodeThumbComplete(Lcom/sec/android/gallery3d/util/Future;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->updateBrokenImage()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-direct {p0, v0, v2, v3}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyCurrentImageInvalidated()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "SinglePhotoDataAdapter"

    const-string/jumbo v3, "fail to decode thumb"

    invoke-static {v2, v3, v1}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private registerPrivateModeReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file:///storage/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;->ACTION_PRIVATE_MODE_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private registerUsbReceiver()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->isUsbContent()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private setScreenNail(Landroid/graphics/Bitmap;II)V
    .locals 1

    new-instance v0, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-direct {v0, p1}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {p0, v0, p2, p3}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V

    return-void
.end method

.method private unregisterPrivateModeReceiver()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "file:///storage/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPrivateModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterUsbReceiver()V
    .locals 4

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->isUsbContent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mUsbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SinglePhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "IllegalArgumentException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateBrokenImage()V
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenThumbBG(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->updateBrokenImage(Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public changeSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mIsAlive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-void
.end method

.method public getCameraRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method public getImageRotation()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v0

    return v0
.end method

.method public getImageRotation(I)I
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v0

    iput v0, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    iput v0, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    :goto_0
    return-void

    :cond_0
    iput v0, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v0, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getLoadingState(I)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingState:I

    return v0
.end method

.method public getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNextDirection()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getScreenNailBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v4, :cond_1

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v4, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_6

    const-string/jumbo v4, "gif"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "gif"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    instance-of v4, p1, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    if-eqz v4, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->getCachedPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v6, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    instance-of v5, p1, Lcom/sec/android/gallery3d/remote/nearby/NearbyImage;

    invoke-virtual {v3, v0, p1, v5}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_6
    :goto_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v6, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto/16 :goto_0

    :cond_7
    if-eqz p2, :cond_6

    const-string/jumbo v4, "gif"

    invoke-virtual {p2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UriImage;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v3, v0, p1, v6}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v5

    invoke-virtual {v4, v5, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_1
.end method

.method public isCamera(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDeletable()Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPanorama(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isStaticCamera(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVideo(I)Z
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const-wide/16 v2, 0x400

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

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

.method public moveTo(I)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public moveToFastest(I)V
    .locals 0

    return-void
.end method

.method public onAgifPlayRequests()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->updateAGIF(Lcom/sec/android/gallery3d/ui/GifPlayer;Lcom/sec/android/gallery3d/ui/GifPlayer;)V

    return-void
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/sec/android/gallery3d/util/Future;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;->recycle()V

    iput-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mBitmapScreenNail:Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->unregisterUsbReceiver()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->unregisterPrivateModeReceiver()V

    return-void
.end method

.method public requestBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/sec/android/gallery3d/util/Future;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mHasFullImage:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/LocalImage;->forceUpdatePendingAttribute()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->requestLargeImage()Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLargeListener:Lcom/sec/android/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/sec/android/gallery3d/util/Future;

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->registerUsbReceiver()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->registerPrivateModeReceiver()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->forceUpdatePendingAttribute()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaItem;->requestImage(I)Lcom/sec/android/gallery3d/util/ThreadPool$Job;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mThumbListener:Lcom/sec/android/gallery3d/util/FutureListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mTask:Lcom/sec/android/gallery3d/util/Future;

    goto :goto_1
.end method

.method public setCurrentPhoto(Lcom/sec/android/gallery3d/data/Path;I)V
    .locals 0

    return-void
.end method

.method public setFlippedScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    return-void
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-void
.end method

.method public setPresentation(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 0

    return-void
.end method

.method public updateBrokenImage(Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->setScreenNail(Landroid/graphics/Bitmap;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyOnNewImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyCurrentImageInvalidated()V

    return-void
.end method

.method public useLoadingProgress(I)Z
    .locals 3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->mItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
