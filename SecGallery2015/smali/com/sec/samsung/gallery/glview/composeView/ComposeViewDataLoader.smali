.class public Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;
.super Ljava/lang/Object;
.source "ComposeViewDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;,
        Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;
    }
.end annotation


# static fields
.field private static ALBUM_SET_SIZE:I = 0x0

.field private static final COVER_ITEM_LOAD_LIMIT:I = 0x3

.field private static final FIRST_CACHE_COUNT:I = 0x20

.field private static final INVALID_UPDATE:B = -0x1t

.field private static final INVALID_VALUE:I = -0x1

.field public static final INVALID_ZOOM_LEVEL:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ComposeViewDataLoader"

.field static final THM_SIZE_MICRO:B = 0x2t

.field static final THM_SIZE_MINI_MICRO:B = 0x1t

.field static final THM_SIZE_THUMBNAIL:B = 0x3t

.field public static final THM_SIZE_TYPE_DYNAMIC:B = 0x30t

.field public static final THM_SIZE_TYPE_LEVEL:B = 0x20t

.field private static final mLOCK:Ljava/lang/Object;

.field private static final mScaleLock:Ljava/lang/Object;


# instance fields
.field private mActiveEnd:I

.field private mActiveStart:I

.field private final mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field public mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

.field private final mAllSet:Z

.field private final mCheckSetVersion:Z

.field public final mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

.field private mContentEnd:I

.field private mContentStart:I

.field private final mContext:Landroid/content/Context;

.field mFirstIndex:I

.field private final mFirstItemOnly:Z

.field private mFirstLoad:Z

.field mFirstLoadColumnCount:I

.field mFirstLoadCount:I

.field mFirstLoadRowCount:I

.field mFirstReloadSkip:Z

.field mIgnoreSkip:Z

.field private mIsActive:Z

.field private mIsActiveRange:Z

.field private mIsRangeChanged:Z

.field private mItemSize:I

.field private mLatestCount:I

.field public mLevel:B

.field private final mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

.field private mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

.field private mMediaList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaObject;",
            ">;"
        }
    .end annotation
.end field

.field private mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private mNeedToLoadAllItems:Z

.field private mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mNotifyCount:I

.field private mOffset:I

.field private mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

.field private mReqActiveEnd:I

.field private mReqActiveStart:I

.field private mReqContentEnd:I

.field private mReqContentStart:I

.field private mRotationChanged:Z

.field public mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

.field public mSelectionSet:Z

.field private mSetChanged:Z

.field private final mShowGroupIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mSize:I

.field private mSizeChanged:Z

.field private mSmallItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation
.end field

.field public mSource:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mSourceVersion:J

.field private mSrcChanged:Z

.field private mStep:I

.field private mUpdContentEnd:I

.field private mUpdContentStart:I

.field private mUpdEnd:I

.field private mUpdStart:I

.field private mUpdateAll:Z

.field private mUpdateBitmapDirectly:Z

.field private mUpdatedSize:Z

.field private final mUseEventShare:Z

.field private mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

.field private mZoomLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc8

    sput v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->ALBUM_SET_SIZE:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScaleLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mZoomLevel:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateBitmapDirectly:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNeedToLoadAllItems:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateAll:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIgnoreSkip:Z

    const/16 v0, 0x20

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadRowCount:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadColumnCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLatestCount:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I

    sget v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->ALBUM_SET_SIZE:I

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mShowGroupIds:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActive:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUseEventShare:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSmallItemList:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object p4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mScanFirstOnly:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mScanAllSet:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAllSet:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mCheckSetVersion:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mCheckSetVersion:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mItemSize:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstIndex:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateBitmapDirectly:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScaleLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;Lcom/sec/android/gallery3d/data/MediaSet;ZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActive:Z

    return v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    return-object v0
.end method

