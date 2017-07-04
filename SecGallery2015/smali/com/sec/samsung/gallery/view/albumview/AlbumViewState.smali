.class public Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.super Lcom/sec/android/gallery3d/app/TabActivityState;
.source "AlbumViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FAKE_LOADING_ALBUM_COUNT:I

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FEATURE_USE_MORE_ALBUM:Z

.field private static final FIRST_LOADING_COUNT:I

.field private static final FeatureIsDualScreen:Z

.field private static final MSG_POST_UPDATE_ACTIONBAR_DELAY:I = 0x12c

.field private static final MSG_REFRESH_ACTIONBAR_BG:I = 0x2

.field private static final MSG_REQUEST_FULL_LOADING:I = 0x4

.field private static final MSG_RESET_REORDER_DATA:I = 0x1

.field private static final MSG_RESET_REORDER_DATA_DELAY:I = 0x12c

.field private static final MSG_SELECTION_MODE_FOR_DESKTOP_MODE:I = 0x5

.field private static final MSG_UPDATE_ACTIONBAR:I = 0x3

.field private static final OP_COPY:I = 0x0

.field private static final OP_MOVE:I = 0x1

.field private static final PREFKEY_ALBUM_VIEW_COLCNT:Ljava/lang/String; = "albumViewColCnt"

.field private static final REQUEST_ALBUM_CREATION:I = 0x907

.field public static final REQUEST_ASSIGN_NAME:I = 0x904

.field public static final REQUEST_CAMERA_LAUNCH_FOR_SINGLE_IMAGE_PICK:I = 0x902

.field public static final REQUEST_CAMERA_LAUNCH_FOR_SINGLE_VIDEO_PICK:I = 0x903

.field private static final REQUEST_CHANGE_COVER:I = 0x206

.field private static final REQUEST_HIDDEN_ALBUM_CREATION:I = 0x901

.field private static final TAG:Ljava/lang/String; = "AlbumViewState"

.field private static mIsHideSelectionMode:Z


# instance fields
.field private mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

.field private mAlbumIndex:I

.field private final mAlbumViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentMediaSetIndex:I

.field private mCurrentTopSetPath:Ljava/lang/String;

.field mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

.field private mFirstMediaCheck:Z

.field private mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsAlbumPick:Z

.field private mIsCopyMoveMode:Z

.field private mIsDualLaunchFromDetail:Z

.field private mIsEasyMode:Z

.field private mIsFirstLoadingFinished:Z

.field private mIsFromNoItem:Z

.field private mIsFromNoItemView:Z

.field private mIsHiddenAlbum:Z

.field private mIsLongpressEditMode:Z

.field private mIsPickerMode:Z

.field private mIsReorderModeFromNormal:Z

.field private mIsResumedForDualScreen:Z

.field private mIsSocialCloudView:Z

.field private mKeepThumbnailForPhotoView:Z

.field private final mMainHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field public mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private volatile mNeedIdleProcess:Z

.field private mNewAlbumPath:Ljava/lang/String;

.field private mOperationId:I

.field mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

.field private mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

.field private mUpdatePath:Z

.field private mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0xc

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FAKE_LOADING_ALBUM_COUNT:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FeatureIsDualScreen:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumLoadOptimize:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FIRST_LOADING_COUNT:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_DEVICE_COG:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMoreAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_MORE_ALBUM:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHideSelectionMode:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x15

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaSetIndex:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mKeepThumbnailForPhotoView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNeedIdleProcess:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdatePath:Z

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumIndex:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItem:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItemView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsResumedForDualScreen:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$1;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;

    const-string/jumbo v1, "ALBUM_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$2;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$3;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$28;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$28;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$29;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IILcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailView(IILcom/sec/android/gallery3d/data/MediaItem;)V

    return-void
.end method

.method static synthetic access$10100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitReorderAlbums()V

    return-void
.end method

.method static synthetic access$10300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startChannelViewMode()V

    return-void
.end method

