.class public Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "PhotoSplitViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;,
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;,
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;
    }
.end annotation


# static fields
.field private static final ADD_EVENT_RESULT_OK:I = 0x3

.field private static final DEFAULT_LOADING_COUNT:I = 0x12

.field private static final DEFAULT_MEDIASET_INDEX:I = 0x0

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final MAX_ITEM_NUMBER_LABEL:I = 0x270f

.field private static final MSG_ALBUM_LOADING_FINISHED:I = 0x0

.field private static final MSG_PHOTO_LOADING_FINISHED:I = 0x1

.field public static final MSG_UPDATE_ACTIONBAR:I = 0x2

.field private static final REQUEST_ADD_TAG:I = 0x906

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field private static final REQUEST_EVENT_LIST:I = 0xc6f

.field private static final REQUEST_FINISH_FOR_THEME_STORE:I = 0x905

.field private static final TAG:Ljava/lang/String; = "PhotoSplitViewState"

.field public static final VIEW_MODE_SWITCH_TO_DETAIL_VIEW:I = 0x201

.field public static final VIEW_MODE_SWITCH_TO_DETAIL_VIEW_FROM_CAMERA:I = 0x202

.field public static final VIEW_MODE_SWITCH_TO_DETAIL_VIEW_TO_OTHER:I = 0x203


# instance fields
.field private mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

.field private mAlbumCount:I

.field public mAlbumLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;

.field public final mAlbumModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private mCurrentLaunchMode:Lcom/sec/samsung/gallery/core/LaunchModeType;

.field public mCurrentLayout:I

.field mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field mCurrentMediaItemIndex:I

.field mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field mCurrentMediaSetIndex:I

.field mCurrentMediaSetPath:Ljava/lang/String;

.field private mCurrentTopMediaSetPath:Ljava/lang/String;

.field mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field public mDetailViewStarted:Z

.field private final mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

.field public mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mFromAlbumViewState:Z

.field private mFromGalleryWidget:Z

.field private mFromGifMaker:Z

.field private mFromInsideGallery:Z

.field mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field final mGroupIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mIsCollageMode:Z

.field public mIsEasyMode:Z

.field private mIsExitedNewAlbumMode:Z

.field mIsGifMode:Z

.field public mIsNewAlbumHeaderSelected:Z

.field mIsPenSelect:Z

.field private mIsPickFromAddToNewAlbum:Z

.field private mIsPickFromAddToStory:Z

.field mIsPickMode:Z

.field mIsSightMode:Z

.field mIsUnablePickPrivateFiles:Z

.field mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

.field public final mMainHandler:Landroid/os/Handler;

.field mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mMenu:Landroid/view/Menu;

.field public mNewAlbumPath:Ljava/lang/String;

.field private mNewAlbumResult:Z

.field private final mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

.field private mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private final mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

.field mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

.field public mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

.field private final mPhotoModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private final mPhotoSplitViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

.field private mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

.field mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

.field mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

.field private mSplitRatioLand:F

.field private mSplitRatioPort:F

.field private final mTooSmallForCropItemSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mUpdatePath:Z

.field mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

.field private final mUseMtpView:Z

.field public misFilteredForStoryAlbum:Z

.field final tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

.field public unmountedStorage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->FEATURE_USE_DEVICE_COG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDetailViewStarted:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGroupIDList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromAlbumViewState:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdatePath:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUseMtpView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsExitedNewAlbumMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumResult:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unmountedStorage:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTooSmallForCropItemSet:Ljava/util/Set;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;

    const-string/jumbo v1, "PHOTO_SPLIT_VIEW_EXIT_SELECTION"

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$2;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoSplitViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$4;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$5;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$6;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$9;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$10;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$11;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$11;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    return-void
.end method

.method private AddShortCutOnHomeScreen()V
    .locals 5

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "com.android.gallery.action.SHORTCUT_VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.shortcut.NAME"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/gallery3d/common/BitmapUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateAlbumNameOfActionBar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/samsung/gallery/util/AddItemToChannel;)Lcom/sec/samsung/gallery/util/AddItemToChannel;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$2202(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/android/gallery3d/data/MediaSet;IILcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;IILcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;I)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemFilterMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemNewAlbumMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioLand:F

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)F
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioPort:F

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    return-void
.end method

.method private calcSplitRatio()V
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b014f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v2, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_0

    div-float v3, v2, v0

    iput v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioPort:F

    div-float v3, v2, v1

    iput v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioLand:F

    :goto_0
    new-instance v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    new-instance v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$AlbumLayoutConfig;

    return-void

    :cond_0
    div-float v3, v2, v1

    iput v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioPort:F

    div-float v3, v2, v0

    iput v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitRatioLand:F

    goto :goto_0
.end method

.method private checkAndSetValidMediaItemSource()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "PhotoSplitViewState"

    const-string/jumbo v2, "checkMediaItemSourceValid : source in mediaItemAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v1, :cond_2

    const-string/jumbo v1, "PhotoSplitViewState"

    const-string/jumbo v2, "checkMediaItemSourceValid : mComponent or mTopMediaSet is null, finish state !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_3

    const-string/jumbo v1, "PhotoSplitViewState"

    const-string/jumbo v2, "checkMediaItemSourceValid : 1st SubMediaSet is null, finish state !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setInitialCode()V

    goto :goto_0
.end method