.method private declared-synchronized applyViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;I)V
    .locals 3

    const/4 v0, -0x1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    :cond_0
    if-eq p2, v0, :cond_4

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLatestCount:I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLatestCount:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mRotationChanged:Z

    if-eqz v0, :cond_3

    :cond_2
    const-string/jumbo v0, "ComposeViewDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "applyViewListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", notiCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mRotationChanged:Z

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLatestCount:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I

    invoke-interface {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;->onSizeChanged(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private cancelContents(IIZ)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    if-lt p1, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v2, p1

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    const/4 v7, -0x1

    if-eq v0, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v1, v7, v0

    if-nez v1, :cond_2

    const-string/jumbo v7, "ComposeViewDataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "AlbumInfo is null album index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v6

    iget-object v3, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    :cond_3
    :goto_1
    if-ge v2, p2, :cond_0

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt v5, v7, :cond_4

    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v0, v7, :cond_0

    if-ge v2, p2, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v1, v7, v0

    invoke-static {v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v6

    iget-object v3, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget v7, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eqz v7, :cond_3

    :cond_4
    array-length v7, v3

    if-ge v5, v7, :cond_6

    aget-object v4, v3, v5

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    if-eqz p3, :cond_5

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    aput-object v9, v3, v5

    aput-byte v8, v6, v5

    :cond_5
    iget-object v7, v4, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_6

    aput-object v9, v3, v5

    aput-byte v8, v6, v5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private checkIncreaseAlbumSet(I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v3, v3

    if-gt p1, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v3, "ComposeViewDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkIncreaseAlbumSet"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v0, v3

    int-to-float v3, p1

    const v4, 0x3fb33333    # 1.4f

    mul-float/2addr v3, v4

    float-to-int v2, v3

    sput v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->ALBUM_SET_SIZE:I

    new-array v1, v2, [Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-static {v3, v6, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    goto :goto_0
.end method

.method private clearAlbumInfo()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearContents(Z)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    return-void
.end method

.method private clearAlbumSetInfo()V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, v1

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([BB)V

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v2

    const-wide/16 v4, -0x1

    invoke-static {v2, v4, v5}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private clearContents(Z)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    return-void
.end method

.method private createReloadTask()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mCurrentViewStateName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->setOnLoadDataListener(Lcom/sec/samsung/gallery/view/adapter/ReloadTask$OnLoadDataListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->start()V

    goto :goto_0
.end method

.method private getFirstRangeByItemCount()V
    .locals 10

    const/4 v8, 0x0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-gtz v7, :cond_1

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentStart:I

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentEnd:I

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadCount:I

    div-int/lit8 v4, v7, 0x2

    move v6, v4

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstIndex:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstIndex:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    const/4 v0, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-eqz v7, :cond_2

    add-int/lit8 v7, v2, -0x1

    if-ltz v7, :cond_2

    add-int/lit8 v7, v2, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v8, v8

    if-ge v7, v8, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v2

    if-nez v7, :cond_2

    const-string/jumbo v7, "ComposeViewDataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getFirstRangeByItemCount() - previous first index ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    add-int/lit8 v2, v7, -0x1

    const/4 v3, 0x0

    const-string/jumbo v7, "ComposeViewDataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getFirstRangeByItemCount() - new first index ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "] ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-gt v4, v3, :cond_4

    sub-int v7, v3, v4

    invoke-static {v2, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v1

    move v6, v4

    :goto_1
    const/4 v7, -0x1

    if-eq v2, v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v2

    if-eqz v7, :cond_3

    add-int v7, v3, v6

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v8, v8, v2

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-gt v7, v8, :cond_7

    add-int v7, v3, v6

    invoke-static {v2, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v0

    :cond_3
    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentStart:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentEnd:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    goto/16 :goto_0

    :cond_4
    sub-int/2addr v6, v3

    add-int/lit8 v5, v2, -0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    if-eqz v7, :cond_0

    :goto_3
    if-ltz v5, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v7, v7

    if-ge v5, v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-le v6, v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    sub-int/2addr v6, v7

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_5
    if-ltz v5, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v7, v7

    if-ge v5, v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    sub-int/2addr v7, v6

    invoke-static {v5, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v1

    move v6, v4

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    add-int/2addr v6, v4

    goto :goto_1

    :cond_7
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v2

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    sub-int/2addr v7, v3

    sub-int/2addr v6, v7

    add-int/lit8 v5, v2, 0x1

    :goto_4
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v5, v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-le v6, v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    sub-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v5, v7, :cond_9

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v0

    goto :goto_2

    :cond_9
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    add-int/lit8 v5, v7, -0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v7, v7, v5

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-static {v5, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v0

    goto/16 :goto_2
.end method

.method private getFirstRangeByRowCount()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    if-nez v15, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-gtz v15, :cond_1

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentStart:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentEnd:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadColumnCount:I

    if-eqz v15, :cond_2

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadRowCount:I

    if-nez v15, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getFirstRangeByItemCount()V

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadRowCount:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoadColumnCount:I

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    mul-int v15, v14, v7

    const/16 v16, 0x96

    move/from16 v0, v16

    if-le v15, v0, :cond_8

    const/4 v3, 0x1

    :goto_1
    if-ge v9, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v15, v15, v4

    if-eqz v15, :cond_4

    if-eqz v3, :cond_9

    add-int/lit8 v9, v9, 0x1

    if-le v9, v14, :cond_9

    const/4 v5, 0x1

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v15, v15, v4

    if-eqz v15, :cond_5

    if-eqz v5, :cond_7

    :cond_5
    if-lez v4, :cond_6

    add-int/lit8 v4, v4, -0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v15, v15, v4

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v15, v15, v4

    iget v10, v15, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    :cond_7
    invoke-static {v4, v10}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentStart:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentEnd:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    goto/16 :goto_0

    :cond_8
    const/4 v3, 0x0

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v15, v15, v4

    iget v8, v15, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    div-int v11, v8, v7

    rem-int v13, v8, v7

    if-lez v13, :cond_a

    const/4 v15, 0x1

    :goto_3
    add-int v6, v11, v15

    add-int v15, v6, v9

    if-lt v15, v14, :cond_c

    sub-int v15, v14, v9

    mul-int v12, v15, v7

    if-eqz v12, :cond_b

    if-ge v12, v8, :cond_b

    move v10, v12

    :goto_4
    goto :goto_2

    :cond_a
    const/4 v15, 0x0

    goto :goto_3

    :cond_b
    move v10, v8

    goto :goto_4

    :cond_c
    add-int/2addr v9, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getRange(I)Z
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    if-ge v3, v4, :cond_1

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdStart:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdEnd:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActiveRange:Z

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mStep:I

    :goto_1
    return v1

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mStep:I

    goto :goto_0

    :cond_1
    if-gt v0, v1, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    if-ge v3, v4, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdStart:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdEnd:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActiveRange:Z

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mStep:I

    goto :goto_1

    :cond_2
    if-gt v0, v5, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    if-ge v3, v4, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdStart:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdEnd:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActiveRange:Z

    const/4 v2, 0x3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mStep:I

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method private isPanorama(FF)Z
    .locals 2

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    div-float v0, p1, p2

    :goto_0
    const v1, 0x402ccccd    # 2.7f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    div-float v0, p2, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private loadAlbumSet()V
    .locals 14

    const/4 v9, 0x0

    const/4 v8, 0x1

    sget-object v10, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v5, :cond_1

    monitor-exit v10

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    iget-wide v12, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    cmp-long v5, v12, v6

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    if-nez v5, :cond_2

    monitor-exit v10

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_2
    :try_start_1
    iput-wide v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-eq v4, v5, :cond_4

    move v5, v8

    :goto_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->checkIncreaseAlbumSet(I)V

    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, v1

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aput-object v0, v5, v1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v6

    :goto_3
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)J

    move-result-wide v10

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v5, v9

    goto :goto_1

    :cond_5
    const-wide/16 v6, -0x1

    goto :goto_3

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v2, v5, Lcom/sec/android/gallery3d/data/ChannelAlbumSet;

    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-nez v5, :cond_7

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aput-object v0, v5, v1

    :cond_7
    invoke-static {v0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$002(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;J)J

    iput-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    const/16 v5, 0x20

    invoke-static {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;B)B

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eq v5, v8, :cond_8

    invoke-static {v0, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IZ)V

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    :cond_8
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdatedSize:Z

    goto :goto_4
.end method

.method private loadCoverItems(II)V
    .locals 18

    const/4 v11, 0x0

    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v5, p1

    :goto_1
    move/from16 v0, p2

    if-gt v5, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v2, v14, v5

    if-nez v2, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_3

    iget v14, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-nez v14, :cond_4

    :cond_3
    const-string/jumbo v14, "ComposeViewDataLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loadCoveritems idx ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", start = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", end = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", mediaSet = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", count = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverItemPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    if-nez v14, :cond_6

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    :goto_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUseEventShare:Z

    if-eqz v14, :cond_5

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v14

    sget-object v15, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v14, v15, :cond_5

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getChannelType()I

    move-result v10

    sget-object v14, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->SHARE_FOR_MANUAL:Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface$STORY_TYPES;->ordinal()I

    move-result v14

    if-ne v10, v14, :cond_7

    const/4 v6, 0x1

    :cond_5
    :goto_4
    if-nez v4, :cond_8

    if-nez v6, :cond_8

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    aput-wide v16, v14, v15

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverItemPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/Path;->getObject()Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_3

    :cond_7
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v14

    if-eqz v14, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v12

    if-nez v4, :cond_d

    const-wide/16 v8, -0x1

    :goto_5
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v14

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    cmp-long v14, v12, v14

    if-nez v14, :cond_9

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v14

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    cmp-long v14, v8, v14

    if-eqz v14, :cond_1

    :cond_9
    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    if-ge v3, v14, :cond_a

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    :cond_a
    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    if-le v3, v14, :cond_b

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    :cond_b
    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v14

    const/4 v15, 0x0

    aput-wide v8, v14, v15

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v14

    const/4 v15, 0x0

    aput-wide v12, v14, v15

    iget-object v14, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v15, 0x0

    aput-object v4, v14, v15

    invoke-static {v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    add-int/lit8 v11, v11, 0x1

    const/4 v14, 0x3

    if-lt v11, v14, :cond_1

    :cond_c
    const-string/jumbo v14, "ComposeViewDataLoader"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "loadCoveritems count ="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", updS = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", updE = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v8

    goto/16 :goto_5
.end method

.method private loadData()Z
    .locals 10

    const/4 v6, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdatedSize:Z

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    if-eqz v7, :cond_0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearAlbumInfo()V

    :cond_0
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadSelectedItem()V

    :goto_0
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    if-eqz v7, :cond_1

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mFirstRangeOptimization:Z

    if-eqz v7, :cond_7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstIndex:I

    if-nez v7, :cond_7

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstReloadSkip:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getFirstRangeByRowCount()V

    :cond_1
    :goto_1
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->isActive()Z

    move-result v7

    if-nez v7, :cond_8

    :cond_2
    const-string/jumbo v5, "ComposeViewDataLoader"

    const-string/jumbo v7, "mReloadTask is null or not active. return "

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_3
    :goto_2
    return v6

    :cond_4
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    if-eqz v7, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadAlbumSet()V

    goto :goto_0

    :cond_5
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAllSet:Z

    if-eqz v7, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadSet()V

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadItem()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getFirstRangeByItemCount()V

    goto :goto_1

    :cond_8
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object v7, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLOCK:Ljava/lang/Object;

    monitor-enter v7

    :try_start_2
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentStart:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentEnd:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    invoke-direct {p0, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadMediaSet(II)V

    monitor-enter p0

    :try_start_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->isActive()Z

    move-result v7

    if-nez v7, :cond_a

    :cond_9
    const-string/jumbo v5, "ComposeViewDataLoader"

    const-string/jumbo v7, "mReloadTask is null or not active. return "

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    :catchall_2
    move-exception v5

    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v5

    :cond_a
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    if-ne v7, v2, :cond_b

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    if-eq v7, v3, :cond_13

    :cond_b
    move v0, v6

    :goto_3
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAllSet:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    if-eqz v7, :cond_14

    :cond_c
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    :goto_4
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdatedSize:Z

    if-eqz v7, :cond_e

    :cond_d
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-interface {v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;->onSizeChanged(I)V

    :cond_e
    if-eqz v0, :cond_f

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    invoke-interface {v7, v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;->onContentChanged(II)V

    :cond_f
    monitor-enter p0

    :try_start_7
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    if-eqz v7, :cond_10

    const/4 v7, -0x1

    iput v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNotifyCount:I

    :cond_10
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const/4 v7, 0x0

    invoke-direct {p0, v7, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->applyViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    if-eqz v4, :cond_11

    if-eqz v0, :cond_11

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    invoke-interface {v4, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;->onContentChanged(II)V

    :cond_11
    monitor-enter p0

    :try_start_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->isActive()Z

    move-result v7

    if-nez v7, :cond_15

    :cond_12
    const-string/jumbo v5, "ComposeViewDataLoader"

    const-string/jumbo v7, "mReloadTask is null or not active. return "

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    goto/16 :goto_2

    :catchall_3
    move-exception v5

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v5

    :cond_13
    move v0, v5

    goto :goto_3

    :cond_14
    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mItemSize:I

    goto :goto_4

    :catchall_4
    move-exception v5

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v5

    :cond_15
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->isDirty()Z

    move-result v7

    if-eqz v7, :cond_16

    const-string/jumbo v5, "ComposeViewDataLoader"

    const-string/jumbo v7, "loadData returned just after loadMediaSet"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_16
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    if-ne v7, v8, :cond_17

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    invoke-interface {v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;->onAllContentReady()V

    :cond_17
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateContentsRange()V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateAll:Z

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    or-int/2addr v7, v8

    or-int/2addr v7, v0

    if-eqz v7, :cond_3

    move v6, v5

    goto/16 :goto_2
.end method

.method private loadItem()V
    .locals 14

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-object v8, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v9, :cond_1

    monitor-exit v8

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v4

    iget-wide v10, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    cmp-long v9, v10, v4

    if-nez v9, :cond_2

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNeedToLoadAllItems:Z

    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    :cond_2
    const/4 v9, 0x1

    :try_start_1
    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNeedToLoadAllItems:Z

    iget-wide v10, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    const-wide/16 v12, -0x1

    cmp-long v9, v10, v12

    if-nez v9, :cond_6

    move v2, v7

    :goto_1
    iput-wide v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v8, v6

    if-nez v0, :cond_3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aput-object v0, v8, v6

    :cond_3
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-eqz v8, :cond_0

    if-lez v3, :cond_4

    move v6, v7

    :cond_4
    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mItemSize:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    invoke-virtual {v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->setAlbumAttribute(I)I

    move-result v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-byte v6, v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mRetThmType:B

    invoke-static {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;B)B

    iget v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ne v1, v6, :cond_5

    if-eqz v2, :cond_0

    :cond_5
    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IZ)V

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    goto :goto_0

    :cond_6
    move v2, v6

    goto :goto_1
.end method

.method private loadMediaSet(II)V
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    if-nez v7, :cond_1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    if-ne p1, v7, :cond_1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    if-ne p2, v7, :cond_1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lez v7, :cond_3

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    add-int/lit8 v3, v7, -0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, v3

    if-eqz v0, :cond_0

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-static {v3, v7}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    :goto_1
    if-le p2, v6, :cond_2

    move p2, v6

    :cond_2
    if-lt p1, p2, :cond_4

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    if-eqz v7, :cond_0

    if-lez v6, :cond_0

    if-nez p2, :cond_0

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    const-wide/16 v8, -0x1

    iput-wide v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-direct {p0, v7, v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearAlbumSetInfo()V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    if-ge p1, v7, :cond_5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    if-lt v7, p2, :cond_6

    :cond_5
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-direct {p0, v7, v8, v10}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    :goto_2
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v5

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v4

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    if-eqz v7, :cond_7

    invoke-direct {p0, v5, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadSelectionSet(II)V

    goto :goto_0

    :cond_6
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    invoke-direct {p0, v7, p1, v10}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-direct {p0, p2, v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    goto :goto_2

    :cond_7
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    if-eqz v7, :cond_8

    invoke-direct {p0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->loadCoverItems(II)V

    goto :goto_0

    :cond_8
    if-ne v2, v1, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, v2

    if-nez v0, :cond_9

    const-string/jumbo v7, "ComposeViewDataLoader"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "album is null -> mAlbumSet size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v9, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " albumStart: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v0, v2, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;III)V

    goto/16 :goto_0

    :cond_a
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, v2

    if-eqz v0, :cond_b

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-direct {p0, v0, v2, v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;III)V

    :cond_b
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, v1

    if-eqz v0, :cond_c

    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-direct {p0, v0, v1, v9, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;III)V

    :cond_c
    add-int/lit8 v3, v2, 0x1

    :goto_3
    if-ge v3, v1, :cond_0

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActive:Z

    if-nez v7, :cond_d

    const-string/jumbo v7, "Gallery_Performance"

    const-string/jumbo v8, "ComposeViewDataLoader mIsActive false!! Do not need to update range."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, v3

    if-nez v0, :cond_e

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_e
    iget v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-direct {p0, v0, v3, v9, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;III)V

    goto :goto_4
.end method

.method private loadSelectedItem()V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    const-wide/16 v8, -0x1

    cmp-long v2, v6, v8

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mMediaList:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, v4

    if-nez v0, :cond_2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aput-object v0, v2, v4

    :cond_2
    if-lez v1, :cond_4

    move v2, v3

    :goto_1
    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mItemSize:I

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;B)B

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eq v1, v2, :cond_3

    invoke-static {v0, v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IZ)V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    :cond_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRealRatioForPhotoSplit:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setNewAlbumList()V

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_1
.end method

.method private loadSelectionSet(II)V
    .locals 11

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mMediaList:Ljava/util/LinkedList;

    if-nez v7, :cond_1

    :cond_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-gt p1, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v7, v10

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v3

    array-length v2, v3

    move v1, p1

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    if-ge v1, p2, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mMediaList:Ljava/util/LinkedList;

    invoke-virtual {v7, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v6, :cond_3

    const-wide/16 v8, -0x1

    aput-wide v8, v3, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v4

    add-int/lit8 v7, v2, -0x1

    if-gt v1, v7, :cond_2

    aget-wide v8, v3, v1

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    if-ge v1, v7, :cond_4

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    :cond_4
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    if-le v1, v7, :cond_5

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    :cond_5
    aput-wide v4, v3, v1

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object v6, v7, v1

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v7

    aput-byte v10, v7, v1

    goto :goto_1
.end method

.method private loadSet()V
    .locals 14

    sget-object v9, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v8, :cond_1

    const-string/jumbo v8, "ComposeViewDataLoader"

    const-string/jumbo v10, "loadSet() start but mSource is null"

    invoke-static {v8, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v9

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v6

    iget-wide v10, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    const-wide/16 v12, -0x1

    cmp-long v8, v10, v12

    if-nez v8, :cond_2

    const/4 v2, 0x1

    :goto_1
    iget-wide v10, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    cmp-long v8, v10, v6

    if-nez v8, :cond_3

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    if-nez v8, :cond_3

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNeedToLoadAllItems:Z

    monitor-exit v9

    goto :goto_0

    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    :try_start_1
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNeedToLoadAllItems:Z

    iput-wide v6, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    iput v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-eq v5, v8, :cond_4

    const/4 v8, 0x1

    :goto_2
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSetChanged:Z

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-nez v8, :cond_5

    const-string/jumbo v8, "ComposeViewDataLoader"

    const-string/jumbo v9, "mSource reloaded. but mSize is 0."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->checkIncreaseAlbumSet(I)V

    const/4 v3, 0x0

    :goto_3
    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v3, v8, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v8, v3

    if-nez v0, :cond_6

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aput-object v0, v8, v3

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v6

    :goto_4
    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$000(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-nez v8, :cond_9

    if-nez v2, :cond_9

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    const-wide/16 v6, -0x1

    goto :goto_4

    :cond_9
    invoke-static {v0, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$002(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;J)J

    iput-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    :goto_6
    iput v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget v9, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->setAlbumAttribute(I)I

    move-result v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-byte v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mRetThmType:B

    invoke-static {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;B)B

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-eq v1, v8, :cond_b

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IZ)V

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    goto :goto_5

    :cond_a
    const/4 v8, 0x0

    goto :goto_6

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-nez v8, :cond_c

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSocialStoryView:Z

    if-eqz v8, :cond_7

    :cond_c
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSizeChanged:Z

    goto :goto_5
.end method

.method private needToReloadData(ZZZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseScrollDirectionData:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setNewAlbumList()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateNewAlbumList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSmallItemList:Ljava/util/ArrayList;

    return-void
.end method

.method private setSource(Lcom/sec/android/gallery3d/data/MediaSet;ZZ)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-ne p1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    :cond_1
    :goto_1
    iput-boolean p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    invoke-static {p1}, Lcom/sec/android/gallery3d/common/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-direct {p0, v0, v2, p3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    if-eqz p3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearAlbumSetInfo()V

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mSourceListener:Lcom/sec/android/gallery3d/data/ContentListener;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    goto :goto_1
.end method

.method private terminateReloadTask()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->terminate()V

    const-string/jumbo v1, "ComposeViewDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ComposeViewDataLoader: reloadTask is terminate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->join(J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->interrupt()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ComposeViewDataLoader"

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private updateContentsRange()V
    .locals 21

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getRange(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdStart:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdEnd:I

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v11

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v19

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActiveRange:Z

    const/16 v17, 0x1

    :cond_2
    :goto_1
    if-eqz v17, :cond_4

    const/16 v17, 0x0

    const/4 v2, -0x1

    if-eq v11, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v12, v2, v11

    if-nez v12, :cond_3

    const-string/jumbo v2, "ComposeViewDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "album is null - album index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v20

    iget-object v15, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v0, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v16, v0

    invoke-static {v12}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$100(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)B

    move-result v13

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsRangeChanged:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ComposeViewDataLoader"

    const-string/jumbo v3, "Range changed due to scale animation."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsRangeChanged:Z

    goto :goto_0

    :cond_5
    iget v2, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v0, v19

    if-ge v0, v2, :cond_8

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-byte v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mRetThmType:B

    const/16 v3, 0x30

    if-ne v2, v3, :cond_b

    aget-object v2, v16, v19

    if-eqz v2, :cond_a

    aget-object v2, v16, v19

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v2

    int-to-float v2, v2

    aget-object v3, v16, v19

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->isPanorama(FF)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v6, 0x3

    const-string/jumbo v2, "ComposeViewDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "image is isPanorama "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    aget-byte v2, v20, v19

    if-ge v2, v6, :cond_f

    aput-byte v6, v20, v19

    aget-object v18, v15, v19

    new-instance v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    iget-object v3, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    aget-object v4, v16, v19

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mZoomLevel:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    invoke-direct/range {v1 .. v9}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;IIIILcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    aput-object v1, v15, v19

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstItemOnly:Z

    if-eqz v2, :cond_e

    :cond_6
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v2, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    :cond_7
    :goto_3
    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    :cond_8
    :goto_4
    add-int/lit8 v19, v19, 0x1

    add-int/lit8 v5, v5, 0x1

    iget v2, v12, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v0, v19

    if-lt v0, v2, :cond_9

    add-int/lit8 v11, v11, 0x1

    const/16 v19, 0x0

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v5

    const/16 v17, 0x1

    :cond_9
    if-lt v5, v14, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getRange(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdStart:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdEnd:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActiveRange:Z

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v11

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v19

    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    goto :goto_2

    :cond_b
    const/16 v2, 0x20

    if-eq v13, v2, :cond_c

    const/16 v2, 0x30

    if-ne v13, v2, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-byte v6, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    goto/16 :goto_2

    :cond_d
    move v6, v13

    goto/16 :goto_2

    :cond_e
    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    goto :goto_3

    :cond_f
    if-nez v10, :cond_10

    aget-object v18, v15, v19

    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->isValid()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImageLatency()V

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateAll:Z

    if-eqz v2, :cond_8

    aget-object v18, v15, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object/from16 v0, v18

    invoke-interface {v2, v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;->onBitmapAvailable(Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;)V

    goto :goto_4
.end method

.method private updateNewAlbumList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    new-instance v3, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/data/SmallItem;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_0

    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/SmallItem;->setOrientation(I)V

    :cond_0
    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/sec/android/gallery3d/data/SmallItem;->setDateInMs(J)V

    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/SmallItem;->setWidth(I)V

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/SmallItem;->setHeight(I)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method private updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IIILjava/util/ArrayList;)V

    return-void
.end method

.method private updateRange(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IIILjava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;",
            "III",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;)V"
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$500(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$300(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[J

    move-result-object v8

    invoke-static/range {p1 .. p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$400(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;)[B

    move-result-object v16

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v9, :cond_2

    const-string/jumbo v20, "ComposeViewDataLoader"

    const-string/jumbo v21, "mediaSet is null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    goto :goto_0

    :cond_2
    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v18

    move/from16 v14, p4

    move/from16 v3, p3

    move/from16 v5, p3

    :goto_1
    move/from16 v0, p4

    if-ge v5, v0, :cond_6

    aget-wide v20, v13, v5

    cmp-long v20, v20, v18

    if-nez v20, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    if-ge v5, v14, :cond_5

    move v14, v5

    :cond_5
    if-le v5, v3, :cond_3

    move v3, v5

    goto :goto_2

    :cond_6
    if-ge v3, v14, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    goto :goto_0

    :cond_7
    if-eqz p5, :cond_a

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    move/from16 v20, v0

    add-int v4, v20, v14

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    move/from16 v20, v0

    add-int v20, v20, v3

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v20

    if-ge v4, v0, :cond_8

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mOffset:I

    :goto_4
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int v20, v14, v12

    add-int/lit8 v20, v20, -0x1

    array-length v0, v13

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v5, v14

    :goto_5
    if-gt v5, v3, :cond_0

    aget-wide v20, v13, v5

    cmp-long v20, v20, v18

    if-eqz v20, :cond_b

    aput-wide v18, v13, v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mCheckSetVersion:Z

    move/from16 v17, v0

    :goto_6
    aput-wide v18, v13, v5

    sub-int v20, v5, v14

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v15, :cond_c

    const-wide/16 v20, -0x1

    aput-wide v20, v8, v5

    :cond_9
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    sget-object v21, Lcom/sec/android/gallery3d/data/DataManager;->LOCK:Ljava/lang/Object;

    monitor-enter v21

    sub-int v20, v3, v14

    add-int/lit8 v20, v20, 0x1

    :try_start_0
    move/from16 v0, v20

    invoke-virtual {v9, v14, v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v6

    monitor-exit v21

    goto :goto_4

    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v20

    :cond_b
    const/16 v17, 0x0

    goto :goto_6

    :cond_c
    invoke-virtual {v15}, Lcom/sec/android/gallery3d/data/MediaItem;->getDataVersion()J

    move-result-wide v10

    if-nez v17, :cond_d

    aget-wide v20, v8, v5

    cmp-long v20, v10, v20

    if-eqz v20, :cond_9

    :cond_d
    aput-wide v10, v8, v5

    aput-object v15, v7, v5

    const/16 v20, 0x0

    aput-byte v20, v16, v5

    move/from16 v0, p2

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v2, v0, :cond_e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentStart:I

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v2, v0, :cond_9

    move-object/from16 v0, p0

    iput v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdContentEnd:I

    goto :goto_7
.end method

.method private useScrollInformation(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseScrollDirectionData:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method applyMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mSize:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iget-wide v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVersion:J

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iget v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveStart:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iget v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveEnd:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iget v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mContentStart:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mContentEnd:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->checkIncreaseAlbumSet(I)V

    iget-object v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mAlbumInfo:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public forceReload()V
    .locals 2

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    return-void
.end method

.method public getAlbumIndexFromFilePath(Ljava/lang/String;)I
    .locals 5

    const/4 v3, -0x1

    if-nez p1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v4, v1

    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 5

    const/4 v2, -0x1

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, v1

    if-eqz v0, :cond_2

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v3, :cond_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eq p1, v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAllCount()I
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, v1

    if-nez v0, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    add-int/2addr v2, v3

    goto :goto_1

    :cond_1
    return v2
.end method

.method public getAllItem(IZ)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v5, p1

    if-nez v0, :cond_0

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    iget-object v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->forceReload()V

    :cond_1
    move-object v3, v2

    goto :goto_0
.end method

.method public getAllItemCount(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, p1

    if-nez v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    :cond_1
    move v3, v1

    goto :goto_0
.end method

.method getBitmapListener()Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    return-object v0
.end method

.method public getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 4

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, v1

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v3, v3, v2

    if-ne v3, p1, :cond_2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v3

    :goto_2
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public getCodeForMediaItemFromSmallItemList(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 5

    const/4 v1, 0x0

    :goto_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->getSmallItemList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/SmallItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/SmallItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v3

    :goto_2
    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    goto :goto_2
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    goto :goto_0
.end method

.method public getCount(I)I
    .locals 6

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-gt p1, v3, :cond_1

    const-string/jumbo v3, "ComposeViewDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ArrayIndexOutOfBounds : getCount() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseSmartClustering:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    array-length v3, v3

    if-lt p1, v3, :cond_4

    const-string/jumbo v3, "ComposeViewDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ArrayIndexOutOfBounds-2 : getCount() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, p1

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    goto :goto_0
.end method

.method public getImage(II)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v2, :cond_2

    :cond_0
    const-string/jumbo v2, "ComposeViewDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImage : index ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, p1

    if-eqz v0, :cond_1

    iget v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-lt p2, v2, :cond_3

    const-string/jumbo v2, "ComposeViewDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getImage : photoIndex ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v2, v2, p2

    if-eqz v2, :cond_1

    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 5

    const/4 v2, 0x0

    if-ltz p1, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt p1, v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v3, p1

    if-eqz v0, :cond_0

    if-ltz p2, :cond_0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    array-length v3, v3

    if-ge p2, v3, :cond_0

    iget-object v3, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, v3, p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ComposeViewDataLoader"

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v3, "ComposeViewDataLoader"

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method getMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    new-array v0, v0, [Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iput-object v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mAlbumInfo:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget-object v1, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mAlbumInfo:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mSize:I

    iget-wide v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iput-wide v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVersion:J

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveStart:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveStart:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mActiveEnd:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mActiveEnd:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mContentStart:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    iput v0, p1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mContentEnd:I

    return-void
.end method

.method getNewAlbumList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSmallItemList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSelectableAlbumCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSelectableSubMediaSetCount()I

    move-result v0

    return v0
.end method

.method public getShowGroupId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mShowGroupIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSmallItemList(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/SmallItem;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/SmartClusterAlbumSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSmallItemList(I)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-ge p1, v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-string/jumbo v2, "ComposeViewDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSubMediaSet is out of size : index ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v0, v2, p1

    if-nez v0, :cond_2

    const-string/jumbo v2, "ComposeViewDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[getSubMediaSet] mAlbumSet = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    goto :goto_0
.end method

.method public isShowAllGroup()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPause(Z)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActive:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->terminateReloadTask()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearContents(Z)V

    :cond_0
    return-void
.end method

.method public declared-synchronized onResume()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstReloadSkip:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public refreshAlbumSet()V
    .locals 26

    const-string/jumbo v19, "Gallery_Performance"

    const-string/jumbo v22, "refreshAlbumSet Start"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sget-object v22, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScaleLock:Ljava/lang/Object;

    monitor-enter v22

    const/16 v18, 0x0

    const/4 v8, 0x0

    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    move-object/from16 v19, v0

    aget-object v4, v19, v8

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Landroid/util/SparseArray;

    invoke-direct {v11}, Landroid/util/SparseArray;-><init>()V

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    const/16 v16, 0x0

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v8, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    move-object/from16 v19, v0

    aget-object v4, v19, v8

    const/16 v17, 0x0

    :goto_2
    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    if-eqz v19, :cond_1

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    if-eqz v19, :cond_2

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v19, v0

    aget-object v19, v19, v17

    move/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    move/from16 v0, v18

    move/from16 v1, v16

    if-eq v0, v1, :cond_5

    const-string/jumbo v19, "ComposeViewDataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "refreshAlbumSet : before tempIndex ="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", totalItemCount = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v13

    const-string/jumbo v19, "ComposeViewDataLoader"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "refreshAlbumSet previousAlbumSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, ", new AlbumSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearAlbumSetInfo()V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->checkIncreaseAlbumSet(I)V

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    const/16 v16, 0x0

    const/4 v8, 0x0

    :goto_3
    if-ge v8, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    move-object/from16 v19, v0

    aget-object v4, v19, v8

    if-nez v4, :cond_6

    new-instance v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    move-object/from16 v19, v0

    aput-object v4, v19, v8

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getDataVersion()J

    move-result-wide v20

    :goto_4
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    :goto_5
    move-wide/from16 v0, v20

    invoke-static {v4, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$002(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;J)J

    iput-object v10, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iput v9, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->setAlbumAttribute(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-byte v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mRetThmType:B

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$102(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;B)B

    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v5, v0, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-static {v4, v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->access$200(Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;IZ)V

    :cond_7
    const/16 v17, 0x0

    :goto_6
    iget v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemCount:I

    move/from16 v19, v0

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_a

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mItemImage:[Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    move-object/from16 v23, v0

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    aput-object v19, v23, v17

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v23, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/gallery3d/data/MediaItem;

    aput-object v19, v23, v17

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    :cond_8
    const-wide/16 v20, -0x1

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_b
    monitor-exit v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v19, "Gallery_Performance"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "refreshAlbumSet End : Duration ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sub-long v24, v6, v14

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v19

    :try_start_1
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v19
.end method

.method public final declared-synchronized reloadData()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsActive:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReloadTask:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->notifyDirty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->createReloadTask()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public requestScreenNail(IIZ)Z
    .locals 11

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v8

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v10

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSize:I

    if-lt v8, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mAlbumSet:[Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;

    aget-object v9, v2, v8

    iget v2, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mCount:I

    if-ge v10, v2, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$AlbumInfo;->mMediaItem:[Lcom/sec/android/gallery3d/data/MediaItem;

    aget-object v2, v2, v10

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move v3, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_2
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestScreenNail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z
    .locals 8

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x3

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    const/4 v1, 0x1

    return v1
.end method

.method public requestThumbnail(Lcom/sec/android/gallery3d/data/MediaItem;IZ)Z
    .locals 8

    new-instance v0, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x2

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mListenerBitmap:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;

    move-object v2, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;IIIZLcom/sec/samsung/gallery/view/image_manager/ComposeImageItem$OnBitmapAvailableListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->cancelImageRequest()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->recycle()V

    :cond_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mScreenNailImage:Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/image_manager/ComposeImageItem;->requestImage()V

    const/4 v1, 0x1

    return v1
.end method

.method setActiveWindow(IIIIZZ)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIsRangeChanged:Z

    if-nez p5, :cond_3

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateBitmapDirectly:Z

    invoke-direct {p0, p5, p6}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->useScrollInformation(ZZ)Z

    move-result v2

    sget-object v6, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLOCK:Ljava/lang/Object;

    monitor-enter v6

    if-eqz v2, :cond_4

    :try_start_0
    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    if-gt v3, p2, :cond_0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    if-le v3, p1, :cond_4

    :cond_0
    move v1, v4

    :goto_1
    if-eqz v2, :cond_5

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    if-lt v3, p2, :cond_1

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    if-ge v3, p1, :cond_5

    :cond_1
    move v0, v4

    :goto_2
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveStart:I

    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqActiveEnd:I

    if-eqz v0, :cond_6

    :goto_3
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentStart:I

    if-eqz v1, :cond_7

    :goto_4
    iput p2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mReqContentEnd:I

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstReloadSkip:Z

    if-nez v3, :cond_8

    invoke-direct {p0, v1, v0, p5, p6}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->needToReloadData(ZZZZ)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    :cond_2
    :goto_5
    return-void

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v0, v5

    goto :goto_2

    :cond_6
    move p1, p3

    goto :goto_3

    :cond_7
    move p2, p4

    goto :goto_4

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_8
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIgnoreSkip:Z

    if-eqz v3, :cond_2

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mIgnoreSkip:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstReloadSkip:Z

    goto :goto_5
.end method

.method public setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/app/LoadingListener;

    return-void
.end method

.method public setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSource:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->createReloadTask()V

    goto :goto_0
.end method

.method public setSelectionSource(Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mNewAlbumSelectionProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSelectionSet:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mFirstLoad:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSrcChanged:Z

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mSourceVersion:J

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->clearAlbumSetInfo()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setSource(Lcom/sec/android/gallery3d/data/MediaSet;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;ZZ)Z

    move-result v0

    return v0
.end method

.method public setThumbReslevel(I)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateAll:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->reloadData()V

    return-void
.end method

.method declared-synchronized setViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, -0x1

    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->applyViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ViewListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setZoomLevel(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mUpdateBitmapDirectly:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mConfig:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;->mUseZoomLevelInformation:Z

    if-eqz v0, :cond_0

    :goto_0
    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mZoomLevel:I

    return-void

    :cond_0
    const/4 p1, -0x1

    goto :goto_0
.end method

.method public terminate()V
    .locals 3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->terminateReloadTask()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentStart:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mContentEnd:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->cancelContents(IIZ)V

    return-void
.end method