.method static synthetic access$11200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startPhotoView(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->hideNewAlbumCancelDialog()V

    return-void
.end method

.method static synthetic access$12700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$13000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->toggleSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$13300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->addSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$13400(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->removeSelectProcess(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$13500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isDesktopMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$13600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IILcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailView(IILcom/sec/android/gallery3d/data/MediaItem;Z)V

    return-void
.end method

.method static synthetic access$14200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$14302(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$14400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setLayoutLevel(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->finishCurrentViewState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setActionBarMenuColor()V

    return-void
.end method

.method static synthetic access$2002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNewAlbumPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startPickModeForNewAlbum()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mFirstMediaCheck:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionModeTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdateSelectionBufferTask:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$UpdateSelectionBufferTask;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->postUpdateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFirstLoadingFinished:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFirstLoadingFinished:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsResumedForDualScreen:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsResumedForDualScreen:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItemView:Z

    return v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->refreshDualScreenFocus()V

    return-void
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsDualLaunchFromDetail:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsDualLaunchFromDetail:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    return v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enableSelectionMode(IFF)V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->operationCopyMove(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startPhotoViewUIThread(I)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    return v0
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->latestSelectedAlbumInfo(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6000()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FeatureIsDualScreen:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsSocialCloudView:Z

    return v0
.end method

.method static synthetic access$6300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHideSelectionMode:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumIndex:I

    return v0
.end method

.method static synthetic access$6502(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumIndex:I

    return p1
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleFilter()V

    return-void
.end method

.method static synthetic access$7002(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterReorderAlbums()V

    return-void
.end method

.method static synthetic access$7202(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->downloadNearby(Lorg/puremvc/java/multicore/interfaces/INotification;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IILcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleReorderAlbums(IILcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V

    return-void
.end method

.method static synthetic access$8200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->showDeleteDialog()V

    return-void
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$27;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHideSelectionMode:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p3}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_0
.end method

.method private cancelSwitchFilterTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    :cond_0
    return-void
.end method

.method private checkAlbumsAvaliableToHide()Ljava/lang/Boolean;
    .locals 5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v1}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_1
.end method

.method private checkMediaAvailability()V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->isLoading()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :cond_0
    if-eqz v3, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "AlbumViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIMETYPE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitSelectionMode()V

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "UPDATE_SPINNER_EXPANSION_GROUP"

    invoke-virtual {v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startNoItemViewState(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_3

    :goto_1
    return-void

    :cond_2
    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "AlbumViewState"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    :cond_4
    :goto_2
    if-nez v3, :cond_6

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsNoItemViewMode:Z

    if-eqz v5, :cond_6

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsNoItemViewMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItem()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateActionBarFromNoItemViewMode()V

    :cond_6
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mFirstMediaCheck:Z

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mFirstMediaCheck:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v6, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    goto :goto_2
.end method

.method private checkValidityForEditMode()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->isMoreAlbum()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->isActiveForMoreAlbum()Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_MORE_ALBUM:Z

    if-nez v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private downloadNearby(Lorg/puremvc/java/multicore/interfaces/INotification;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    const-string/jumbo v7, "nearby"

    invoke-virtual {v0, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-nez v3, :cond_0

    new-instance v7, Ljava/lang/NullPointerException;

    const-string/jumbo v8, "downloadNearby() : NearbySource is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v2

    const-string/jumbo v6, ""

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget v8, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    :cond_1
    invoke-interface {p1}, Lorg/puremvc/java/multicore/interfaces/INotification;->getBody()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v5, v7

    check-cast v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aget-object v4, v5, v7

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v2, v6, v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;->download(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method private enableSelectionMode()V
    .locals 2

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    invoke-direct {p0, v0, v1, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enableSelectionMode(IFF)V

    return-void
.end method

.method private enableSelectionMode(IFF)V
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->checkValidityForEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ltz p1, :cond_3

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x5

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterSelectionMode()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v2

    if-ne v2, v1, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAll()V

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    if-nez v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ShowContextMenuFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ShowContextMenuFactory;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/lib/factory/ShowContextMenuFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mShowContextMenuInterface:Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Lcom/sec/samsung/gallery/lib/libinterface/ShowContextMenuInterface;->showContextMenu(Landroid/view/View;FF)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(I)V

    goto :goto_1
.end method

.method private enterHiddenSelectionMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/16 v1, 0x9

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->postUpdateCountOnActionBar()V

    return-void
.end method

.method private enterReorderAlbums()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method private enterSelectionMode()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumViewSwipeAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHide;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHide;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSelectableAlbumCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumLayout()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->startSwipeAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->activeSwipeAnimation()V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setEAM(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v4, v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    goto :goto_2
.end method

.method private exitReorderAlbums()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v4, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v5, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean v5, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsReorderFinished:Z

    goto :goto_1
.end method

.method private exitSelectionMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isListAlbumViewSwipeAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    const-string/jumbo v0, "AlbumViewState"

    const-string/jumbo v1, "exitSelectionMode.setAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startListAlbumViewSwipeAnimation(Z)V

    :cond_2
    sput-boolean v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHideSelectionMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsReorderModeFromNormal:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :cond_3
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setEAM(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v4}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_1
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string/jumbo v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getTopSetPathForLocalOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "mtpMode"

    invoke-static {v4, v5, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getAddMtpTopPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLogicalFavoriteAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "photo-pick"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getAddFavoriteTopPath(Ljava/lang/String;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLogicalVideoAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getAddVideoAlbumPath(Ljava/lang/String;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v2

    :cond_3
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLogicalShotmodeAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getAddShotModeAlbumsPath(Ljava/lang/String;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getAllClusterPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    const-string/jumbo v4, "AlbumViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDefaultPath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;ILcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    if-eqz v0, :cond_a

    const-string/jumbo v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v5, "KEY_VIEW_FACE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_a
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v4, :cond_c

    :cond_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0
.end method

.method private getMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCurrentInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    return-void
.end method

.method private varargs getSelectModeSentenceForTTS(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0422

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a04e7

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040d

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    aget-object v1, p2, v6

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getThumbnailSizeType(I)I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMinLevel:I

    if-ne p1, v1, :cond_0

    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;->getThumbSizeType(I)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getThumbSizeType(I)I

    move-result v0

    goto :goto_0
.end method

.method private getTopFilterMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;ILcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    return-object v3
.end method

.method private getTopSetPathByFilter()Ljava/lang/String;
    .locals 8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-eqz v6, :cond_2

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    const-string/jumbo v0, ""

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/app/FilterUtils;->toFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v6

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SECRET_BOX:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v6, v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    goto :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v6, :cond_5

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string/jumbo v1, "/union/hiddenalbum/"

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "/local/hiddenalbum/"

    goto :goto_1

    :cond_5
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getTopSetPathForLocalOnly(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v1, "image"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "/union/image"

    const-string/jumbo v2, "/union/localimage"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v1, "video"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "/union/video"

    const-string/jumbo v2, "/union/localvideo"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "/union/localall"

    goto :goto_0
.end method

.method private getViewInitialCodeForAlbum()I
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    const-string/jumbo v2, "AlbumViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", itemIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumIndex:I

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v1

    :cond_0
    :goto_0
    if-ltz v1, :cond_2

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getSpinnerLayoutChangeStatus()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    return v1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget v1, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto :goto_0
.end method

.method private getViewLevelForAlbum()I
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v2

    :goto_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsRetailModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v0

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "albumViewColCnt"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v5, :cond_2

    :goto_2
    invoke-static {v3, v4, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_2
.end method

.method private getViewOptionForAlbum()I
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    or-int/lit8 v0, v0, 0x40

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    if-eqz v1, :cond_0

    or-int/lit16 v0, v0, 0x100

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mShrinkOption:I

    or-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getVisibleForCountOnActionBar(I)I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    const/16 v0, 0x8

    :cond_0
    return v0
.end method

.method private handleChangeCoverItem()V
    .locals 6

    const/4 v5, 0x1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v4, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaSetArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    const-string/jumbo v3, "android.intent.action.GET_CONTENT"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "*/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "get-content"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "pick-from-gallery"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v3, "single-album"

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v4, 0x206

    invoke-virtual {v3, v2, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private handleFilter()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->cancelSwitchFilterTask()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v0

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$23;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getTopFilterMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleMoreAlbumForBixby(Z)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setMoreAlbumVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a077d

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz p1, :cond_1

    const-string/jumbo v2, "AlbumUnfold"

    :goto_1
    sget-object v4, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v2, v4, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "AlbumFold"

    goto :goto_1
.end method

.method private handleNewAlbumLaunch()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->hasLocalMediaSet()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startPhotoView(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumDialog(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a02e8

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private handleNewAlbumLaunchUsingPickMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->hasLocalMediaSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumDialog(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a02e8

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private handleReorderAlbums(IILcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;)V
    .locals 16

    sget-object v12, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_NOT_REORDER:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    move-object/from16 v0, p3

    if-eq v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v12}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v12, "_id"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "bucket_id"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "_data"

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v12, "bucket_display_name"

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "album_more"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v12

    move/from16 v0, p1

    if-lt v0, v12, :cond_3

    const/4 v12, 0x1

    :goto_0
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v13, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "album_extra"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "album_sort_order"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v12, "album_sort_type"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v12, Lcom/sec/android/gallery3d/util/BucketNames;->BUCKET_DEFAULT_ALBUM_LIST:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v7, v11, v2}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addNewAlbumDisplayInfo(Landroid/content/ContentValues;Z)Z

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    instance-of v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->setUpsideAlbumCount(II)V

    :cond_0
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    sget-object v12, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;->STATUS_UPSIDE_ALBUM_NOT_REORDER:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus$MoreAlbumStatus;

    move-object/from16 v0, p3

    if-eq v0, v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string/jumbo v13, "content://force_reload"

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v13, v14, v15}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v12}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v5

    if-ltz p1, :cond_2

    move/from16 v0, p1

    if-gt v0, v5, :cond_2

    if-ltz p2, :cond_2

    move/from16 v0, p2

    if-lt v0, v5, :cond_5

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v12, 0x0

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v12, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    if-ltz p1, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p1

    if-gt v0, v12, :cond_2

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v4, v0, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v5, :cond_8

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSkipHovering(Z)V

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addAlbumDisplayInfo(Ljava/lang/String;)Z

    goto :goto_2
.end method

.method private handleResultCameraLaunchForSinglePick(Landroid/content/Intent;I)V
    .locals 8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v5, 0x902

    if-ne p2, v5, :cond_2

    const-string/jumbo v5, "uri-data"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v5, "AlbumViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "cannot find file : path is null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "PICKER_ITEM_SELECTED"

    invoke-virtual {v5, v6, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleResultWallpaper(Landroid/content/Intent;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->finishActivityForWallpaper(Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    :goto_0
    invoke-virtual {v2, p2, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    move-object p1, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PICKER_ITEM_SELECTED"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private hideNewAlbumCancelDialog()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SHOW_NEW_ALBUM_CANCEL_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private isAllSelected(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    if-ne v2, p1, :cond_1

    :goto_1
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_3

    :goto_2
    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_2
.end method

.method private isDesktopMode()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportKnoxDesktop:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    :cond_0
    return v0
.end method

.method private latestSelectedAlbumInfo(I)V
    .locals 12

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v7, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLatestAlbumInfo(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v1

    if-ne v0, v6, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v7

    const-string/jumbo v8, "latest_update_item"

    const-wide/16 v10, -0x1

    invoke-static {v7, v8, v10, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setSelectedAlbum(IIJ)V

    goto :goto_0
.end method

.method private operationCopyMove(I)V
    .locals 7

    const/4 v6, 0x1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p1, v3, :cond_3

    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    if-ne v3, v6, :cond_2

    const-string/jumbo v3, "operationType"

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_0
    const-string/jumbo v3, "operationIntData"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    const-string/jumbo v3, "albumPath"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "AlbumViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "albumPath :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    aput-object v0, v2, v6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "START_ALBUM_OPERATIONS"

    invoke-virtual {v3, v4, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->finishCurrentViewState()V

    return-void

    :cond_2
    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    if-nez v3, :cond_0

    const-string/jumbo v3, "operationType"

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "operationType"

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_NEW_ALBUM_NAME_EDIT_DIALOG:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    if-ne v3, v6, :cond_4

    const-string/jumbo v3, "operationIntData"

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    if-nez v3, :cond_1

    const-string/jumbo v3, "operationIntData"

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method private postUpdateCountOnActionBar()V
    .locals 4

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private refreshDualScreenFocus()V
    .locals 5

    const/4 v0, -0x1

    sget-object v3, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemFirst()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    sget-object v4, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :cond_2
    return-void
.end method

.method private static removeSelectProcess(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    return-void
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$25;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;ILcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private saveAlbumIds()V
    .locals 7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FAKE_LOADING_ALBUM_COUNT:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x3b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v6, "SAVE_ALBUM_ID"

    invoke-virtual {v5, v6, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private selectAll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2, v3, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSelectableSubMediaSetCount()I

    move-result v0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    sget-object v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;->ADD_TOP_SET:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$SelectionType;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    goto :goto_1
.end method

.method private selectAllPostProcess()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void
.end method

.method private setActionBarMenuColor()V
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0266

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100017

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/TextView;

    if-nez v6, :cond_2

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_3

    :cond_2
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :cond_3
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v1, v6}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-object v6, v4

    check-cast v6, Landroid/widget/TextView;

    invoke-interface {v5, v6}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->clearAllTextEffect(Landroid/widget/TextView;)V

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_4
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private setActivityTitle()V
    .locals 3

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsSocialCloudView:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a043f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private setAlbumEventHandler()V
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->setMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private setEAM(Z)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private setLayoutLevel(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "albumViewColCnt"

    invoke-static {v0, v1, p1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setLayoutLevel(I)V

    return-void
.end method

.method private setSelectedAlbum(IIJ)V
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "user_selected_album"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSelectionBufferMargin()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onDisplayChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GAMC"

    int-to-long v4, v0

    invoke-static {v1, v2, v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method private showHideDialog(Z)V
    .locals 4

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    if-ne v0, v3, :cond_0

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v3, v1, v2, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showHideDialog(ZZZ)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private showViewAsDialog()V
    .locals 4

    const/4 v1, 0x1

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v2, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;-><init>(Landroid/content/Context;I)V

    new-instance v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$30;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$30;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->setViewAsOnItemSelectedListener(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isDesktopMode()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "albumViewColCnt"

    invoke-static {v2, v3, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->showDialog(I)V

    return-void
.end method

.method private speakSentenceForSelectMode(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 6

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0a040f

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSelectModeSentenceForTTS(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, v0}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/lang/String;)V

    return-void

    :cond_0
    const v1, 0x7f0a040e

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSelectModeSentenceForTTS(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private startChannelViewMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "START_CHANNEL_VIEW_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startDetailView(IILcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailView(IILcom/sec/android/gallery3d/data/MediaItem;Z)V

    return-void
.end method

.method private startDetailView(IILcom/sec/android/gallery3d/data/MediaItem;Z)V
    .locals 5

    if-nez p3, :cond_1

    const-string/jumbo v3, "AlbumViewState"

    const-string/jumbo v4, "cannot start DetailView. mediaItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    if-lez v3, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    instance-of v3, p3, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v3, :cond_2

    check-cast p3, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v3, v4, v0, p4}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$26;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNearbyDeviceView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startNoItemViewState(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const-string/jumbo v1, "AlbumViewState"

    const-string/jumbo v2, "startNoItemViewState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsNoItemViewMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_NOITEMSVIEW_MIME_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "album-pick"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$24;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startPhotoView(I)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v11

    if-gtz v11, :cond_2

    :cond_0
    const-string/jumbo v11, "AlbumViewState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "startPhotoView : mediaSet is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v11, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v12, "AlbumsListView"

    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v11, v12, v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "KEY_MEDIA_SET_PATH"

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v11, "KEY_MEDIA_SET_POSITION"

    move/from16 v0, p1

    invoke-virtual {v1, v11, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "KEY_FROM_ALBUM_VIEW_STATE"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v8, 0x0

    if-nez v4, :cond_5

    const-string/jumbo v11, "AlbumViewState"

    const-string/jumbo v12, "cannot start animation to PhotoView. bitmap is null"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    const/4 v12, 0x0

    move/from16 v0, p1

    invoke-virtual {v11, v0, v12}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    const/4 v10, 0x0

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v12, "PLYP"

    invoke-static {v11, v12}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v11, v8, v10}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    new-instance v2, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getMediaSetInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->pushPreviousInfo(ILjava/lang/Object;)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mKeepThumbnailForPhotoView:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-nez v11, :cond_6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    :cond_4
    const-string/jumbo v11, "KEY_IS_SIGHT_MODE"

    const/4 v12, 0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v11

    const-class v12, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v11, v12, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v11, "KEY_IS_SIGHT_MODE"

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMoreAlbumDivider()Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;

    move-result-object v7

    sget-boolean v11, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_MORE_ALBUM:Z

    if-eqz v11, :cond_8

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getCount()I

    move-result v12

    if-eq v11, v12, :cond_8

    const-string/jumbo v11, "KEY_UP_SIDE_ALBUM_COUNT"

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlMoreAlbumObject;->getUpSideAlbumCount()I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v11

    const-class v12, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v11, v12, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    sget-boolean v11, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v11, :cond_1

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v11

    sget-object v12, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v11, v12, :cond_9

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v3, :cond_a

    const-string/jumbo v11, "AlbumThumbnailsPickerSingle"

    :goto_4
    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v12, v11, v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v11, "KEY_UP_SIDE_ALBUM_COUNT"

    const/4 v12, -0x1

    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2

    :cond_9
    const/4 v3, 0x0

    goto :goto_3

    :cond_a
    const-string/jumbo v11, "AlbumThumbnailsPickerMulti"

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v12, 0x7f0a074b

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string/jumbo v15, "AlbumSelectName"

    aput-object v15, v13, v14

    const/4 v14, 0x1

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v11, v12, v13}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v12, "AlbumThumbnailView"

    sget-object v13, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v11, v12, v13, v9}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0
.end method

.method private startPhotoViewUIThread(I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$22;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$22;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startPickModeForNewAlbum()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v1, "pick-from-gallery"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "is-pick-to-add-new-album"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "pick-max-item"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x907

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const-string/jumbo v1, "android.intent.action.MULTIPLE_PICK"

    goto :goto_0
.end method

.method private toggleSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->removeSelectProcess(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->addSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_0
.end method

.method private unselectAll()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isScaleAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v3, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    invoke-virtual {p0, v0, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private updateCountOnActionBar()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSelectableAlbumCount()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getVisibleForCountOnActionBar(I)I

    move-result v2

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isAllSelected(I)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void
.end method


# virtual methods
.method protected getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    return-object v0
.end method

.method public getContentsForFaceTag()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "702"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "705"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "102"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "103"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "101"

    goto :goto_0
.end method

.method public getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method public isTabEnabledActivityState()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mIsReorderFinished:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->finishCurrentViewState()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->onBackPressed()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSpinnerLayoutChange(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->finishCurrentViewState()V

    goto :goto_0

    :cond_4
    sget-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FeatureIsDualScreen:Z

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f120285

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getViewLevelForAlbum()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->access$11600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;ZI)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onContextItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "AlbumViewState onCreate Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "AlbumViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v1, :cond_0

    const-string/jumbo v1, "AlbumViewState"

    const-string/jumbo v2, "mActivity is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFirstLoadingFinished:Z

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setAlbumEventHandler()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_2

    :cond_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    :cond_2
    if-eqz p1, :cond_4

    const-string/jumbo v1, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaSetIndex:I

    const-string/jumbo v1, "album-pick"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsAlbumPick:Z

    const-string/jumbo v1, "KEY_SET_NO_ITEM_ACTION_BAR"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItem:Z

    const-string/jumbo v1, "KEY_IS_FROM_NOITEMVIEW"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItemView:Z

    const-string/jumbo v1, "copy-move-to-album"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    const-string/jumbo v1, "operation"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    sget-boolean v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FeatureIsDualScreen:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "start_dual_from_detail"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsDualLaunchFromDetail:Z

    :cond_3
    const-string/jumbo v1, "show-hidden-album"

    invoke-virtual {p1, v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    :cond_4
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->initSpinner()V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDefaultPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdatePath:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isSocialCloudViewMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsSocialCloudView:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$DataLoaderConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-eqz v1, :cond_8

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x6

    invoke-direct {v1, v2, v6, v0, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iput-boolean v4, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseChannelNoti:Z

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setEasyMode(Z)V

    sget-boolean v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FeatureIsDualScreen:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    new-instance v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$4;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    :cond_5
    sget-boolean v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v1, :cond_6

    new-instance v1, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/AlbumViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v1, Lcom/samsung/android/devicecog/gallery/touchevent/AlbumViewStateDCTouchEvent;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/AlbumViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_6
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "AlbumViewState onCreate End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v6, v0, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onDestroy()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "AlbumViewState onDestroy Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onDestroy()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getHiddenAlbumStatus()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSpinnerLayoutChange(Z)V

    :cond_1
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "AlbumViewState onDestroy Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isFaceCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetNavigationBarPosition(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelectionBufferVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setSelectionBufferMargin()V

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

    if-eqz v0, :cond_4

    const/16 v0, 0x22

    if-ne p1, v0, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f12028b

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/sec/android/gallery3d/app/TabActivityState;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onMultiWindowModeChanged(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHide;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHide;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v2, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v3, "AlbumViewState onPause Start"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    :cond_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsResumedForDualScreen:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->saveAlbumIds()V

    const/4 v0, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mKeepThumbnailForPhotoView:Z

    if-nez v1, :cond_a

    if-nez v0, :cond_a

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->onPause(Z)V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMode()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getMode()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitReorderAlbums()V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsSocialCloudView:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDisengageMode()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->detach()V

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setDisengageMode(Z)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_7
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "ALBUM_VIEW"

    invoke-virtual {v1, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setGenericMotionTitleFocus(I)V

    :cond_8
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setEAM(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onPause()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "AlbumViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    move v1, v2

    goto :goto_0

    :cond_b
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    goto :goto_1
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/TabActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_CAMERA"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget v1, p3, v0

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startChannelViewMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "channel_needto_show_pregrant_popup"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startChannelViewMode()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onResume()V
    .locals 15

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AlbumViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    const/4 v1, 0x1

    iput v1, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mTabPos:I

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mFirstMediaCheck:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNeedIdleProcess:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setEAM(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdatePath:Z

    if-eqz v0, :cond_17

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDefaultPath()Ljava/lang/String;

    move-result-object v12

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iput-object v12, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getViewLevelForAlbum()I

    move-result v9

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setEasyMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsEasyMode:Z

    invoke-static {v0, v1, v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->access$11600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;ZI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getThumbnailSizeType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsSocialCloudView:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    const/4 v1, 0x0

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mPrevScroll:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    const/4 v1, 0x1

    aget-object v1, v8, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mPrevCenterObject:I

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getViewOptionForAlbum()I

    move-result v4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseChannelNoti:Z

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getViewInitialCodeForAlbum()I

    move-result v7

    if-ltz v7, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setFirstIndex(I)V

    :cond_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    sget v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FIRST_LOADING_COUNT:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->setFirstLoadingCount(I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mState:I

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    :cond_8
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    :cond_a
    :goto_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    :cond_b
    :goto_4
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsCopyMoveMode:Z

    if-eqz v0, :cond_1d

    const-string/jumbo v14, ""

    iget v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a027e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForCopyMove;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v14}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    :cond_d
    :goto_6
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ALBUM_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_f

    :cond_e
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v2, :cond_25

    const/4 v0, 0x1

    :goto_7
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setMultiPickMode(Z)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItem:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :cond_f
    :goto_8
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1000ab

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x1

    aget v1, v6, v1

    const/4 v2, 0x2

    aget v2, v6, v2

    const/4 v3, 0x3

    aget v3, v6, v3

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :goto_9
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setActivityTitle()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->onDirty()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->refreshEventBadge()V

    :cond_10
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_11
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v11

    if-eqz v11, :cond_12

    const/4 v0, 0x2

    iput v0, v11, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v11, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_12
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_13
    sget-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->FeatureIsDualScreen:Z

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->refreshDualScreenFocus()V

    :cond_14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mKeepThumbnailForPhotoView:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterHiddenSelectionMode()V

    :cond_15
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AlbumViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_16
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    goto/16 :goto_0

    :cond_17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mUpdatePath:Z

    goto/16 :goto_1

    :cond_18
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v13

    check-cast v13, Lcom/sec/android/gallery3d/app/TabStateManager;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mTabPos:I

    invoke-virtual {v13, p0, v0, v1}, Lcom/sec/android/gallery3d/app/TabStateManager;->setTabState(Lcom/sec/android/gallery3d/app/TabActivityState;Landroid/os/Bundle;I)V

    goto/16 :goto_2

    :cond_19
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto/16 :goto_3

    :cond_1a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01f1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    goto/16 :goto_4

    :cond_1b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto/16 :goto_4

    :cond_1c
    iget v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mOperationId:I

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_5

    :cond_1d
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    const-string/jumbo v0, "AlbumViewState"

    const-string/jumbo v1, "onResume.setAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsFromNoItem:Z

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_6

    :cond_1e
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;

    if-eqz v0, :cond_1f

    const-string/jumbo v0, "AlbumViewState"

    const-string/jumbo v1, "setLaunchMode() called, ActivityResume situation and ActionBarView is AlbumActionBarForNormal. so skip."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_1f
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_6

    :cond_20
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSpinnerLayoutChange(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_6

    :cond_21
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_23

    const/4 v0, 0x1

    :goto_b
    sput-boolean v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHideSelectionMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHide;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHide;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_6

    :cond_22
    const/4 v0, 0x0

    goto :goto_a

    :cond_23
    const/4 v0, 0x0

    goto :goto_b

    :cond_24
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_6

    :cond_25
    const/4 v0, 0x0

    goto/16 :goto_7

    :cond_26
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->initializeView()V

    goto/16 :goto_8

    :cond_27
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x0

    aget v1, v6, v1

    const/4 v2, 0x1

    aget v2, v6, v2

    const/4 v3, 0x2

    aget v3, v6, v3

    const/4 v5, 0x3

    aget v5, v6, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    goto/16 :goto_9
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 18

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleResultCameraLaunchForSinglePick(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleResultWallpaper(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz p2, :cond_1

    const/4 v13, 0x4

    new-array v9, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v14, v9, v13

    const/4 v13, 0x1

    aput-object v3, v9, v13

    const/4 v13, 0x2

    sget-object v14, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->ASSIGN_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    aput-object v14, v9, v13

    const/4 v13, 0x3

    aput-object p3, v9, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v13}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v13

    const-string/jumbo v14, "START_FACE_TAG"

    invoke-virtual {v13, v14, v9}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v13}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v13

    const-string/jumbo v14, "EXIT_SELECTION_MODE"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_4
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v13}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v13, "AlbumViewState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "cannot find file : path is null : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v7, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->exitSelectionMode()V

    goto/16 :goto_0

    :sswitch_5
    if-eqz p3, :cond_0

    :try_start_0
    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v6, "union_selectedItems"

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v11, v1}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v5

    const-string/jumbo v13, "AlbumViewState"

    invoke-virtual {v5}, Landroid/os/BadParcelableException;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    :try_start_1
    const-string/jumbo v6, "selectedItems"

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mNewAlbumPath:Ljava/lang/String;

    const/4 v15, 0x1

    invoke-virtual {v13, v14, v15}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showNewAlbumCopyMoveDialog(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x206 -> :sswitch_4
        0x403 -> :sswitch_2
        0x901 -> :sswitch_0
        0x902 -> :sswitch_1
        0x903 -> :sswitch_1
        0x904 -> :sswitch_3
        0x907 -> :sswitch_5
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const-string/jumbo v1, "AlbumViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initializeView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDirectCopyFromSideSync:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$5;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnDragDropListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;)V

    :cond_0
    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$6;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$7;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$8;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$9;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$9;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$10;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$11;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$12;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$13;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$14;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchStateListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$15;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$16;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnExtendListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnExtendListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$17;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$17;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$18;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnMovedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnMovedListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$19;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$20;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEmptySpaceClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;)V

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$21;-><init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;->setDesktopModeAlbumClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView$DesktopModeAlbumClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->setEAM(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method selectAlbum(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAlbum(IZ)Z

    return-void
.end method

.method selectAlbum(IZ)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mMediaAlbumSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v2, "AlbumViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectAlbum: mediaSet is null. position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGraceAlbumViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSelectableAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->speakSentenceForSelectMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-direct {p0, v1, v3, v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->toggleSelectProcess(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v3, "REFRESH_SELECTION"

    invoke-virtual {v1, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    if-nez p2, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v2, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sput-object v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startSwipeAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startListAlbumViewSwipeAnimation(Z)V

    :cond_0
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v7, p2

    check-cast v7, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v8

    const-string/jumbo v22, "AlbumViewState"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Event update ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string/jumbo v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->selectAll()V

    goto :goto_0

    :cond_2
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->unselectAll()V

    goto :goto_0

    :cond_3
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_NEW_ALBUM:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_5

    sget-object v22, Lcom/sec/samsung/gallery/features/FeatureNames;->NewAlbumUsingPickMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleNewAlbumLaunchUsingPickMode()V

    goto :goto_0

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleNewAlbumLaunch()V

    goto :goto_0

    :cond_5
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_CAMERA_MODE:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v22, v0

    const-string/jumbo v23, "START_CAMERA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v22 .. v24}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_7

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enableSelectionMode()V

    goto :goto_0

    :cond_7
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_a

    sget-object v22, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v22

    if-nez v22, :cond_0

    :cond_8
    sget-object v22, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v22 .. v22}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v22

    if-eqz v22, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v22

    const-class v23, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v22

    const-class v23, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_CHANGE_COVER_IMAGE:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleChangeCoverItem()V

    goto/16 :goto_0

    :cond_b
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SELECTION_BUFFER:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_d

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v14

    instance-of v0, v14, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    const/4 v15, 0x0

    move-object v12, v14

    check-cast v12, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v17

    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v15

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15, v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    goto/16 :goto_0

    :cond_d
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_TRANSFER_ROOTVIEW_TO_UPDOWN:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_e

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(I)V

    goto/16 :goto_0

    :cond_e
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_HIDE_ALBUMS:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->checkAlbumsAvaliableToHide()Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v22

    if-eqz v22, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v22, 0x1

    sput-boolean v22, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHideSelectionMode:Z

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    const-string/jumbo v23, "AlbumListEmptySelectedViewForHideAlbum"

    sget-object v24, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static/range {v22 .. v24}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    const v23, 0x7f0a02d4

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v22, v0

    const-string/jumbo v23, "AlbumListEmptySelectedViewForHideAlbum"

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForNoItem(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_ALBUMS:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0x9

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsLongpressEditMode:Z

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_11
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DIALOG_ALBUM_HIDE:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_12

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->showHideDialog(Z)V

    goto/16 :goto_0

    :cond_12
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DIALOG_ALBUM_SHOW:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_13

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->showHideDialog(Z)V

    goto/16 :goto_0

    :cond_13
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_DEVICE_VIEW:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->startNearbyDeviceView()V

    goto/16 :goto_0

    :cond_14
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_CONTACT_US:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactUs()V

    goto/16 :goto_0

    :cond_15
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PHOTOSPLITVIEW:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v25, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_ALBUM_THUMBNAILS_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_16
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALBUM:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v24, v0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v25, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_17
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHOW_RENAME_POPUP:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_19

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v13

    if-eqz v13, :cond_18

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_18

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaObject;

    :cond_18
    const/16 v22, 0x4

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v22, 0x0

    aput-object v4, v16, v22

    const/16 v22, 0x1

    aput-object v11, v16, v22

    const/16 v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v16, v22

    const/16 v22, 0x3

    const-string/jumbo v23, "AlbumsListView"

    aput-object v23, v16, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v22, v0

    const-string/jumbo v23, "RENAME_DC_OPERATION"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_1a
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SWITCH_TAB:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1b

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v22

    check-cast v22, Lcom/sec/samsung/gallery/drawer/GalleryTab;

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->handleDCSwitchTab(I)V

    goto/16 :goto_0

    :cond_1b
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_SHOW_HIDDEN_ALBUM:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1c

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v21

    const-string/jumbo v22, "show-hidden-album"

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-class v22, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1c
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_VIEW_AS_DIALOG:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1d

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->showViewAsDialog()V

    goto/16 :goto_0

    :cond_1d
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_MORE_ALBUM:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1e

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v22

    const-string/jumbo v23, "AlbumUnfold"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->handleMoreAlbumForBixby(Z)V

    goto/16 :goto_0

    :cond_1e
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SECURE_FOLDER:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v25

    invoke-virtual/range {v22 .. v25}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :cond_1f
    sget v22, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    move/from16 v0, v22

    if-ne v8, v0, :cond_0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getViewLevelForAlbum()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setCurrentLayout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected updateActionBarFromNoItemViewMode()V
    .locals 3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mAlbumEventHandle:Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewEventHandle;->initializeView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsHiddenAlbum:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForHidden;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setHiddenAlbumTitle(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    sput-object v0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->refreshDualScreenFocus()V

    return-void
.end method
