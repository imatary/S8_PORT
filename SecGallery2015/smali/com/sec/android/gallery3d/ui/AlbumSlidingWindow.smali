.class public Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;
.super Ljava/lang/Object;
.source "AlbumSlidingWindow.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;,
        Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;,
        Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    }
.end annotation


# static fields
.field private static final JOB_LIMIT:I = 0x2

.field private static final MSG_UPDATE_ENTRY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlbumSlidingWindow"


# instance fields
.field private mActiveEnd:I

.field private mActiveRequestCount:I

.field private mActiveStart:I

.field private mContentEnd:I

.field private mContentStart:I

.field private final mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

.field private final mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

.field private mIsActive:Z

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mListener:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

.field private mMiniThumbMode:Z

.field private mSize:I

.field private final mSource:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/JobLimiter;

.field private final mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

.field private final mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;


# direct methods
.method private constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mMiniThumbMode:Z

    invoke-virtual {p2, p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setDataListener(Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;)V

    iput-object p2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    new-array v0, p3, [Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->size()I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    new-instance v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$1;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$1;-><init>(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    new-instance v0, Lcom/sec/android/gallery3d/util/JobLimiter;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/util/JobLimiter;-><init>(Lcom/sec/android/gallery3d/util/ThreadPool;I)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/sec/android/gallery3d/util/JobLimiter;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/app/AlbumDataLoader;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)V

    iput-boolean p4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mMiniThumbMode:Z

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$1006(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mMiniThumbMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/util/JobLimiter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mThreadPool:Lcom/sec/android/gallery3d/util/JobLimiter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mHandler:Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    return-object v0
.end method

.method private cancelNonactiveImages()V
    .locals 5

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->cancelSlotImage(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private cancelSlotImage(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->cancelLoad()V

    goto :goto_0
.end method

.method private freeSlotContent(I)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v0

    rem-int v2, p1, v3

    aget-object v1, v0, v2

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->recycle()V

    :cond_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->recycle()V

    :cond_2
    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method private isActiveSlot(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepareSlotContent(I)V
    .locals 4

    new-instance v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;-><init>()V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->get(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->path:Lcom/sec/android/gallery3d/data/Path;

    if-nez v1, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->rotation:I

    new-instance v2, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {v2, p0, p1, v3}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$ThumbnailLoader;-><init>(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;ILcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$102(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;Lcom/sec/android/gallery3d/ui/BitmapLoader;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v3, v3

    rem-int v3, p1, v3

    aput-object v0, v2, v3

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v2

    goto :goto_1
.end method

.method private requestNonactiveImages()V
    .locals 5

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private requestSlotImage(I)Z
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v3, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    rem-int v4, p1, v4

    aget-object v1, v3, v4

    iget-object v3, v1, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/sec/android/gallery3d/glrenderer/Texture;

    if-nez v3, :cond_0

    iget-object v3, v1, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->startLoad()V

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$100(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/ui/BitmapLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/BitmapLoader;->isRequestInProgress()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AlbumSlidingWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setContentWindow(II)V
    .locals 3

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ne p2, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v2, :cond_1

    iput p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt v2, p2, :cond_4

    :cond_2
    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_1
    if-ge v0, v1, :cond_3

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    :goto_2
    if-ge v0, p2, :cond_8

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_3
    if-ge v0, p1, :cond_5

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v0, p2

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_4
    if-ge v0, v1, :cond_6

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSource:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setActiveWindow(II)V

    move v0, p1

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    :goto_5
    if-ge v0, v1, :cond_7

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_6
    if-ge v0, p2, :cond_8

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    iput p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    goto :goto_0
.end method

.method private updateAllImageRequests()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->requestSlotImage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveRequestCount:I

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->requestNonactiveImages()V

    :goto_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->cancelNonactiveImages()V

    goto :goto_1
.end method

.method private updateTextureUploadQueue()V
    .locals 7

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v5, v5

    rem-int v5, v1, v5

    aget-object v0, v4, v5

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iget v6, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    sub-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->uploadBgTextureInSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private uploadBgTextureInSlot(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v2, v2

    rem-int v2, p1, v2

    aget-object v0, v1, v2

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->access$000(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;
    .locals 3

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    add-int/lit8 p1, v0, -0x1

    const-string/jumbo v0, "AlbumSlidingWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid slot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " outsides ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    return v0
.end method

.method public onContentChanged(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    :cond_0
    return-void
.end method

.method public onSizeChanged(I)V
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-eq v0, p1, :cond_2

    iput p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;->onSizeChanged(I)V

    :cond_0
    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    :cond_2
    return-void
.end method

.method public pause()V
    .locals 5

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mTileUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->content:Lcom/sec/android/gallery3d/glrenderer/Texture;

    if-eqz v3, :cond_2

    iget-boolean v3, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->isWaitDisplayed:Z

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;->item:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->freeSlotContent(I)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 5

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    iget v1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentStart:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mContentEnd:I

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->isActiveSlot(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    rem-int v4, v1, v4

    aget-object v0, v3, v4

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->prepareSlotContent(I)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    return-void
.end method

.method public setActiveWindow(II)V
    .locals 8

    const/4 v7, 0x0

    if-gt p1, p2, :cond_0

    sub-int v3, p2, p1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v4, v4

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    if-le p2, v3, :cond_2

    :cond_0
    const-string/jumbo v3, "AlbumSlidingWindow"

    const-string/jumbo v4, "%s, %s, %s, %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    array-length v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mData:[Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$AlbumEntry;

    iput p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveStart:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mActiveEnd:I

    if-eq p1, p2, :cond_1

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    array-length v5, v2

    sub-int/2addr v4, v5

    invoke-static {v7, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v7, v4}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    array-length v3, v2

    add-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->setContentWindow(II)V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->updateTextureUploadQueue()V

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mIsActive:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->updateAllImageRequests()V

    goto :goto_0
.end method

.method public setListener(Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow;->mListener:Lcom/sec/android/gallery3d/ui/AlbumSlidingWindow$Listener;

    return-void
.end method
