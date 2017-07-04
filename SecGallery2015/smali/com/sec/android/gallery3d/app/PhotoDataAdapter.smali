.class public Lcom/sec/android/gallery3d/app/PhotoDataAdapter;
.super Ljava/lang/Object;
.source "PhotoDataAdapter.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;
.implements Lcom/sec/samsung/gallery/view/detailview/Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateContent;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$GetUpdateInfo;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$UpdateInfo;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageJob;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;,
        Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;
    }
.end annotation


# static fields
.field private static final BIT_FULL_IMAGE:I = 0x2

.field private static final BIT_SCREEN_NAIL:I = 0x1

.field private static final DATA_CACHE_SIZE:I = 0x28

.field private static final FEATURE_USE_EXIT_QUICKVIEW_WITH_BLUR:Z

.field static final GIF:Ljava/lang/String; = "gif"

.field private static final IMAGE_CACHE_SIZE:I = 0x7

.field private static final MIN_LOAD_COUNT:I = 0x10

.field private static final MSG_LOAD_CANCEL:I = 0x5

.field private static final MSG_LOAD_FINISH:I = 0x2

.field private static final MSG_LOAD_START:I = 0x1

.field private static final MSG_RUN_OBJECT:I = 0x3

.field private static final MSG_UPDATE_IMAGE_REQUESTS:I = 0x4

.field private static final SCREEN_NAIL_MAX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PhotoDataAdapter"

.field private static final USE_VIDEO_AUTO_PLAY:Z

.field private static final VERSION_OUT_OF_RANGE:J

.field public static mIsExifModifing:Z


# instance fields
.field private mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

.field private final mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

.field private mBrokenImage:Landroid/graphics/Bitmap;

.field private final mCameraIndex:I

.field private mCameraRotation:I

