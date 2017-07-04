.class Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;
.super Ljava/lang/Object;
.source "ComposePhotoCoverObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComPhotoCoverObjLoader"

.field private static final THM_SIZE_THUMBNAIL:B = 0x3t

.field private static final UPDATE_COVER:I


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field private final mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

.field private mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

.field private mSource:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    const-string/jumbo v0, "ComPhotoCoverObjLoader"

    const-string/jumbo v1, "mediaSet is Null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_0
    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->startHanderThread()V

    :cond_0
    return-void

    :cond_1
    invoke-static {p2}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoCoverObject;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->checkCoverUpdate(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Lcom/sec/android/gallery3d/data/MediaItem;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)V

    return-void
.end method

.method private checkCoverUpdate(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;)I

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->access$100(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;)J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    if-nez v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;J)J

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mCoverItemInfo:Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;->access$202(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$CoverItemInfo;I)I

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_2
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    return-void
.end method

.method private startHanderThread()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "ComposePhotoCoverObjectLoaderHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "looper is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;

    invoke-direct {v1, p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    :cond_3
    return-void
.end method


# virtual methods
.method public getCoverItem()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mThreadHandler:Landroid/os/Handler;

    :cond_1
    return-void
.end method

.method public setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-void
.end method

.method public setSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposePhotoCoverObjectLoader;->getCoverItem()V

    goto :goto_0
.end method
