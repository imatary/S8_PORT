.class public Lcom/sec/android/gallery3d/app/AlbumDataLoader;
.super Ljava/lang/Object;
.source "AlbumDataLoader.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;,
        Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateContent;,
        Lcom/sec/android/gallery3d/app/AlbumDataLoader$GetUpdateInfo;,
        Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;,
        Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;
    }
.end annotation


# static fields
.field private static final DATA_CACHE_SIZE:I = 0x80

.field private static final DEFAULT_INDEX:I = 0x0

.field private static final FIRST_LOAD_COUNT:I

.field private static final MAX_LOAD_COUNT:I = 0x40

.field private static final MIN_LOAD_COUNT:I = 0x20

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final PATCH_LOAD_COUNT_LAND:I

.field private static final PATCH_LOAD_COUNT_PORT:I

.field private static final REMOTE_DEVICE_MAX_LOAD_COUNT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "AlbumDataAdapter"


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

.field private mContentEnd:I

.field private mContentStart:I

.field private final mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mData:[Lcom/sec/android/gallery3d/data/MediaItem;

.field private mDataListener:Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

.field private mFailedVersion:J

.field private mGenericMotionFocus:I

.field private mGroupIndex:J

.field private final mItemVersion:[J

.field private mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

.field private final mMainHandler:Landroid/os/Handler;

.field private mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

.field private final mSetVersion:[J

.field private mSize:I

.field private mSource:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mSourceVersion:J

.field private mStartIndex:I

.field private mbRemoteDevice:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    :goto_0
    sput v0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->FIRST_LOAD_COUNT:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->PATCH_LOAD_COUNT_LAND:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    :goto_2
    sput v0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->PATCH_LOAD_COUNT_PORT:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    goto :goto_2
.end method

.method private constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 6

    const/16 v3, 0x80

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    iput v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    iput v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    iput v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    iput v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    iput-wide v4, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGenericMotionFocus:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGroupIndex:J

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mbRemoteDevice:Z

    iput v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mStartIndex:I

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    new-array v0, v3, [Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    invoke-static {v0, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isSLinkStorage(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mbRemoteDevice:Z

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;-><init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/AlbumReloader;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iput-object p3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->setDataListener(Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/LoadingListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mbRemoteDevice:Z

    return v0
.end method

.method static synthetic access$102(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mFailedVersion:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->getPatchCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->FIRST_LOAD_COUNT:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    return v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->getReloadInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumReloader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGroupIndex:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->loadGroupItems(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/sec/android/gallery3d/app/AlbumDataLoader;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)[J
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mStartIndex:I

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/gallery3d/app/AlbumDataLoader;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mStartIndex:I

    return p1
.end method

.method private clearSlot(I)V
    .locals 4

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mItemVersion:[J

    aput-wide v2, v0, p1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSetVersion:[J

    aput-wide v2, v0, p1

    return-void
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mMainHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getPatchCount()I
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->PATCH_LOAD_COUNT_PORT:I

    :goto_0
    return v1

    :cond_0
    sget v1, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->PATCH_LOAD_COUNT_LAND:I

    goto :goto_0
.end method

.method private getReloadInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->getLatestUpdateInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v0

    return-object v0
.end method

.method private isActive(I)Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadGroupItems(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;)V
    .locals 8

    const/4 v3, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    invoke-virtual {p1, v3, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemEx(II)Ljava/util/ArrayList;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getGroupId()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGroupIndex:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v2, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    invoke-virtual {p1, v3, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget-object v2, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->items:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iput v2, p2, Lcom/sec/android/gallery3d/app/AlbumDataLoader$UpdateInfo;->size:I

    return-void
.end method

.method private setContentWindow(II)V
    .locals 4

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ne p2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    iget v2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    iput p2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-ge p1, v0, :cond_2

    if-lt v2, p2, :cond_3

    :cond_2
    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_5

    rem-int/lit16 v3, v1, 0x80

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_2
    if-ge v1, p1, :cond_4

    rem-int/lit16 v3, v1, 0x80

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, p2

    :goto_3
    if-ge v1, v0, :cond_5

    rem-int/lit16 v3, v1, 0x80

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->clearSlot(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method


# virtual methods
.method public changeSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->pause()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->resume()V

    return-void
.end method

.method public get(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->isActive(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v1, v1

    rem-int v1, p1, v1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getGenericFocusIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGenericMotionFocus:I

    return v0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->terminate()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    const-string/jumbo v1, "AlbumDataAdapter"

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;-><init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mReloadTask:Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$ReloadTask;->start()V

    goto :goto_0
.end method

.method public setActiveWindow(II)V
    .locals 6

    const/4 v4, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    if-ne p1, v3, :cond_1

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-ne p2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gt p1, p2, :cond_3

    sub-int v3, p2, p1

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v5, v5

    if-gt v3, v5, :cond_3

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    if-gt p2, v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v2, v3

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveStart:I

    iput p2, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mActiveEnd:I

    if-eq p1, p2, :cond_0

    add-int v3, p1, p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 v5, v2, 0x2

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    sub-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v1

    add-int v3, v1, v2

    iget v4, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    if-gt v3, p1, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentEnd:I

    if-lt v3, p2, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mContentStart:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->setContentWindow(II)V

    goto :goto_0

    :cond_3
    move v3, v4

    goto :goto_1
.end method

.method public setDataListener(Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    return-void
.end method

.method public setGenericFocusIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGenericMotionFocus:I

    return-void
.end method

.method public setGroupIndex(J)V
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mGroupIndex:J

    return-void
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mStartIndex:I

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mSize:I

    return v0
.end method

.method public updateItem(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->mDataListener:Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;

    invoke-interface {v0, p1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader$DataListener;->onContentChanged(I)V

    :cond_0
    return-void
.end method