.field private final mChanges:[J

.field private mContentEnd:I

.field private mContentStart:I

.field private mCurrLat:D

.field private mCurrLong:D

.field private mCurrentIndex:I

.field private final mData:[Lcom/sec/android/gallery3d/data/MediaItem;

.field mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

.field private final mFacePaths:[Lcom/sec/android/gallery3d/data/Path;

.field private mFirstLoading:Z

.field private mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private mFocusHintPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

.field private mIndexDelta:I

.field private mInitRotation:I

.field private mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

.field private mInitialIndex:I

.field private mIsActive:Z

.field private mIsAlive:Z

.field private mIsExifModified:Z

.field private final mIsPanorama:Z

.field private mIsRequestPostGalleryCmd:Z

.field private final mIsStaticCamera:Z

.field private mItemPath:Lcom/sec/android/gallery3d/data/Path;

.field private final mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

.field private final mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

.field final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mNeedFullImage:Z

.field private final mPaths:[Lcom/sec/android/gallery3d/data/Path;

.field final mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

.field private mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

.field private final mReenterLock:Ljava/lang/Object;

.field private mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

.field private mRequestAutoAdjust:Z

.field private final mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

.field private mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

.field private mSize:I

.field private mSource:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

.field private mSourceVersion:J

.field private final mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

.field private final mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

.field private mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

.field private final mUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

.field private mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModifing:Z

    invoke-static {}, Lcom/sec/android/gallery3d/data/MediaObject;->nextVersionNumber()J

    move-result-wide v0

    sput-wide v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->VERSION_OUT_OF_RANGE:J

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVideoAutoPlay:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->USE_VIDEO_AUTO_PLAY:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseExitQuickViewWithBlur:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->FEATURE_USE_EXIT_QUICKVIEW_WITH_BLUR:Z

    return-void
.end method

.method constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;IIZZLcom/sec/android/gallery3d/app/AlbumReloader;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrLat:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrLong:D

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModified:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    const/16 v0, 0x28

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFirstLoading:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/sec/android/gallery3d/data/Path;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFacePaths:[Lcom/sec/android/gallery3d/data/Path;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitRotation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCameraRotation:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIndexDelta:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    new-instance v0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    new-instance v0, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRequestAutoAdjust:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReenterLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->initImageFetchSeq()V

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    new-instance v0, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    iput-object p4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {p5}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {p3}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/ui/PhotoView;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-static {p6}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/Path;

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    iput p7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    iput p7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitialIndex:I

    iput p8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    iput-boolean p9, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    iput-boolean p10, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getThreadPool()Lcom/sec/android/gallery3d/util/ThreadPool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFirstLoading:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsAlive:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([JJ)V

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    :cond_0
    if-eqz p11, :cond_1

    iput-object p11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->setDataListener(Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadListener;)V

    :goto_0
    new-instance v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAnimationInterface()Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsAlive:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/AlbumReloader;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getTiledTextureResource()Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->USE_VIDEO_AUTO_PLAY:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateFullImage(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;Lcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateScreenNail(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)[Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$2402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$2500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFirstLoading:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFirstLoading:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)J
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;J)J
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    return-wide p1
.end method

.method static synthetic access$3100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    return-void
.end method

.method static synthetic access$3400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModified:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModified:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/ui/PhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReenterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getReloadInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/data/Path;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/sec/android/gallery3d/data/Path;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/Path;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFocusHintPath:Lcom/sec/android/gallery3d/data/Path;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrLat:D

    return-wide v0
.end method

.method static synthetic access$4302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;D)D
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrLat:D

    return-wide p1
.end method

.method static synthetic access$4400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)D
    .locals 2

    iget-wide v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrLong:D

    return-wide v0
.end method

.method static synthetic access$4402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;D)D
    .locals 1

    iput-wide p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrLong:D

    return-wide p1
.end method

.method private copyFullImageForPresentation()V
    .locals 21

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v3, v13, 0x28

    aget-object v12, v2, v3

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "PhotoDataAdapter"

    const-string/jumbo v3, "copyFullImageForPresentation: start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_6

    aget-object v15, v19, v18

    iget v0, v15, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    move/from16 v17, v0

    iget v11, v15, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    const/4 v2, 0x2

    if-ne v11, v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v2, :cond_3

    :cond_2
    :goto_2
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    :cond_3
    add-int v16, v13, v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v3, v16, 0x28

    aget-object v5, v2, v3

    if-nez v5, :cond_4

    const-string/jumbo v2, "PhotoDataAdapter"

    const-string/jumbo v3, "curItem is null! at copyFullImageForPresentation"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-static {v14}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v14}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v14}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v14, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_2

    invoke-static {v14}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v14}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v2, :cond_2

    new-instance v2, Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v14}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v6, v14, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v6}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    const/4 v10, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v2 .. v10}, Lcom/sec/samsung/gallery/decoder/LargeImage;-><init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;Z)V

    invoke-static {v14, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    const-string/jumbo v2, "PhotoDataAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "copyFullImageForPresentation: item is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    goto/16 :goto_0
.end method

.method private executeAndWait(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v2, 0x0

    new-instance v1, Ljava/util/concurrent/FutureTask;

    invoke-direct {v1, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mMainHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x3

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v3}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v3, "PhotoDataAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ExecutionException : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string/jumbo v3, "PhotoDataAdapter"

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

.method private fireDataChange()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange(Z)V

    return-void
.end method

.method private fireDataChange(Z)V
    .locals 15

    const/4 v1, 0x0

    const/4 v3, -0x3

    :goto_0
    const/4 v11, 0x3

    if-gt v3, v11, :cond_1

    iget v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v11, v3

    invoke-direct {p0, v11}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getVersion(I)J

    move-result-wide v6

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v12, v3, 0x3

    aget-wide v12, v11, v12

    cmp-long v11, v12, v6

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mChanges:[J

    add-int/lit8 v12, v3, 0x3

    aput-wide v6, v11, v12

    const/4 v1, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-nez v1, :cond_3

    if-nez p1, :cond_3

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x7

    const/4 v11, 0x7

    new-array v2, v11, [I

    const/4 v11, 0x7

    new-array v9, v11, [Lcom/sec/android/gallery3d/data/Path;

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/sec/android/gallery3d/data/Path;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-static {v11, v12, v9, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x7

    new-array v8, v11, [Lcom/sec/android/gallery3d/data/Path;

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFacePaths:[Lcom/sec/android/gallery3d/data/Path;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x7

    invoke-static {v11, v12, v8, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    :goto_2
    const/4 v11, 0x7

    if-ge v3, v11, :cond_5

    sget-boolean v11, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v11, :cond_4

    neg-int v11, v3

    add-int/lit8 v4, v11, 0x3

    :goto_3
    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/sec/android/gallery3d/data/Path;

    iget v12, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v12, v4

    invoke-direct {p0, v12}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    aput-object v12, v11, v3

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFacePaths:[Lcom/sec/android/gallery3d/data/Path;

    iget v12, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v12, v4

    invoke-direct {p0, v12}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getFacePath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    aput-object v12, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v3, -0x3

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v11

    sget-object v12, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v11, v12, :cond_a

    const/4 v3, 0x0

    :goto_4
    const/4 v11, 0x7

    if-ge v3, v11, :cond_f

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFacePaths:[Lcom/sec/android/gallery3d/data/Path;

    aget-object v10, v11, v3

    if-nez v10, :cond_6

    const v11, 0x7fffffff

    aput v11, v2, v3

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_6
    const/4 v11, 0x7

    if-ge v5, v11, :cond_7

    aget-object v11, v8, v5

    if-ne v11, v10, :cond_8

    :cond_7
    const/4 v11, 0x7

    if-ge v5, v11, :cond_9

    add-int/lit8 v11, v5, -0x3

    :goto_7
    aput v11, v2, v3

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    const v11, 0x7fffffff

    goto :goto_7

    :cond_a
    const/4 v3, 0x0

    :goto_8
    const/4 v11, 0x7

    if-ge v3, v11, :cond_f

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPaths:[Lcom/sec/android/gallery3d/data/Path;

    aget-object v10, v11, v3

    if-nez v10, :cond_b

    const v11, 0x7fffffff

    aput v11, v2, v3

    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_b
    const/4 v5, 0x0

    :goto_a
    const/4 v11, 0x7

    if-ge v5, v11, :cond_c

    aget-object v11, v9, v5

    if-ne v11, v10, :cond_d

    :cond_c
    const/4 v11, 0x7

    if-ge v5, v11, :cond_e

    add-int/lit8 v11, v5, -0x3

    :goto_b
    aput v11, v2, v3

    goto :goto_9

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_e
    const v11, 0x7fffffff

    goto :goto_b

    :cond_f
    if-nez p1, :cond_10

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget v12, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v12, v12

    iget v13, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v13, v13, -0x1

    iget v14, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v13, v14

    invoke-virtual {v11, v2, v12, v13}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    :cond_10
    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget v12, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    neg-int v12, v12

    iget v13, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v13, v13, -0x1

    iget v14, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int/2addr v13, v14

    invoke-virtual {v11, v2, v12, v13}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyDataChange([III)V

    goto/16 :goto_1
.end method

.method private getFacePath(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFacePath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getImageEntryByIndex(I)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    goto :goto_0
.end method

.method private getInitialScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getItemFromIndex(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x28

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getItemInternal(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x28

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getPath(I)Lcom/sec/android/gallery3d/data/Path;
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItemInternal(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0
.end method

.method private getReloadInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->getLatestUpdateInfo()Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;

    iget-wide v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceVersion:J

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    invoke-direct {v0, v2, v3, v1}, Lcom/sec/android/gallery3d/app/AlbumReloader$ReloadInfo;-><init>(JI)V

    goto :goto_0
.end method

.method private getTiledTextureResource()Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTiledTextureResources:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$TiledTextureResources;

    return-object v0
.end method

.method private getVersion(I)J
    .locals 4

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-lt p1, v1, :cond_1

    :cond_0
    sget-wide v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->VERSION_OUT_OF_RANGE:J

    :goto_0
    return-wide v2

    :cond_1
    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v1, :cond_2

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x28

    aget-object v0, v1, v2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion(I)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method private initImageFetchSeq()V
    .locals 8

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumLoadOptimize:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x10

    new-array v3, v3, [Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    :goto_0
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v5, v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v5, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    const/4 v0, 0x1

    move v2, v1

    :goto_1
    const/4 v3, 0x7

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v0, v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v2, v1, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    neg-int v5, v0

    invoke-direct {v4, v5, v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/16 v3, 0xe

    new-array v3, v3, [Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    iput-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumLoadOptimize:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    add-int/lit8 v1, v2, 0x1

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    invoke-direct {v4, v6, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;-><init>(II)V

    aput-object v4, v3, v1

    :goto_2
    return-void

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private isScreenNailAvailable(Lcom/sec/android/gallery3d/ui/ScreenNail;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget-object v0, p1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private newPlaceholderScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v0

    new-instance v2, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-direct {v2, v1, v0}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;-><init>(II)V

    return-object v2
.end method

.method private startTaskIfNeeded(II)Lcom/sec/android/gallery3d/util/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/sec/android/gallery3d/util/Future",
            "<*>;"
        }
    .end annotation

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt p1, v4, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt p1, v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v5, p1, 0x28

    aget-object v1, v4, v5

    if-nez v1, :cond_3

    const-string/jumbo v4, "PhotoDataAdapter"

    const-string/jumbo v5, "item is null! at startTaskIfNeeded"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v2

    const/4 v4, 0x1

    if-ne p2, v4, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    if-ne p2, v4, :cond_5

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_5

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x1

    if-ne p2, v4, :cond_8

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->FEATURE_USE_EXIT_QUICKVIEW_WITH_BLUR:Z

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/32 v6, 0x8000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getScreenNailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaItem;->setImage(Landroid/graphics/Bitmap;)V

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rsub-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getImageRotation(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->setCameraRotation(I)V

    instance-of v4, v1, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/CameraShortcutImage;->setNeedToUpdateImage(Z)V

    :cond_6
    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRequestAutoAdjust:Z

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v6, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    :cond_7
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    goto/16 :goto_0

    :cond_8
    sget-boolean v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->FEATURE_USE_EXIT_QUICKVIEW_WITH_BLUR:Z

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    if-ne p2, v4, :cond_9

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/32 v6, 0x8000

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_9

    instance-of v4, v1, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    if-eqz v4, :cond_9

    move-object v4, v1

    check-cast v4, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/CameraShortcutImage;->setNeedToUpdateImage(Z)V

    :cond_9
    const/4 v4, 0x2

    if-ne p2, v4, :cond_b

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$400(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/16 v6, 0x40

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModifing:Z

    if-nez v4, :cond_b

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRequestAutoAdjust:Z

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v5, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v5, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v1, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    :cond_a
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRequestAutoAdjust:Z

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v4

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private updateCurrentIndex(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-eq v1, p1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->onChangeCurrentIndex()V

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIndexDelta:I

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x28

    aget-object v0, v1, v2

    if-nez v0, :cond_3

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->resetBrokenImage()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/sec/android/gallery3d/data/Path;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateCurrentIndexFastest(I)V
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-eq v1, p1, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->onChangeCurrentIndex()V

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v1, p1, v1

    iput v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIndexDelta:I

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, p1, 0x28

    aget-object v0, v1, v2

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateScreenNailOfCameraShortcutImage(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_1
.end method

.method private updateFullImage(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v9, :cond_1

    invoke-interface {p2}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v9, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-static {v9, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$902(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTileAlphaBlending:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v0, :cond_4

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v3, v9, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-nez v3, :cond_7

    const/4 v8, 0x1

    :goto_1
    move-object v3, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/samsung/gallery/decoder/LargeImage;-><init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;Z)V

    invoke-static {v9, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sec/samsung/gallery/decoder/LargeImage;

    invoke-static {v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    iget-object v3, v9, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    const/4 v8, 0x0

    move-object v3, p3

    move-object v6, p0

    invoke-direct/range {v0 .. v8}, Lcom/sec/samsung/gallery/decoder/LargeImage;-><init>(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;Z)V

    invoke-static {v9, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoAvailable(Lcom/sec/android/gallery3d/data/Path;Z)V

    :cond_5
    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-ne p1, v0, :cond_6

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItemFromIndex(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-virtual {p0, v0, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateEntryInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    invoke-direct {p0, v9}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->setScalePrepared(Z)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    goto/16 :goto_0

    :cond_7
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private updateImageCache()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    :goto_0
    iget v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v1, v6, :cond_9

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v7, v1, 0x28

    aget-object v2, v6, v7

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    if-eqz v0, :cond_8

    iget v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    sub-int v6, v1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v11, :cond_2

    iget-boolean v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModified:Z

    if-nez v6, :cond_2

    sget-boolean v6, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsExifModifing:Z

    if-eqz v6, :cond_7

    :cond_2
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v6

    invoke-interface {v6}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    :cond_3
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_4
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_5
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->requestCancelDecode()V

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->recycle()V

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$902(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    :cond_6
    const-wide/16 v6, -0x1

    invoke-static {v0, v6, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    :cond_7
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v6, v6, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v6, :cond_0

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    check-cast v4, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->updatePlaceholderSize(II)V

    goto/16 :goto_1

    :cond_8
    new-instance v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v6

    iput v6, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->rotation:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/Path;

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v7

    if-eqz v7, :cond_b

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_b
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v7

    if-eqz v7, :cond_c

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_c
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v7

    if-eqz v7, :cond_d

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    invoke-static {v0, v10}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_d
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_e
    iget-object v7, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v7, :cond_a

    iget-object v7, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v7}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_2

    :cond_f
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    return-void
.end method

.method private updateImageRequests()V
    .locals 14

    const-wide/16 v12, -0x1

    const/4 v11, 0x0

    iget-boolean v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-ltz v7, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    iget-object v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v8, v1, 0x28

    aget-object v4, v7, v8

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    if-ne v7, v8, :cond_0

    const/4 v6, 0x0

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageFetchSeq:[Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v9, :cond_4

    aget-object v3, v8, v7

    iget v5, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->indexOffset:I

    iget v0, v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageFetch;->imageBit:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_3

    iget-boolean v10, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mNeedFullImage:Z

    if-nez v10, :cond_3

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    add-int v10, v1, v5

    invoke-direct {p0, v10, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->startTaskIfNeeded(II)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v6

    if-eqz v6, :cond_2

    :cond_4
    iget-object v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v8

    if-eq v8, v6, :cond_6

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    invoke-static {v2, v11}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    invoke-static {v2, v12, v13}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    :cond_6
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v8

    if-eq v8, v6, :cond_5

    invoke-static {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    invoke-static {v2, v11}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    invoke-static {v2, v12, v13}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    goto :goto_1
.end method

.method private updateScreenNail(Lcom/sec/android/gallery3d/data/Path;Lcom/sec/android/gallery3d/util/Future;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/Path;",
            "Lcom/sec/android/gallery3d/util/Future",
            "<",
            "Lcom/sec/android/gallery3d/ui/ScreenNail;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-interface {p2}, Lcom/sec/android/gallery3d/util/Future;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-nez v0, :cond_1

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x0

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    iget-object v4, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v4, v4, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v4, :cond_2

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    check-cast v2, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->combine(Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    :cond_2
    if-nez v3, :cond_6

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$602(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z

    :cond_3
    :goto_1
    const/4 v1, -0x3

    :goto_2
    const/4 v4, 0x3

    if-gt v1, v4, :cond_5

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    if-ne p1, v4, :cond_8

    if-nez v1, :cond_4

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItemFromIndex(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateEntryInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateScreenNailUploadQueue()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsRequestPostGalleryCmd:Z

    if-nez v4, :cond_0

    iput-boolean v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsRequestPostGalleryCmd:Z

    goto :goto_0

    :cond_6
    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$602(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z

    iput-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    invoke-interface {v4, p1, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoAvailable(Lcom/sec/android/gallery3d/data/Path;Z)V

    :cond_7
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->copy()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private updateScreenNailOfCameraShortcutImage(I)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->FEATURE_USE_EXIT_QUICKVIEW_WITH_BLUR:Z

    if-eqz v1, :cond_0

    if-ne p1, v7, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v0, v1, v6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/32 v4, 0x8000

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/CameraShortcutImage;->isNeedToUpdateImage()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getScreenNailBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaItem;->setImage(Landroid/graphics/Bitmap;)V

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/CameraShortcutImage;

    invoke-virtual {v1, v6}, Lcom/sec/android/gallery3d/data/CameraShortcutImage;->setNeedToUpdateImage(Z)V

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rsub-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getImageRotation(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->setCameraRotation(I)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/util/ThreadPool;->submitUrgent(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    :cond_0
    return-void
.end method

.method private updateScreenNailUploadQueue()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    neg-int v1, v0

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->uploadScreenNail(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateSlidingWindow()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow(Z)V

    return-void
.end method

.method private updateSlidingWindow(Z)V
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x3

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-ne v3, v2, :cond_1

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/lit8 v3, v3, -0x14

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v4, -0x28

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v3, v5, v4}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    add-int/lit8 v4, v2, 0x28

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-gt v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v3, v4, :cond_2

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x10

    if-le v3, v4, :cond_0

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    :goto_1
    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v1, v3, :cond_5

    if-lt v1, v2, :cond_3

    if-lt v1, v0, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v4, v1, 0x28

    const/4 v5, 0x0

    aput-object v5, v3, v4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    iput v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method private updateTileProvider()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    goto :goto_0
.end method

.method private updateTileProvider(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 9

    iget-object v4, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-static {p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$900(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mBrokenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mBrokenImage:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    new-instance v7, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    iget-object v8, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mBrokenImage:Landroid/graphics/Bitmap;

    invoke-direct {v7, v8}, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7, v5, v2}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    iget v7, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v7, v7, 0x28

    aget-object v3, v6, v7

    const/4 v0, 0x0

    if-eqz v4, :cond_2

    move-object v0, v4

    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getWidth()I

    move-result v7

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;->getHeight()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setRegionDecoder(Lcom/sec/samsung/gallery/decoder/regiondecoder/RegionDecoder;)V

    :goto_1
    iget v6, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->rotation:I

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v7

    if-eq v6, v7, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v6

    iput v6, p1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->rotation:I

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAnimationInterface:Lcom/sec/samsung/gallery/decoder/AnimationInterface;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/decoder/AnimationInterface;->startAnimation()V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v7

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v8

    invoke-virtual {v6, v0, v7, v8}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V

    goto :goto_1
.end method

.method private uploadScreenNail(I)V
    .locals 8

    iget v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v1, v6, p1

    iget v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v1, v6, :cond_0

    iget v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-lt v1, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v6, v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v6, :cond_2

    check-cast v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->getTexture()Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v6, v4}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V

    :cond_2
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    instance-of v6, v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    if-eqz v6, :cond_0

    check-cast v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->getTexture()Lcom/sec/android/gallery3d/glrenderer/TiledTexture;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture;->isReady()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v6, v5}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->addTexture(Lcom/sec/android/gallery3d/glrenderer/TiledTexture;)V

    goto :goto_0
.end method


# virtual methods
.method public changeSource(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->pause()V

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->setCurrentPhoto(Lcom/sec/android/gallery3d/data/Path;I)V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->resume()V

    return-void
.end method

.method public clearImageCacheEntryScreenNail(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getImageEntryByIndex(I)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    iget-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    :cond_0
    return-void
.end method

.method public clearVersionNumber()V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_0

    invoke-static {v0, v4, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    invoke-static {v0, v4, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    :cond_0
    return-void
.end method

.method public completeSlideAnimation()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->resetBrokenImage()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoChanged(ILcom/sec/android/gallery3d/data/Path;)V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsAlive:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-void
.end method

.method public forceUpdateDrmImage()Z
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v4, v4, 0x28

    aget-object v1, v3, v4

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isLocalMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1300(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getAppContext()Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;->getDrmUtil()Lcom/sec/android/gallery3d/util/ImageDRMUtil;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/util/ImageDRMUtil;->isValidRights(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public forceUpdateImageRequests()V
    .locals 6

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v3, v3, 0x28

    aget-object v1, v2, v3

    if-nez v1, :cond_1

    const-string/jumbo v2, "PhotoDataAdapter"

    const-string/jumbo v3, "item is null! at startTaskIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailJob;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;

    invoke-direct {v4, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ScreenNailListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$502(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v3, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageJob;

    invoke-direct {v3, p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageJob;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v4, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v1, v5}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$FullImageListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$802(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/util/Future;)Lcom/sec/android/gallery3d/util/Future;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRequestAutoAdjust:Z

    goto :goto_0
.end method

.method public getCameraRotation()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCameraRotation:I

    return v0
.end method

.method public getCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    return v0
.end method

.method public getCurrentBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-nez v3, :cond_2

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    if-eqz v3, :cond_3

    :cond_2
    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "PhotoDataAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentBitmap is failed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget-object v2, v1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getCurrentCacheSize()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    return v0
.end method

.method public getCurrentMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    rem-int/lit8 v0, v1, 0x28

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v1, v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImageHeight()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->getImageHeight()I

    move-result v0

    return v0
.end method

.method public getImageRotation()I
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->rotation:I

    goto :goto_0
.end method

.method public getImageRotation(I)I
    .locals 2

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitRotation:I

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getFullImageRotation()I

    move-result v1

    goto :goto_0
.end method

.method public getImageSize(ILcom/sec/android/gallery3d/ui/PhotoView$Size;)V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v0, :cond_0

    iput v2, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    iput v2, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v1

    iput v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->width:I

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v1

    iput v1, p2, Lcom/sec/android/gallery3d/ui/PhotoView$Size;->height:I

    goto :goto_0
.end method

.method public getImageWidth()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->getImageWidth()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 2

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt p1, v0, :cond_3

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v1, p1, 0x28

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getLargeImage(Lcom/sec/android/gallery3d/ui/GLRoot;I)Lcom/sec/samsung/gallery/decoder/LargeImage;
    .locals 2

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getImageEntryByIndex(I)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-ne v1, p1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLevel(Lcom/sec/android/gallery3d/ui/GLRoot;)[I
    .locals 3

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getImageEntryByIndex(I)Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-ne v2, p1, :cond_0

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImage;->mLevel:[I

    :goto_1
    return-object v2

    :cond_0
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getLevelCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->getLevelCount()I

    move-result v0

    return v0
.end method

.method public getLoadingState(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$600(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v0, v1, p1

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentStart:I

    if-lt v0, v1, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mContentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mData:[Lcom/sec/android/gallery3d/data/MediaItem;

    rem-int/lit8 v2, v0, 0x28

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNextDirection()I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIndexDelta:I

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/util/QuramAGIF;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/util/QuramAGIF;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAGIF:Lcom/sec/android/gallery3d/util/QuramAGIF;

    return-object v0
.end method

.method public getScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 7

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int v2, v4, p1

    if-ltz v2, :cond_0

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-ge v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    if-nez v4, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getInitialScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveStart:I

    if-lt v2, v4, :cond_2

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mActiveEnd:I

    if-ge v2, v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-static {v4}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    invoke-virtual {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-virtual {p0, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-nez v3, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getInitialScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getInitialScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    goto :goto_0

    :cond_4
    iget-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-nez v4, :cond_7

    if-ne v3, v0, :cond_7

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitialIndex:I

    if-eq v2, v4, :cond_5

    iget v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIndexDelta:I

    if-nez v4, :cond_7

    :cond_5
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v4, :cond_7

    const-string/jumbo v4, "PhotoDataAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getInitScreenNail - offset : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iput-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/ui/ScreenNail;->copy()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    goto :goto_0

    :cond_7
    iget-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-nez v4, :cond_9

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->useLoadingProgress(I)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->newPlaceholderScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    iput-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eqz v4, :cond_8

    iget-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/ui/ScreenNail;->copy()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    :cond_8
    if-nez p1, :cond_9

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    :cond_9
    if-nez p1, :cond_b

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/PhotoView;->isFlippedImage()Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v4, "PhotoDataAdapter"

    const-string/jumbo v5, "FlippedScreenNail is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-eq v4, p2, :cond_c

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    if-nez v4, :cond_c

    iget-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v4, :cond_c

    iget-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/ui/ScreenNail;->copy()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$702(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/android/gallery3d/ui/ScreenNail;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    :cond_c
    iget-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRoot:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-ne v4, p2, :cond_d

    iget-object v4, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    goto/16 :goto_0

    :cond_d
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public getScreenNail(Lcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getScreenNail(ILcom/sec/android/gallery3d/ui/GLRoot;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v0

    return-object v0
.end method

.method public getScreenNailBitmap(I)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-nez v0, :cond_0

    :goto_0
    return-object v2

    :cond_0
    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/BitmapScreenNail;

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    instance-of v3, v3, Lcom/sec/android/gallery3d/ui/VideoScreenNail;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "PhotoDataAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCurrentBitmap is failed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    check-cast v1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;

    iget-object v2, v1, Lcom/sec/android/gallery3d/ui/TiledScreenNail;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getTile(IIII)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public initAgif(Lcom/sec/android/gallery3d/data/MediaItem;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalCameraImage;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v1, v0, p1, v4}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->initAGIF(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v3

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->invalidate()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v2, v4, p1}, Lcom/sec/android/gallery3d/ui/PhotoView;->resetAgifMode(ZLcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method public isCamera(I)Z
    .locals 2

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCameraIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeletable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPanorama(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsPanorama:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSlideInAnimationEnable(Lcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isStaticCamera(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsStaticCamera:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo(I)Z
    .locals 3

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public moveTo(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndex(I)V

    return-void
.end method

.method public moveToFastest(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateCurrentIndexFastest(I)V

    return-void
.end method

.method public onAgifPlayRequests()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getQuramAGIF()Lcom/sec/android/gallery3d/util/QuramAGIF;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/util/QuramAGIF;->getQURAMWINKUTIL()Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/QURAMWINKUTIL;->updateAGIF(Lcom/sec/android/gallery3d/ui/GifPlayer;Lcom/sec/android/gallery3d/ui/GifPlayer;)V

    return-void
.end method

.method onChangeCurrentIndex()V
    .locals 0

    return-void
.end method

.method onMenuRefresh(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->terminate()V

    iput-object v4, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1002(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/decoder/LargeImage;->stopDecodeThread(Z)V

    invoke-static {v1, v4}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1102(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Lcom/sec/samsung/gallery/decoder/LargeImage;)Lcom/sec/samsung/gallery/decoder/LargeImage;

    :cond_4
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$800(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_5
    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$500(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/util/Future;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/util/Future;->cancel()V

    :cond_6
    iget-object v3, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v3, :cond_2

    if-eq v1, v0, :cond_2

    iget-object v3, v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$700(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    if-eqz v0, :cond_9

    iget-object v2, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->screenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->isScreenNailAvailable(Lcom/sec/android/gallery3d/ui/ScreenNail;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-static {v0, v6, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    :cond_8
    invoke-static {v0, v6, v7}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$402(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;J)J

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v3, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->clear()V

    :cond_a
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->clearLargeImageTilePool()V

    :cond_b
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->clearLargeImageTilePool()V

    :cond_c
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    :cond_d
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    :cond_e
    return-void
.end method

.method public reload()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    :cond_0
    return-void
.end method

.method public declared-synchronized reloadForRotate()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v0, "PhotoDataAdapter"

    new-instance v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public requestBurstShotCount(Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mThreadPool:Lcom/sec/android/gallery3d/util/ThreadPool;

    new-instance v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotJob;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/data/MediaItem;)V

    new-instance v2, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$CountBurstShotListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/util/ThreadPool;->submit(Lcom/sec/android/gallery3d/util/ThreadPool$Job;Lcom/sec/android/gallery3d/util/FutureListener;)Lcom/sec/android/gallery3d/util/Future;

    return-void
.end method

.method public resetBrokenImage()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized resume()V
    .locals 3

    monitor-enter p0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsActive:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mIsTilePoolRecycled:Z

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLargeImageTilePool2:Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/decoder/LargeImageTilePool;->mIsTilePoolRecycled:Z

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-nez v1, :cond_0

    const-string/jumbo v0, "PhotoDataAdapter"

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    :goto_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->start()V

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SingleReloadTask;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    if-nez v1, :cond_2

    new-instance v1, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;-><init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    :cond_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mSourceListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$SourceListener;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public setCameraRotation(I)V
    .locals 3

    const-string/jumbo v0, "PhotoDataAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CameraRotation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCameraRotation:I

    return-void
.end method

.method public setCurrentPhoto(Lcom/sec/android/gallery3d/data/Path;I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    if-ne v1, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mItemPath:Lcom/sec/android/gallery3d/data/Path;

    iput p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateSlidingWindow()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageCache()V

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getMediaItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mReloadTask:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ReloadTask;->notifyDirty()V

    goto :goto_0
.end method

.method public setDataListener(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    return-void
.end method

.method public setFlippedScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mFlippedScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    return-void
.end method

.method public setInitialScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;I)V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    :cond_0
    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNail:Lcom/sec/android/gallery3d/ui/ScreenNail;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->recycle()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->copy()Lcom/sec/android/gallery3d/ui/ScreenNail;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitScreenNailCopy:Lcom/sec/android/gallery3d/ui/ScreenNail;

    :cond_2
    iput p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mInitRotation:I

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mTileProvider:Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getWidth()I

    move-result v2

    invoke-interface {p1}, Lcom/sec/android/gallery3d/ui/ScreenNail;->getHeight()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/gallery3d/ui/TileImageViewAdapter;->setScreenNail(Lcom/sec/android/gallery3d/ui/ScreenNail;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhotoDataAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPresentation(Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    iput-object p2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoViewPresentation:Lcom/sec/android/gallery3d/ui/PhotoView;

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mRootPresentation:Lcom/sec/android/gallery3d/ui/GLRoot;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mUploader2:Lcom/sec/android/gallery3d/glrenderer/TiledTexture$Uploader;

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->copyFullImageForPresentation()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->fireDataChange(Z)V

    goto :goto_0
.end method

.method public updateBrokenImage(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mBrokenImage:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mImageCache:Ljava/util/HashMap;

    iget v2, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    invoke-direct {p0, v2}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getPath(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;->access$1302(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;Z)Z

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateTileProvider(Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mPhotoView:Lcom/sec/android/gallery3d/ui/PhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/PhotoView;->notifyImageChange(I)V

    :cond_0
    return-void
.end method

.method updateEntryInfo(Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/PhotoDataAdapter$ImageEntry;)V
    .locals 0

    return-void
.end method

.method public useLoadingProgress(I)Z
    .locals 2

    iget v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mCurrentIndex:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->getItem(I)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getModel()Lcom/sec/android/gallery3d/interfaces/LibraryModel;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/interfaces/LibraryModel;->isRemoteMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    return v1
.end method