.method private checkEnableAnimateCollage(I)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v6

    sget v10, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    if-ne p1, v10, :cond_0

    move v1, v9

    :goto_0
    if-eqz v1, :cond_1

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :goto_1
    if-eqz v1, :cond_2

    const-string/jumbo v7, "CrossPhotoEditorAnimationEditor"

    :goto_2
    if-le v6, v3, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a0753

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, v7, v10, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_3
    return v8

    :cond_0
    move v1, v8

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_1

    :cond_2
    const-string/jumbo v7, "CrossPhotoEditorCollageEditor"

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v6, :cond_6

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v10

    if-nez v10, :cond_4

    instance-of v10, v2, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v10, :cond_4

    instance-of v10, v2, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-nez v10, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a0754

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v10, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v9, v7, v10, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    move v8, v9

    goto :goto_3
.end method

.method private exitSelectionMode(Z)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsExitedNewAlbumMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->exitNewalbumSelectionMode()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGroupIDList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0, v3, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshSelectionBarState(Z)V

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDCShareParam()Lcom/samsung/android/devicecog/gallery/DCShareParameter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/DCShareParameter;->resetParameter()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setDCShareParam(Lcom/samsung/android/devicecog/gallery/DCShareParameter;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private getActionbarUpButton(I)Landroid/widget/ImageButton;
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v4, v6, v7}, Landroid/view/ViewGroup;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageButton;

    if-eqz v6, :cond_2

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    :cond_0
    :goto_0
    if-nez v5, :cond_1

    const-string/jumbo v6, "PhotoSplitViewState"

    const-string/jumbo v7, "refreshActionBarTheme : navigate up button cannot find."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v5

    :cond_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Landroid/widget/ImageButton;

    if-eqz v6, :cond_3

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private getImageCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getImageCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getImageCountString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getPhotoNumberLabelForAlbum(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMiddleColor(FII)I
    .locals 14

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static/range {p2 .. p2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->red(I)I

    move-result v11

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static/range {p3 .. p3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    int-to-float v12, v4

    sub-int v13, v4, v8

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v0, v12

    int-to-float v12, v7

    sub-int v13, v7, v11

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v3, v12

    int-to-float v12, v6

    sub-int v13, v6, v10

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v2, v12

    int-to-float v12, v5

    sub-int v13, v5, v9

    int-to-float v13, v13

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    float-to-int v1, v12

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    return v12
.end method

.method private getPhotoNumberLabelForAlbum(II)Ljava/lang/String;
    .locals 6

    const/16 v4, 0x270f

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-ne p1, v3, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    :pswitch_1
    if-ne p1, v3, :cond_0

    const v0, 0x7f0a0391

    :goto_2
    goto :goto_0

    :cond_0
    const v0, 0x7f0a0392

    goto :goto_2

    :pswitch_2
    if-ne p1, v3, :cond_1

    const v0, 0x7f0a0396

    :goto_3
    goto :goto_0

    :cond_1
    const v0, 0x7f0a0397

    goto :goto_3

    :cond_2
    if-le p1, v4, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getTopSetPathByFilter()Ljava/lang/String;
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/data/FilterTypeSet;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getVideoCount()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private getVideoCountString(I)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getPhotoNumberLabelForAlbum(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getViewOption()I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleSortByForDC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->getSortByTypeFromString(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->getSortByOrderFromString(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0775

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "Sortby"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private refreshDualScreenFocus()V
    .locals 5

    const/4 v0, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    const-string/jumbo v2, "PhotoSplitViewState"

    const-string/jumbo v3, "refreshDualScreenFocus item null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v2, "PhotoSplitViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshDualScreenFocus path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "PhotoSplitViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshDualScreenFocus :: focus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    sget-object v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->updateDualScreenFocus(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "PhotoSplitViewState"

    const-string/jumbo v3, "refreshDualScreenFocus :: mMediaItemAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "PhotoSplitViewState"

    const-string/jumbo v3, "refreshDualScreenFocus :: mComposeView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private restoreSortByState()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getSortByValue()I

    move-result v0

    if-eqz v0, :cond_0

    rem-int/lit8 v1, v0, 0xa

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    :goto_0
    div-int/lit8 v1, v0, 0xa

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    :cond_0
    :goto_1
    const-string/jumbo v1, "PhotoSplitViewState"

    const-string/jumbo v2, "initSortByState. Type and OrderType are initialized."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_CREATIONTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_MODIFIEDTIME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->SORTBY_NAME:Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ASCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    sget-object v2, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->DESCENDING:Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->notifyDirty()V

    sget-object v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$12;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$SortByType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    sget-object v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$12;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$SortByOrderType:[I

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    add-int/lit8 v0, v0, 0xa

    :goto_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setSortByValue(I)V

    const-string/jumbo v1, "PhotoSplitViewState"

    const-string/jumbo v2, "saveSortByState. Type and OrderType are saved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :pswitch_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    :pswitch_3
    add-int/lit8 v0, v0, 0xa

    goto :goto_2

    :pswitch_4
    add-int/lit8 v0, v0, 0x14

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private selectAll()V
    .locals 14

    const/16 v13, 0x3e8

    const/16 v8, 0x1f4

    const/4 v12, 0x6

    const/4 v7, 0x1

    const/4 v9, -0x1

    const/4 v2, -0x1

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v10, v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v10, "pick-max-item"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v10, v10, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v10, v12, :cond_6

    :cond_0
    sget-object v10, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v10}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v10

    if-nez v10, :cond_6

    if-ne v3, v9, :cond_1

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGalleryWidget:Z

    if-eqz v10, :cond_3

    const/16 v3, 0x3e8

    :cond_1
    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    sub-int v2, v3, v6

    if-nez v2, :cond_6

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateMaximumSelectionNumberExceeded(I)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGifMaker:Z

    if-eqz v10, :cond_4

    const-string/jumbo v10, "select_num_key"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto :goto_0

    :cond_4
    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromInsideGallery:Z

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v10, :cond_5

    move v3, v7

    :goto_2
    goto :goto_0

    :cond_5
    move v3, v8

    goto :goto_2

    :cond_6
    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v10, :cond_9

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v10

    sub-int v2, v3, v10

    :cond_7
    :goto_3
    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v10

    sub-int v5, v10, v0

    if-eq v2, v9, :cond_8

    if-le v2, v5, :cond_b

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v7, :cond_c

    if-eq v3, v9, :cond_c

    if-lez v2, :cond_c

    invoke-direct {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllProcess(III)V

    :goto_5
    const-string/jumbo v7, "pick-max-item"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v7, :cond_2

    if-eq v4, v9, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lt v6, v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateMaximumSelectionNumberExceeded(I)V

    goto :goto_1

    :cond_9
    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v10, :cond_a

    const/4 v3, 0x6

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v10

    sub-int v2, v3, v10

    goto :goto_3

    :cond_a
    iget-boolean v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v10}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_7

    if-gtz v2, :cond_7

    move v2, v3

    goto :goto_3

    :cond_b
    move v5, v2

    goto :goto_4

    :cond_c
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v7, v7, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v7, v12, :cond_10

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v7, :cond_d

    const/4 v3, 0x1

    :goto_6
    if-lt v5, v13, :cond_f

    invoke-direct {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllProcessTask(III)V

    goto :goto_5

    :cond_d
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_e

    move v3, v9

    :goto_7
    goto :goto_6

    :cond_e
    move v3, v8

    goto :goto_7

    :cond_f
    invoke-direct {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllProcess(III)V

    goto :goto_5

    :cond_10
    if-lt v5, v13, :cond_11

    invoke-direct {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllProcessTask(III)V

    goto :goto_5

    :cond_11
    invoke-direct {p0, v2, v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllProcess(III)V

    goto :goto_5
.end method

.method private selectAllItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;II)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v12

    add-int/lit8 v13, v12, -0x1

    div-int v10, v13, p3

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_0
    if-gt v4, v10, :cond_0

    if-gtz p2, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateMaximumSelectionNumberExceeded(ZII)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v13, :cond_11

    if-lez p2, :cond_11

    const/4 v11, 0x0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a004d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    mul-int v13, v4, p3

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v7, v13, :cond_4

    if-gtz p2, :cond_5

    if-lez p3, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateMaximumSelectionNumberExceeded(ZII)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v6, :cond_7

    const-string/jumbo v13, "PhotoSplitViewState"

    const-string/jumbo v14, "item is null"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_7
    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v13

    if-nez v13, :cond_a

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v13

    if-eqz v13, :cond_a

    :cond_8
    if-nez v9, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a049e

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_9
    const/4 v9, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v13, v13, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_c

    instance-of v13, v6, Lcom/sec/android/gallery3d/data/MtpImage;

    if-eqz v13, :cond_c

    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a049e

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_b
    const/4 v9, 0x1

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v13, :cond_d

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_e

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v13, :cond_10

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide v16, 0x2000000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_10

    :cond_e
    instance-of v13, v6, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v13, :cond_f

    instance-of v13, v6, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v13, :cond_6

    :cond_f
    const/4 v5, 0x1

    goto :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v13, :cond_2

    if-lez p2, :cond_2

    const/4 v11, 0x0

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00a8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_12
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private selectAllProcess(III)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItem(Lcom/sec/android/gallery3d/data/MediaSet;III)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    invoke-virtual {p0, v0, v3, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0, p3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshCheckState()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateFolderItem(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_4
    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0
.end method

.method private selectAllProcessTask(III)V
    .locals 9

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$7;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    new-instance v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$8;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    move-object v1, p0

    move v5, p1

    move v6, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;IIII)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->executeIfNotRunning(Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    return-void
.end method

.method private selectItem(Lcom/sec/android/gallery3d/data/MediaSet;III)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    move/from16 v0, p4

    if-eq v0, v4, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;II)V

    :cond_0
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/4 v8, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p4

    invoke-direct/range {v4 .. v9}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;IILcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;I)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v4, :cond_5

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAllItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;II)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemFilterMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItemNewAlbumMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V

    goto :goto_0

    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v10

    if-lez v10, :cond_8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getAllItems()Ljava/util/ArrayList;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getNewAlbumSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v4, v13, Lcom/sec/android/gallery3d/data/ActionImage;

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v14, v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-nez v4, :cond_9

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v4, :cond_b

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getParentMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v17

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_2

    :cond_b
    move-object/from16 v17, p1

    goto :goto_3
.end method

.method private selectItemFilterMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v8, v9, v10}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    invoke-virtual {p2, v8, v9, v11}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    invoke-virtual {p1, v10, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_2
    if-ge v2, v5, :cond_8

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2, v8, v9, v10}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    invoke-virtual {p2, v8, v9, v11}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_5
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaObject;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaObject;->getMediaType()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, p1, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_1
.end method

.method private selectItemNewAlbumMode(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;)V
    .locals 8

    const-wide/16 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-virtual {p1, v5, v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v6, v7, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    const/4 v4, 0x1

    invoke-virtual {p2, v6, v7, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->addSelectedNewItem(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, p1, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->requestNewAlbumImage(Lcom/sec/android/gallery3d/data/MediaItem;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshCheckState()V

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshCheckState()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    goto :goto_1
.end method

.method private selectItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;IILcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;I)V
    .locals 9

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    if-gt p5, p3, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0251

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->isCancelled()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_2
    if-gtz p2, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0251

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p4, v4, v5, v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    const-wide/16 v4, 0x1

    const/4 v6, 0x1

    invoke-virtual {p4, v4, v5, v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a049e

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, p1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2
.end method

.method private setComponentResume()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->setBasicReferences()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setBasicReferences()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;->setBasicReferences()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->initializeView()V

    return-void
.end method

.method private setEnvOnCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    invoke-direct {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;-><init>()V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->calcSplitRatio()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz p1, :cond_6

    const-string/jumbo v2, "KEY_IS_SIGHT_MODE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    new-instance v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v7, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLaunchMode:Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->setMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    new-instance v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    new-instance v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz p1, :cond_7

    const-string/jumbo v2, "KEY_ITEM_POSITION"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    if-eqz p1, :cond_8

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string/jumbo v2, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    iput-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    if-eqz p1, :cond_9

    const-string/jumbo v2, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_3
    iput v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    if-eqz p1, :cond_a

    const-string/jumbo v2, "KEY_FROM_ALBUM_VIEW_STATE"

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromAlbumViewState:Z

    if-eqz p1, :cond_b

    const-string/jumbo v2, "KEY_UP_SIDE_ALBUM_COUNT"

    invoke-virtual {p1, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    :goto_5
    iput v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumCount:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_1
    iput v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    :cond_2
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSortByMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->restoreSortByState()V

    :cond_3
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdatePath:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->isPickMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGalleryWidget(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGalleryWidget:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromInsideGallery(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromInsideGallery:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGifMaker(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGifMaker:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isUnablePickPrivateFiles(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsUnablePickPrivateFiles:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoSplitViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v2, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "pick-max-item"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGalleryWidget:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "pick-max-item"

    const/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_6
    const-string/jumbo v2, "is-pick-to-add-channel-view"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickFromAddToStory:Z

    const-string/jumbo v2, "is-pick-to-add-new-album"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickFromAddToNewAlbum:Z

    :cond_5
    return-void

    :cond_6
    move v2, v4

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto/16 :goto_1

    :cond_8
    move-object v2, v5

    goto/16 :goto_2

    :cond_9
    move v2, v4

    goto/16 :goto_3

    :cond_a
    move v2, v4

    goto/16 :goto_4

    :cond_b
    move v2, v6

    goto/16 :goto_5

    :cond_c
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGifMaker:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "select_num_key"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "pick-max-item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    :cond_d
    const-string/jumbo v2, "pick-max-item"

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v5, :cond_e

    :goto_7
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    :cond_e
    const/16 v3, 0x1f4

    goto :goto_7
.end method

.method private setEnvOnResume()V
    .locals 14

    const/4 v9, 0x2

    const/4 v13, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdatePath:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v10, "mtpMode"

    invoke-static {v6, v10, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    if-eqz v2, :cond_3

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUseMtpView:Z

    if-nez v6, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-eqz v6, :cond_2

    if-eqz v2, :cond_2

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUseMtpView:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getAddMtpTopPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->reloadData()V

    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewMediator;

    invoke-virtual {v6, v10}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDetailViewStarted:Z

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v6

    sget-object v11, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v6, v11, :cond_c

    move v6, v7

    :goto_2
    invoke-virtual {v10, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setMultiPickMode(Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    monitor-enter v10

    :try_start_0
    new-instance v6, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/photosplitview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getMediaItemAdapterSize()I

    move-result v10

    if-ne v6, v10, :cond_d

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getMediaItemAdapterSize()I

    move-result v6

    if-lez v6, :cond_d

    move v5, v7

    :goto_3
    if-nez v5, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "pick-max-item"

    invoke-virtual {v1, v6, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v13, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v6

    if-ne v6, v3, :cond_5

    const/4 v5, 0x1

    :cond_5
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v10, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v10, v11}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    :cond_6
    :goto_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->isTalkBackEnabled()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v6

    iget v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-static {v10}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupFirstItemIndex(I)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->setGenericMotionFocus(I)V

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iget v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v6, v13, v10}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateBorder(II)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getShrinkOption()I

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v8, v0, v8

    aget v7, v0, v7

    aget v9, v0, v9

    const/4 v10, 0x3

    aget v10, v0, v10

    invoke-virtual {v6, v8, v7, v9, v10}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_9
    return-void

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v6, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    goto/16 :goto_0

    :cond_b
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdatePath:Z

    goto/16 :goto_1

    :cond_c
    move v6, v8

    goto/16 :goto_2

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_d
    move v5, v8

    goto/16 :goto_3

    :cond_e
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v10, 0x8

    invoke-virtual {v6, v10, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_4

    :cond_f
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_4

    :cond_10
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v11, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getShrinkOption()I

    move-result v6

    if-eqz v6, :cond_11

    move v6, v9

    :goto_5
    invoke-direct {v11, v12, v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_4

    :cond_11
    move v6, v7

    goto :goto_5
.end method

.method private setFirstLoadingDetails()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getFirstLoadingCount()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mPrevCenterObject:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mPrevCenterObject:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getFirstLoadingCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    goto :goto_0
.end method

.method private setSortByValue(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sort_by_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private setUpBtnColor(F)V
    .locals 11

    const v8, 0x7f0a02b2

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getActionbarUpButton(I)Landroid/widget/ImageButton;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100012

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getMiddleColor(FII)I

    move-result v3

    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_2

    const v0, 0x7f020273

    :goto_1
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceNavigateUpUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_3

    instance-of v8, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_1

    move-object v8, v1

    check-cast v8, Landroid/graphics/drawable/LayerDrawable;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v3, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_1
    :goto_2
    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v9, 0x101045c

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v2, v10}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_2
.end method

.method private startSelectionMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->scaleAnimationForSelectionMode()V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_1
    return-void
.end method

.method private unselectAll()V
    .locals 5

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->unselectAll()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshCheckState()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAllItemInMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v1}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setLogicalSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iget v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateFolderItem(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v1, v3, :cond_4

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshCheckState()V

    invoke-virtual {p0, v0, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x1f4

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_2

    :cond_5
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_2
.end method

.method private updateAlbumNameOfActionBar()V
    .locals 11

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v9

    if-lt v8, v9, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    :cond_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromFilePath(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_3

    iput v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    add-int/lit8 v8, v8, -0x1

    aget-object v0, v6, v8

    const-string/jumbo v8, "Camera"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a00de

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_5

    instance-of v8, v3, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-nez v8, :cond_5

    const-string/jumbo v8, "/"

    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x1

    aget-object v0, v6, v8

    :cond_5
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a04e2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v8

    instance-of v8, v8, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const v9, 0x7f0a0248

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isCoverScrollUp()Z

    move-result v8

    if-eqz v8, :cond_c

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getImageCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getVideoCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getImageCountString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v1, :cond_a

    if-eqz v7, :cond_a

    const-string/jumbo v8, "  "

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getVideoCountString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v8, ""

    goto :goto_1

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v0, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const-string/jumbo v9, ""

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v0, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private updateLogicalAlbumMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    sget v1, Lcom/sec/android/gallery3d/data/LogicalBucketList;->FAVORITE_BUCKET_ID:I

    if-ne v0, v1, :cond_0

    const v0, 0x7f1202cb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    return-void
.end method

.method private updateMaximumSelectionNumberExceeded(ZII)V
    .locals 8

    const/4 v4, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_4

    :cond_0
    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v2, :cond_2

    sget v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sub-int v5, p3, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    sub-int v5, p3, p2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateMaximumSelectionNumberExceeded(I)V

    goto :goto_2
.end method

.method private updateRenameAlbumMenu(Landroid/view/Menu;)V
    .locals 4

    const v3, 0x7f120276

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRenameAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f1202c9

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method

.method private updateSetSplitAlbumMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f1202cc

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0165

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method enterSelectionMode()V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGifSelectMode(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setCollageSelectMode(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setMode(IILjava/lang/Object;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v4, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshSelectionBarState(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v4, :cond_5

    sget v1, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    sub-int v0, v1, v4

    :goto_1
    invoke-direct {p0, v2, v0, v3, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectItem(Lcom/sec/android/gallery3d/data/MediaSet;III)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v4, :cond_6

    const/4 v1, 0x6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    sub-int v0, v1, v4

    goto :goto_1

    :cond_6
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v4, :cond_7

    const/4 v1, 0x1

    :goto_2
    if-ne v1, v3, :cond_9

    move v0, v3

    :goto_3
    goto :goto_1

    :cond_7
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v1, -0x1

    :goto_4
    goto :goto_2

    :cond_8
    const/16 v1, 0x1f4

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v1, -0x1

    goto :goto_3
.end method

.method public exitSelectionMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode(Z)V

    return-void
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getFirstLoadingCount()I
    .locals 8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-nez v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    packed-switch v5, :pswitch_data_0

    const/16 v2, 0x12

    :goto_0
    return v2

    :pswitch_0
    const/16 v2, 0x80

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x42

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x28

    goto :goto_0

    :pswitch_3
    const/16 v2, 0x1c

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget v4, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mWidthSpace:F

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget v1, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mHeightSpace:F

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_2

    int-to-float v5, v0

    mul-float/2addr v5, v1

    div-float/2addr v5, v4

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v3, v6

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v5, v0

    add-int/lit8 v2, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->getPhotoWidthSpace()F

    move-result v4

    goto :goto_1

    :cond_2
    const/16 v2, 0x12

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getGlComposePhotoView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    return-object v0
.end method

.method getMediaItemAdapterSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "703"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "706"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    const-string/jumbo v0, "105"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "106"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "104"

    goto :goto_0
.end method

.method public getSortByValue()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sort_by_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getUpSideAlbumCount()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAlbumCount:I

    return v0
.end method

.method isAvailableCount(IZZ)Z
    .locals 11

    const/16 v4, 0x1f4

    const v10, 0x7f0a0251

    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromInsideGallery:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "pick-max-item"

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v7, :cond_0

    move v4, v5

    :cond_0
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v9, :cond_3

    if-le p1, v2, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGalleryWidget:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGifMaker:Z

    if-eqz v6, :cond_6

    const-string/jumbo v4, "select_num_key"

    invoke-virtual {v0, v4, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    if-eq v2, v9, :cond_5

    if-le p1, v2, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v10, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :cond_5
    if-eqz p2, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v4

    if-nez v4, :cond_1

    const-string/jumbo v4, "pick-min-item"

    invoke-virtual {v0, v4, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ge p1, v2, :cond_1

    if-le v2, v5, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f0a025b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    const-string/jumbo v6, "pick-max-item"

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v7, :cond_7

    move v4, v5

    :cond_7
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_1

    :cond_8
    const/16 v4, 0x3e8

    if-le p1, v4, :cond_1

    const/16 v2, 0x3e8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v10, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 14

    const v13, 0x7f0a086b

    const v12, 0x7f0a049e

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v8, :cond_0

    :goto_0
    return v6

    :cond_0
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGifMaker:Z

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    and-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromGalleryWidget:Z

    if-nez v8, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v8

    if-eqz v8, :cond_3

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto :goto_0

    :cond_3
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickFromAddToNewAlbum:Z

    if-eqz v8, :cond_4

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v13}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto :goto_0

    :cond_4
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickFromAddToStory:Z

    if-eqz v8, :cond_6

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-nez v8, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, v13}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isRaw(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a0077

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto :goto_0

    :cond_6
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsUnablePickPrivateFiles:Z

    if-eqz v8, :cond_7

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a046c

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v6, v7

    goto/16 :goto_0

    :cond_7
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickLimitedFileSize(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->pickLimitedFileSize(Landroid/app/Activity;)J

    move-result-wide v4

    const-wide/32 v8, 0x100000

    mul-long/2addr v8, v4

    cmp-long v8, v2, v8

    if-lez v8, :cond_8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0252

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    const-string/jumbo v11, "MB"

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    move v6, v7

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    add-int/lit8 v0, v8, 0x1

    invoke-virtual {p0, v0, v7, v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    move-result v6

    goto/16 :goto_0
.end method

.method isSelected(I)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    return v1
.end method

.method public isTooSmallForCrop(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTooSmallForCropItemSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDetailViewStarted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->onBackPressed()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onBackPressed()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshSelectionBarState(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->clearFocus()V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhotoSplitViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onContextItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoSplitViewState onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->initSpinner(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isUpButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLaunchMode:Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsEasyMode:Z

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setEnvOnCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setEnvCreate()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig;->mPhotoAdapterCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewLayoutConfig$PhotoLoaderConfig;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoSplitViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoSplitViewStateDCTouchEvent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoSplitViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_2
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoSplitViewState onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDCCommandStarted(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/sdk/bixby/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "PhotoSplitViewState onDestroy Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;->cancel(Z)Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoviewcomm/UpdateSelectionModeTaskComm;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "PHOTO_SPLIT_VIEW_EXIT_SELECTION"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumDialog(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onDestroy()V

    :cond_2
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "PhotoSplitViewState onDestroy End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->onDirty()V

    :cond_0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->resetNavigationBarPosition(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshLayout()V

    :cond_1
    return-void
.end method

.method protected onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x54

    if-eq p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f12028b

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/ActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "PhotoSplitViewState onPause Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->saveCurrentScrollInfo()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->pause()V

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mShrinkOption:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "PHOTO_VIEW"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setEnvPause()V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onPause()V

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_4
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "PhotoSplitViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateRenameAlbumMenu(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateLogicalAlbumMenu(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateSetSplitAlbumMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v4, "Gallery_Performance"

    const-string/jumbo v5, "PhotoSplitViewState onResume Start"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getViewOption()I

    move-result v1

    move v2, v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mShrinkOption:I

    or-int/2addr v1, v4

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsEasyMode:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iput-boolean v6, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsEasyMode:Z

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsEasyMode:Z

    if-eqz v4, :cond_7

    or-int/lit16 v1, v1, 0x100

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;I)V

    or-int/lit16 v1, v1, 0x80

    iget v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getThumbSizeType(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setInitThumbType(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setZoomLevel(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setFirstLoadingDetails()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsEasyMode:Z

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->checkAndSetValidMediaItemSource()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onResume()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4, v2, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setEnvResume(II)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setComponentResume()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setEnvOnResume()V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsExitedNewAlbumMode:Z

    if-nez v4, :cond_4

    new-array v0, v6, [Ljava/lang/Object;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumResult:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v0, v7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v4

    const-string/jumbo v5, "EXIT_NEW_ALBUM_MODE"

    invoke-virtual {v4, v5, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshCheckState()V

    :cond_5
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDetailViewStarted:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    new-instance v4, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoViewBeam;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photoviewcomm/PhotoViewBeam;->setBeamListener()V

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->setUpBtnColor(F)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v4, "Gallery_Performance"

    const-string/jumbo v5, "PhotoSplitViewState onResume End"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    iget v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v5, v5, 0x1

    if-ne v4, v5, :cond_8

    iput v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoLayoutCfg:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;

    iget v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    goto/16 :goto_0
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "PhotoSplitViewState"

    const-string/jumbo v1, "setOnSaveState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "KEY_ITEM_POSITION"

    iget v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_NO_SPLIT_MODE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "KEY_MEDIA_SET_PATH"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "KEY_MEDIA_ITEM_PATH"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "KEY_MEDIA_SET_POSITION"

    iget v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_FROM_ALBUM_VIEW_STATE"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFromAlbumViewState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 15

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->finishActivityForWallpaper(Landroid/content/Intent;I)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_2

    move-object/from16 v11, p3

    :goto_1
    move/from16 v0, p2

    invoke-virtual {v12, v0, v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    :cond_1
    iget v8, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    if-eqz p3, :cond_0

    const-string/jumbo v11, "image_too_small"

    const/4 v12, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v11, -0x1

    if-eq v8, v11, :cond_0

    if-eqz v7, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTooSmallForCropItemSet:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mTooSmallForCropItemSet:Ljava/util/Set;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :sswitch_1
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const-string/jumbo v11, "albumName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x3

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v12, v6, v11

    const/4 v11, 0x1

    aput-object p3, v6, v11

    const/4 v11, 0x2

    aput-object v2, v6, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v12, "START_ALBUM_OPERATIONS"

    invoke-virtual {v11, v12, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v11}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "DC_NLG_REQUEST"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;

    if-eqz v4, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4, v11}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sendNlgRequest(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto/16 :goto_0

    :sswitch_2
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    if-eqz p3, :cond_0

    const-string/jumbo v11, "dc_story_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string/jumbo v11, "dc_story_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "state_story"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    new-array v9, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v12, v9, v11

    const/4 v11, 0x1

    aput-object v5, v9, v11

    const/4 v11, 0x2

    aput-object v10, v9, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v12, "DC_CREATE_STORY"

    invoke-virtual {v11, v12, v9}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v11, "newAlbumName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v5}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateChannelDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x3

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a0471

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v11, "selected_channel_id"

    const/4 v12, -0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    if-nez v11, :cond_6

    new-instance v11, Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v11, v12}, Lcom/sec/samsung/gallery/util/AddItemToChannel;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    :cond_6
    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-virtual {v11, v3}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->goToChannelDetailView(I)V

    goto/16 :goto_0

    :sswitch_3
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :sswitch_4
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v12, v6, v11

    const/4 v11, 0x1

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "add_tag_value"

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v6, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v12, "EVENT_ADD_TAG"

    invoke-virtual {v11, v12, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x403 -> :sswitch_0
        0x905 -> :sswitch_3
        0x906 -> :sswitch_4
        0xc00 -> :sswitch_1
        0xc6f -> :sswitch_2
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 2

    const-string/jumbo v0, "PhotoSplitViewState"

    const-string/jumbo v1, "onViewInitialize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setOnViewInitialize()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setEnvGLViewInitialize()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->setEnvGLViewInitialize()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDexThumbnailClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setDexThumbnailClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;)V

    goto :goto_0
.end method

.method postUpdateAlbumNameOfActionBar()V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method prePenSelectionRemoveItem(I)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->checkNewAlbumState(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a040f

    new-array v8, v12, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-static {v9, v10, v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v4

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iget v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateFolderItem(I)V

    :cond_2
    const/4 v1, 0x1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    invoke-virtual {p0, v3, v12, v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_4
    move v3, v1

    goto :goto_0
.end method

.method public setIsExitedNewAlbumMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsExitedNewAlbumMode:Z

    return-void
.end method

.method public setNewAlbumResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mNewAlbumResult:Z

    return-void
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    check-cast p3, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mShrinkOption:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    :goto_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    const/16 v0, 0x20

    :cond_3
    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mShrinkOption:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mShrinkOption:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mFlags:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestThumbnailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    goto :goto_1

    :cond_5
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    const/16 v0, 0x10

    goto :goto_2
.end method

.method public showDeleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method public startDetailViewViaSmartView(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 6

    const-string/jumbo v3, "PhotoSplitViewState"

    const-string/jumbo v4, "startDetailViewViaSmartView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    const-string/jumbo v3, "PhotoSplitViewState"

    const-string/jumbo v4, "fail to start detailview via smart view. item is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    const-string/jumbo v3, "PhotoSplitViewState"

    const-string/jumbo v4, "fail to start detailview via smart view. itemCode is -1)"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->startDetailViewImmediate(I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "PhotoSplitViewState"

    const-string/jumbo v4, "fail to start enlarge anim"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    const-string/jumbo v4, "VIEW_MODE_SWITCH"

    const/16 v5, 0x201

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public startExpandAction()V
    .locals 3

    const/16 v2, 0x203

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    const/16 v2, 0x201

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "VIEW_MODE_SWITCH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected terminateDataLoader()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->terminateDataLoader()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->terminateDataLoader()V

    :cond_1
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v6, p2

    check-cast v6, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v7

    const-string/jumbo v20, "PhotoSplitViewState"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "processEvent = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_RENAME_MEDIA:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialog(ZLjava/lang/String;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->processEvent(Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->showDeleteDialog()V

    goto :goto_0

    :cond_3
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_5

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v20

    const-class v21, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->selectAll()V

    goto :goto_0

    :cond_6
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->unselectAll()V

    goto :goto_0

    :cond_7
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v21

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v21

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v21

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x3

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v13, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v21

    const/16 v22, 0x7

    invoke-virtual/range {v21 .. v22}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v13, v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startEventChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startSlideshow(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_c
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->startSelectionMode()V

    goto/16 :goto_0

    :cond_d
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->startSelectionMode()V

    goto/16 :goto_0

    :cond_e
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE_FOR_STORY_ALBUM:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->scaleAnimationForSelectionMode()V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->enterSelectionMode()V

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForStoryAlbum;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_f
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_GIF:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_10

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->startSelectionMode()V

    goto/16 :goto_0

    :cond_10
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_COLLAGE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_11

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->startSelectionMode()V

    goto/16 :goto_0

    :cond_11
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SELECTION_BUFFER:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_14

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v12

    instance-of v0, v12, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v20, v0

    if-eqz v20, :cond_0

    const/4 v13, 0x0

    move-object v11, v12

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v15

    if-eqz v15, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v21

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateCountOnActionBar()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshCheckState()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->refreshCheckState()V

    goto/16 :goto_0

    :cond_14
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_TRANSFER_ROOTVIEW_TO_UPDOWN:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_16

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v20, v0

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->startTransferUpDown(I)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->startTransferUpDown(I)V

    goto/16 :goto_0

    :cond_16
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v23, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_17
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALL_WTIH_CONTENT_TYPE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v23, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_18
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHOW_RENAME_POPUP:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_1b

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_19

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v4}, Lcom/sec/samsung/gallery/util/FileUtil;->isExist(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showRenameDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->renameAlbumNameWithoutDialogForDCHandler(Lcom/sec/android/gallery3d/data/MediaObject;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->startSelectionMode()V

    goto/16 :goto_0

    :cond_1c
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v23, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1d
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_SORT_BY:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_1e

    new-instance v20, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v21, v0

    new-instance v22, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$3;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V

    invoke-direct/range {v20 .. v22}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByType()Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByOrderType()Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    move-result-object v22

    invoke-virtual/range {v20 .. v22}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->showDialog(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    goto/16 :goto_0

    :cond_1e
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOOSE_DONE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenu()Landroid/view/Menu;

    move-result-object v20

    const v21, 0x7f12007a

    invoke-interface/range {v20 .. v21}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto/16 :goto_0

    :cond_1f
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TAG:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_20

    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const-class v21, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v20, "return_tag"

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v20

    move/from16 v0, v20

    invoke-static {v8, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const/16 v21, 0x906

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v8, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_20
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_SET_SPLIT_MODE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isExpanded()Z

    move-result v20

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->setExpanded(Z)V

    goto/16 :goto_0

    :cond_22
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_SHORT_ON_HOMESCREEN:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_23

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->AddShortCutOnHomeScreen()V

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0a0774

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "AlbumSelectName"

    aput-object v24, v22, v23

    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v20 .. v22}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const-string/jumbo v21, "AddToHomeScreen"

    sget-object v22, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v16

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_23
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_COLLAGE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_24

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->checkEnableAnimateCollage(I)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    :cond_24
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->checkEnableAnimateCollage(I)Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :cond_25
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto/16 :goto_0

    :cond_26
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SORT_BY:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_27

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v14, v20

    check-cast v14, [Ljava/lang/String;

    const/16 v20, 0x0

    aget-object v17, v14, v20

    const/16 v20, 0x1

    aget-object v18, v14, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->handleSortByForDC(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_27
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SECURE_FOLDER:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v23

    invoke-virtual/range {v20 .. v23}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :cond_28
    sget v20, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    move/from16 v0, v20

    if-ne v7, v0, :cond_0

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentLayout:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setCurrentLayout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v20, v0

    check-cast v20, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoSplitViewStateDCTouchEvent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;->isExpanded()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoSplitViewStateDCTouchEvent;->setSplitViewExpand(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 12

    const/4 v11, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateActionbarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v6

    if-ne v3, v0, :cond_2

    move v4, v7

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v9, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string/jumbo v10, "pick-max-item"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    if-ne v6, v2, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v9, v8, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_0

    :cond_2
    move v4, v8

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_0

    :cond_4
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-static {p1}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectLogicalCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    :goto_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v6

    if-ne v3, v0, :cond_7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v10

    if-ne v9, v10, :cond_7

    move v4, v7

    :goto_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v9, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    const/4 v1, -0x1

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v9, v9, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v10, 0x6

    if-ne v9, v10, :cond_9

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-nez v9, :cond_9

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v9, :cond_8

    move v1, v7

    :cond_5
    :goto_4
    if-ne v6, v1, :cond_b

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v9, v8, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_5
    if-ne v1, v11, :cond_c

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v9, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    goto :goto_2

    :cond_7
    move v4, v8

    goto :goto_3

    :cond_8
    const/16 v1, 0x1f4

    goto :goto_4

    :cond_9
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v9, :cond_a

    sget v1, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    goto :goto_4

    :cond_a
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v9, :cond_5

    const/4 v1, 0x6

    goto :goto_4

    :cond_b
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_5

    :cond_c
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v6, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto/16 :goto_0
.end method

.method public updateCountOnActionBar()V
    .locals 4

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    return-void

    :cond_0
    const/16 v1, 0x1f4

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_1
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->refreshDualScreenFocus()V

    :cond_0
    return-void
.end method

.method updateMaximumSelectionNumberExceeded(I)V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    const v1, 0x7f0a0490

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void

    :cond_0
    const v1, 0x7f0a0251

    goto :goto_0
.end method
