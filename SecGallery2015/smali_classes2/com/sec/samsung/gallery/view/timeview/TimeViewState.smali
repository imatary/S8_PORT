.class public Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.super Lcom/sec/android/gallery3d/app/TabActivityState;
.source "TimeViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewState$GroupSelectionTask;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DynamicScaleAnimConfig;,
        Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;
    }
.end annotation


# static fields
.field private static final ADD_EVENT_RESULT_OK:I = 0x3

.field public static final COL_CNT_LEVEL_DEFAULT:I

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FeatureUseCMH:Z

.field private static final KEY_VIDEO_CLIP:Ljava/lang/String; = "VIDEO_CLIP_MULTIPIC"

.field private static final MSG_REFRESH_ACTIONBAR_BG:I = 0x2

.field private static final MSG_UPDATE_ACTIONBAR:I = 0x0

.field private static final MSG_UPDATE_ACTIONBAR_FOR_REMOVE_TAG:I = 0x1

.field private static final PREF_STATE_CHANNEL_PHOTO:I = 0x1

.field private static final REQUEST_ADD_TAG:I = 0x906

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field public static final REQUEST_ASSIGN_NAME:I = 0x904

.field private static final REQUEST_CAMERA_LAUNCH_FOR_SINGLE_IMAGE_PICK:I = 0x902

.field private static final REQUEST_CAMERA_LAUNCH_FOR_SINGLE_VIDEO_PICK:I = 0x903

.field private static final REQUEST_EVENT_LIST:I = 0xc6f

.field public static final REQUEST_FINISH_FOR_THEME_STORE:I = 0x905

.field private static final REQUEST_HIDDEN_ALBUM_CREATION:I = 0x901

.field private static final TAG:Ljava/lang/String; = "TimeViewState"

.field private static final VIDEO_CLIP_MAX_ITEM:I = 0xf


# instance fields
.field private mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

.field private mAlbumIndex:I

.field private mAlbumItemIndex:I

.field private mAvailableAddCount:I

.field private mCancelOperation:Z

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

.field private mCurrentLayout:I

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentTopSetPath:Ljava/lang/String;

.field mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEnableAddAll:Z

.field private mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

.field private mFirstMediaCheck:Z

.field private mFromGalleryWidget:Z

.field private mFromGifMaker:Z

.field private mFromInsideGallery:Z

.field private mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsAlbumPick:Z

.field private mIsCollageMode:Z

.field private mIsDualLaunchFromDetail:Z

.field private mIsEasyMode:Z

.field private mIsFirstLoadingFinished:Z

.field private mIsFromNoItem:Z

.field private mIsFromNoItemView:Z

.field private mIsGifMode:Z

.field private mIsLongPressEditMode:Z

.field private mIsMaxCount:Z

.field private mIsPickFromAddToNewAlbum:Z

.field private mIsPickFromAddToStory:Z

.field private mIsPickerMode:Z

.field private mIsTimeViewStateFocused:Z

.field mIsUnablePickPrivateFiles:Z

.field private final mMainHandler:Landroid/os/Handler;

.field public mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private volatile mNeedIdleProcess:Z

.field private mOldSelectedCount:I

.field private mSelectedItemAlbumIdx:I

.field private mSelectedItemIdx:I

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

.field private mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

.field private final mTimeViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private final mTimeViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private final mTooSmallForCropItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FeatureUseCMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FEATURE_USE_DEVICE_COG:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseAlbumLoadOptimize:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FeatureUseCMH:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChangeDefaultLevelForTimeView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseChangeDefaultLevel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->COL_CNT_LEVEL_DEFAULT:I

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNeedIdleProcess:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsAlbumPick:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsTimeViewStateFocused:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumItemIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mOldSelectedCount:I

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItem:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItemView:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCancelOperation:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    iput v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;

    const-string/jumbo v1, "TIME_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$2;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;

    const-string/jumbo v1, "TIME_VIEW_EXIT_SELECTION"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$3;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$4;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    iput v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemAlbumIdx:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemIdx:I

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$24;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTooSmallForCropItemList:Ljava/util/List;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$29;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$29;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$10000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$10200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$10600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    return v0
.end method

.method static synthetic access$10700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$10800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCancelOperation:Z

    return v0
.end method

.method static synthetic access$10902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCancelOperation:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->prePenSelectionRemoveItem(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$11602(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$11700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$11800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$12000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$12200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$12302(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$12400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$12502(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    return p1
.end method

.method static synthetic access$12600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$12700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$12902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$13102(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$13200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startChannelViewMode()V

    return-void
.end method

.method static synthetic access$13400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$13800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setLayoutLevel(I)V

    return-void
.end method

.method static synthetic access$14100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$14200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    return v0
.end method

.method static synthetic access$14300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    return-object v0
.end method

.method static synthetic access$14400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/drawer/NavigationSpinner;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailView(IIZ)V

    return-void
.end method

.method static synthetic access$14800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->finishCurrentViewState()V

    return-void
.end method

.method static synthetic access$15200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$15400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$15500()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FeatureUseCMH:Z

    return v0
.end method

.method static synthetic access$15700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$16900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumPostProcess()V

    return-void
.end method

.method static synthetic access$17200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;ILcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->doGroupSelect(ILcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$17400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$17502(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$17600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBarForRemoveTag()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/util/AddItemToChannel;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/samsung/gallery/util/AddItemToChannel;)Lcom/sec/samsung/gallery/util/AddItemToChannel;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setActionBarMenuColor()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFirstLoadingFinished:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFirstLoadingFinished:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$UpdateSelectionModeTask;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->postUpdateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->handleFilter()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItemView:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsDualLaunchFromDetail:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsDualLaunchFromDetail:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemAlbumIdx:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateSelectionMode()V

    return-void
.end method

.method static synthetic access$5002(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemIdx:I

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbum(I)V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6202(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$6802(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    return p1
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(II)V

    return-void
.end method

.method static synthetic access$7300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$9000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$32;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$32;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addItemToTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            "Ljava/util/Map",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;>;)V"
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    return-void
.end method

.method private addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    .locals 12

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-nez v6, :cond_0

    const/16 v2, 0x1f4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lt v6, v2, :cond_0

    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(I)V

    const/4 v6, 0x0

    :goto_0
    return v6

    :cond_0
    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v3, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a040f

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    invoke-virtual {p0, v7, v8, v9}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    if-nez p3, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_3
    const/4 v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    invoke-direct {p0, p2, v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "VIDEO_CLIP_MULTIPIC"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    const/16 v6, 0xf

    if-lt v0, v6, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a018d

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0xf

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    if-nez v6, :cond_7

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_8
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    sget v6, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-lt v0, v6, :cond_b

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01e3

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    sget v10, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    if-nez v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getUnsupportedStringInGifMode(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isDrmCheck(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_d
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    const/4 v6, 0x6

    if-lt v0, v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/4 v10, 0x6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_e

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    if-nez v6, :cond_f

    :cond_e
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getUnsupportedStringInCollageMode(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_11
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a040e

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-virtual {v6, v7, v8, v10, v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v3, p1, p2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto/16 :goto_1
.end method

.method private attachLayerToRootView()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    iget v2, v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mTabPos:I

    invoke-virtual {v0, p0, v1, v2}, Lcom/sec/android/gallery3d/app/TabStateManager;->setTabState(Lcom/sec/android/gallery3d/app/TabActivityState;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method private cancelSwitchFilterTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    :cond_0
    return-void
.end method

.method private checkDeletableMediaObject(Lcom/sec/android/gallery3d/data/MediaObject;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

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

.method private checkEnableAnimateCollage(I)Z
    .locals 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

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

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a068e

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v10, 0x7f0a0690

    new-array v11, v8, [Ljava/lang/Object;

    invoke-static {v9, v10, v11}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

.method private checkItemToSelect(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v2, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getUnsupportedStringInGifMode(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getUnsupportedStringInCollageMode(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private checkMediaAvailability()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_3

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v7

    if-gtz v7, :cond_0

    const/4 v4, 0x1

    :cond_0
    if-eqz v4, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v7, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v7, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v7, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$26;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$26;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_1
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFirstMediaCheck:Z

    :cond_2
    return-void

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v7, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$27;

    invoke-direct {v7, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$27;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v5, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "TimeViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mimeType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v7, "UPDATE_SPINNER_EXPANSION_GROUP"

    invoke-virtual {v5, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startNoItemViewState(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto :goto_1

    :cond_8
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFirstMediaCheck:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v7, v8, :cond_1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItem:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v7

    if-nez v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v8, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v8, v9}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5, v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    if-ne v7, v8, :cond_b

    move v3, v5

    :goto_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->initializeView()V

    if-eqz v3, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v7, v8, :cond_9

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    if-eqz v7, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAll()V

    goto :goto_2

    :cond_b
    move v3, v6

    goto :goto_3

    :cond_c
    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsNoItemViewMode:Z

    if-eqz v7, :cond_d

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsNoItemViewMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItem()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateActionBarFromNoItemViewMode()V

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v7

    sget-object v8, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->initializeView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7, v5, v6, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private checkPickMaxCount(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(I)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkUnsupportedVideoFile(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 6

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v0

    const-wide v2, 0x2000000000L

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_3

    :cond_1
    instance-of v0, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private doGroupSelect(ILcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    rsub-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v0, p2, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, p2, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v2, v2, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    const/4 v1, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    rsub-int v1, v2, 0x1f4

    :cond_2
    invoke-direct {p0, v0, p2, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, p2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    goto :goto_0
.end method

.method private enterSelectionMode()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGifSelectMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setCollageSelectMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setEAM(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v4, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectItem(II)V

    :cond_4
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-nez v1, :cond_6

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_0

    :cond_6
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto/16 :goto_0
.end method

.method private exitSelectionMode()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    const-string/jumbo v0, "TimeViewState"

    const-string/jumbo v1, "exitSelectionMode.setAction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    const-string/jumbo v0, "TimeViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "exitSelectionMode() ActionBar.setTitle; count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a031f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v0, :cond_4

    :cond_3
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    :cond_4
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setGifMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCollageMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsTimeViewStateFocused:Z

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setEAM(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v6

    invoke-static {v5, v6}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    const/high16 v5, 0x100000

    invoke-static {v0, v5}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    :goto_0
    const-string/jumbo v5, "TimeViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDefaultPath : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_1
    if-eqz v1, :cond_4

    const-string/jumbo v5, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getTopSetPathForLocalOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "mtpMode"

    invoke-static {v5, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mData:Landroid/os/Bundle;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mData:Landroid/os/Bundle;

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getAddMtpTopPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private getItemIndexFromDualScreenFocusPath()I
    .locals 4

    sget-object v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v0, :cond_1

    const-string/jumbo v1, "TimeViewState"

    const-string/jumbo v2, "refreshDualScreenFocus item null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "TimeViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDualScreenFocus path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    goto :goto_0
.end method

.method private getLayoutLevel()I
    .locals 4

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getTimePickerLayoutLevel()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getTimeSuggestionPickerLayoutLevel()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_2

    const-string/jumbo v1, "categoryViewColCnt"

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->COL_CNT_LEVEL_DEFAULT:I

    invoke-static {v2, v1, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "timeViewColCnt"

    goto :goto_1
.end method

.method private getMaxPickCount()I
    .locals 8

    const/16 v4, 0x1f4

    const/4 v5, 0x6

    const/4 v3, -0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v6, "pick-max-item"

    invoke-virtual {v0, v6, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v6, "VIDEO_CLIP_MULTIPIC"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v1, 0xf

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne v1, v3, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v6, v5, :cond_3

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    :cond_3
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    if-eqz v6, :cond_4

    const/16 v1, 0x3e8

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v6, :cond_5

    sget v1, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v6, :cond_6

    move v1, v5

    goto :goto_0

    :cond_6
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-eqz v5, :cond_7

    const-string/jumbo v4, "select_num_key"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v3

    if-eqz v3, :cond_8

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    goto :goto_0

    :cond_8
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromInsideGallery:Z

    if-nez v3, :cond_0

    move v1, v4

    goto :goto_0
.end method

.method private getTopFilterMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    return-object v2
.end method

.method private getTopSetPathByFilter()Ljava/lang/String;
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v4, v5, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;ILcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v4

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v4, v5, :cond_3

    const-string/jumbo v0, "/local/all"

    :goto_1
    invoke-static {v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v2

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SECRET_BOX:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->getSecretBoxPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
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
    const-string/jumbo v1, "item"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "/union/item/all"

    const-string/jumbo v2, "/union/localall"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "/union/all"

    const-string/jumbo v2, "/union/localall"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUnsupportedStringInCollageMode(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v1, :cond_0

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide v4, 0x2000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a049e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getUnsupportedStringInGifMode(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;
    .locals 7

    const v6, 0x7f0a049e

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_0

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleFilter()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->cancelSwitchFilterTask()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v0

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getTopFilterMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewMediaCountCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
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
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v5, "TimeViewState"

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
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v5, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    const/4 v5, 0x2

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v6, v2, v5

    const/4 v5, 0x1

    aput-object v1, v2, v5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "PICKER_ITEM_SELECTED"

    invoke-virtual {v5, v6, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleResultWallpaper(Landroid/content/Intent;I)V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->finishActivityForWallpaper(Landroid/content/Intent;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-ne p2, v6, :cond_0

    :goto_0
    invoke-virtual {v3, p2, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    :goto_1
    return-void

    :cond_0
    move-object p1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemAlbumIdx:I

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemIdx:I

    invoke-virtual {v3, v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string/jumbo v3, "image_too_small"

    invoke-virtual {p1, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemAlbumIdx:I

    if-eq v3, v6, :cond_2

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectedItemIdx:I

    if-eq v3, v6, :cond_2

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTooSmallForCropItemList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTooSmallForCropItemList:Ljava/util/List;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v0, v7

    const/4 v3, 0x1

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "PICKER_ITEM_SELECTED"

    invoke-virtual {v2, v3, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private initTimeViewEventHandler()V
    .locals 3

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->setMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z
    .locals 11

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-nez v6, :cond_0

    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_0
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    if-eqz p2, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_3
    if-eqz p2, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_4
    const/4 v6, 0x0

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickFromAddToNewAlbum:Z

    if-eqz v6, :cond_6

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a086b

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v6, 0x0

    goto :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickFromAddToStory:Z

    if-eqz v6, :cond_a

    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-nez v6, :cond_8

    if-eqz p2, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a086b

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_7
    const/4 v6, 0x0

    goto :goto_0

    :cond_8
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isRaw(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz p2, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0077

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_9
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_a
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsUnablePickPrivateFiles:Z

    if-eqz v6, :cond_c

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eqz p2, :cond_b

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a046c

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_c
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0, v0, v6, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v6

    if-nez v6, :cond_d

    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_d
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickLimitedFileSize(Landroid/app/Activity;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSize()J

    move-result-wide v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->pickLimitedFileSize(Landroid/app/Activity;)J

    move-result-wide v4

    const-wide/32 v6, 0x100000

    mul-long/2addr v6, v4

    cmp-long v6, v2, v6

    if-lez v6, :cond_f

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0252

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "MB"

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_e

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private isSuggestionPickerMode()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postUpdateCountOnActionBar()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private prePenSelectionRemoveItem(II)Z
    .locals 10

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a040f

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v2, 0x1

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    const/4 v5, 0x1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    invoke-virtual {p0, v4, v5, v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    move v3, v2

    goto :goto_0
.end method

.method private refreshDualScreenFocus()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getItemIndexFromDualScreenFocusPath()I

    move-result v0

    const-string/jumbo v1, "TimeViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "refreshDualScreenFocus :: focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    sget-object v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :goto_1
    return-void

    :cond_0
    const-string/jumbo v1, "TimeViewState"

    const-string/jumbo v2, "refreshDualScreenFocus :: mMediaItemAdapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "TimeViewState"

    const-string/jumbo v2, "refreshDualScreenFocus :: mComposeView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private runGroupSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$31;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;IZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$30;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IZLcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAlbum(I)V
    .locals 8

    const/4 v6, -0x1

    const/4 v7, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGroupCheckBoxSelected(Z)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-eq v4, v5, :cond_3

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object v4, v3

    check-cast v4, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getMediaItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSetSelectedCount(Ljava/util/ArrayList;)I

    move-result v4

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    if-ne v4, v5, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, v3, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Ljava/util/List;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumPostProcess()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getMaxPickCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkPickMaxCount(I)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "TimeViewState"

    const-string/jumbo v5, "Limit Max Pick count"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eq v1, v6, :cond_6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    sub-int v4, v1, v4

    invoke-direct {p0, v3, v4, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectLimitedAlbumProcess(Lcom/sec/android/gallery3d/data/MediaSet;II)V

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumPostProcess()V

    :goto_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v7, v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    if-eqz v4, :cond_7

    const/16 v1, 0x3e8

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    sub-int v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_1

    :cond_7
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromInsideGallery:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-nez v4, :cond_a

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v4, :cond_8

    sget v1, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :goto_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    sub-int v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_1

    :cond_8
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v4, :cond_9

    const/4 v1, 0x6

    goto :goto_3

    :cond_9
    const/16 v1, 0x1f4

    goto :goto_3

    :cond_a
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-eqz v4, :cond_b

    const-string/jumbo v4, "select_num_key"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    sub-int v4, v1, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto :goto_1

    :cond_b
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItem(IZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto :goto_1

    :cond_c
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllItemCount(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_d

    invoke-direct {p0, v3, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->runGroupSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0, p1, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->doGroupSelect(ILcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumPostProcess()V

    goto/16 :goto_2
.end method

.method private selectAlbumPostProcess()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    invoke-virtual {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGroupCheckBoxSelected(Z)V

    return-void
.end method

.method private selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            ")V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V

    return-void
.end method

.method private selectAlbumProcess(Ljava/util/ArrayList;Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/data/MediaItem;",
            ">;",
            "Lcom/sec/android/gallery3d/data/MediaSet;",
            "I)V"
        }
    .end annotation

    const/4 v7, -0x1

    if-eq p3, v7, :cond_2

    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_0

    if-eqz v2, :cond_7

    if-gtz p3, :cond_7

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0251

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x3e8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a049e

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v7, "select_num_key"

    const/4 v8, -0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0251

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a01e3

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sget v11, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a00a7

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/4 v11, 0x6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v7, v7, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v8, 0x6

    if-ne v7, v8, :cond_0

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x1f4

    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(I)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isDrmCheck(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    invoke-direct {p0, v3, v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkItemToSelect(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_8
    const/4 v5, 0x1

    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_a
    if-eqz v2, :cond_b

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_b
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, p2, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    if-eqz v2, :cond_9

    add-int/lit8 p3, p3, -0x1

    goto :goto_3
.end method

.method private selectAll()V
    .locals 6

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getMaxPickCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkPickMaxCount(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v4, "TimeViewState"

    const-string/jumbo v5, "Limit Max Pick Count"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    move v0, v4

    :goto_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    if-eqz v0, :cond_2

    :goto_2
    invoke-direct {p0, v2, v1, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;IZ)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2
.end method

.method private selectAllForDuplicate()V
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    sub-int v2, v3, v0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;IZ)V

    return-void
.end method

.method private selectAllPostProcess()V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    invoke-virtual {p0, v1, v3, v2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;IZLcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 23

    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v19

    sub-int v10, p2, v19

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v20, v0

    sget-object v21, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v20

    if-nez v20, :cond_4

    const/4 v7, 0x1

    :goto_0
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v5, :cond_0

    if-eqz p3, :cond_5

    if-gtz v10, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(IZ)V

    :cond_0
    if-eqz v8, :cond_2

    if-eqz p3, :cond_1

    if-lez v10, :cond_2

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showVideoNotSupported()V

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->setFinishingState()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/Map;)V

    :goto_2
    return-void

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    :cond_5
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_6

    const-string/jumbo v20, "TimeViewState"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "1. SelectionUpdateTask is cancelled or task=="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    move/from16 v16, v14

    move v6, v14

    if-eqz v7, :cond_c

    move-object/from16 v13, p1

    if-eqz p3, :cond_b

    const/4 v4, 0x0

    :goto_3
    if-ge v6, v5, :cond_8

    move/from16 v0, p2

    if-ge v4, v0, :cond_8

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v17

    if-nez v17, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v20

    add-int v4, v4, v20

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    sub-int v20, v6, v16

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemByPosition(II)Ljava/util/ArrayList;

    move-result-object v12

    if-lez v6, :cond_9

    add-int/lit8 v14, v6, -0x1

    :cond_9
    :goto_4
    if-nez v12, :cond_d

    :cond_a
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_b
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemByPosition(II)Ljava/util/ArrayList;

    move-result-object v12

    move v14, v5

    goto :goto_4

    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    if-eqz v13, :cond_a

    const/16 v20, 0x0

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v12

    goto :goto_4

    :cond_d
    const/4 v15, 0x1

    const/4 v9, 0x0

    :goto_6
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v20

    if-ge v9, v0, :cond_a

    if-eqz p4, :cond_e

    invoke-virtual/range {p4 .. p4}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v20

    if-eqz v20, :cond_e

    const-string/jumbo v20, "TimeViewState"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "2. SelectionUpdateTask is cancelled or task=="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_e
    if-eqz p4, :cond_f

    const-wide/16 v20, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    const-wide/16 v20, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, p4

    move-wide/from16 v1, v20

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    :cond_f
    if-eqz p3, :cond_10

    if-gtz v10, :cond_10

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v20

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(IZ)V

    goto/16 :goto_5

    :cond_10
    invoke-virtual {v12, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v11, :cond_12

    :cond_11
    :goto_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_12
    if-eqz p3, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isDrmCheck(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v20

    if-eqz v20, :cond_13

    if-eqz v15, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0a049e

    invoke-static/range {v20 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v15, 0x0

    goto :goto_7

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v20

    if-nez v20, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkUnsupportedVideoFile(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v20

    if-eqz v20, :cond_14

    const/4 v8, 0x1

    goto :goto_7

    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v11, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addItemToTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    add-int/lit8 v10, v10, -0x1

    goto :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move/from16 v20, v0

    const/16 v21, 0x6

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_17

    sget-object v20, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v20 .. v20}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v20

    if-eqz v20, :cond_17

    invoke-static {v11}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v20

    if-nez v20, :cond_17

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v20

    if-eqz v20, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    const v21, 0x7f0a049e

    invoke-static/range {v20 .. v21}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_7

    :cond_17
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v13, v11, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addItemToTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    goto/16 :goto_7
.end method

.method private selectItem(II)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addToSelectionManager(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;)V

    goto :goto_0
.end method

.method private selectLimitedAlbumProcess(Lcom/sec/android/gallery3d/data/MediaSet;II)V
    .locals 9

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    div-int v0, v7, p3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-gt v5, v0, :cond_0

    if-gtz p2, :cond_2

    if-gt v5, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(I)V

    :cond_0
    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f0a049e

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_1
    return-void

    :cond_2
    mul-int v7, v5, p3

    invoke-virtual {p1, v7, p3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-gtz p2, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(I)V

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isDrmCheck(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v7, 0x0

    invoke-direct {p0, v1, v7}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;Z)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, p1, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2
.end method

.method private setActionBarMenuColor()V
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0266

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0443

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setEAM(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private setFirstLoading(I)V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v3, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_0

    move v4, v6

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    invoke-static {v8, v4, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridColumnsCount(Landroid/content/res/Resources;ZLcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    aget v0, v1, p1

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    iget-boolean v8, v8, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseGroupTitle:Z

    invoke-static {v6, v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridRowCount(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)I

    move-result v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridGap(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)I

    move-result v6

    add-int/lit8 v8, v0, 0x1

    mul-int v2, v6, v8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v8

    sub-int/2addr v8, v2

    div-int/2addr v8, v0

    invoke-virtual {v6, v8, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setItemWidthForPlayIcon(IZ)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v6, v7, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingValues(II)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v6, :cond_2

    mul-int/lit8 v6, v5, 0x2

    mul-int/2addr v6, v0

    :goto_2
    invoke-virtual {v7, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    return-void

    :cond_0
    move v4, v7

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1

    :cond_2
    mul-int v6, v5, v0

    goto :goto_2
.end method

.method private setLaunchMode()V
    .locals 12

    const v10, 0x7f0a031f

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v6, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v5, :cond_6

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v10, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v10, :cond_5

    move v5, v6

    :goto_0
    invoke-virtual {v9, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setMultiPickMode(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    :cond_1
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItem:Z

    if-eqz v5, :cond_2

    if-nez v0, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v9, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v9, v10}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :cond_2
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->initializeView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    :cond_3
    :goto_1
    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v7, v1, v7

    aget v6, v1, v6

    aget v8, v1, v8

    const/4 v9, 0x3

    aget v9, v1, v9

    invoke-virtual {v5, v7, v6, v8, v9}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_4
    return-void

    :cond_5
    move v5, v7

    goto :goto_0

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v5, v5, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v9, 0x7

    if-ne v5, v9, :cond_7

    move v5, v6

    :goto_2
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v9, :cond_9

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v10, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-eqz v5, :cond_8

    move v5, v8

    :goto_3
    invoke-direct {v10, v11, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto :goto_1

    :cond_7
    move v5, v7

    goto :goto_2

    :cond_8
    move v5, v6

    goto :goto_3

    :cond_9
    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v10, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-eqz v5, :cond_a

    move v5, v8

    :goto_5
    invoke-direct {v10, v11, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_4

    :cond_a
    move v5, v6

    goto :goto_5

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    if-eqz v5, :cond_c

    const-string/jumbo v5, "TimeViewState"

    const-string/jumbo v9, "setLaunchMode() called, ActivityResume situation and ActionBarView is TimeViewActionBarForNormal. so skip."

    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v9, :cond_3

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isReCreateActivity()Z

    move-result v5

    if-eqz v5, :cond_e

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-eqz v5, :cond_d

    move v5, v8

    :goto_7
    invoke-direct {v2, v9, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_6

    :cond_d
    move v5, v6

    goto :goto_7

    :cond_e
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_1
.end method

.method private setLayoutLevel(I)V
    .locals 3

    iput p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "timeViewColCnt"

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onPause()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onResume()V

    return-void
.end method

.method private setSelectionBufferMargin()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onDisplayChanged()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    return-void
.end method

.method private showDeleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method private showMaximumSelectionNumberExceeded(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showMaximumSelectionNumberExceeded(IZ)V

    return-void
.end method

.method private showMaximumSelectionNumberExceeded(IZ)V
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0490

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "VIDEO_CLIP_MULTIPIC"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a018d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a01e3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_5

    if-eqz p2, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a7

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0251

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private showVideoNotSupported()V
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private showViewAsDialog()V
    .locals 3

    new-instance v0, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$23;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$23;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->setViewAsOnItemSelectedListener(Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex$ViewAsOnItemSelectedListener;)V

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/ViewAsDialogForDex;->showDialog(I)V

    return-void
.end method

.method private startChannelViewMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "START_CHANNEL_VIEW_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startDetailView(IIZ)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    const/4 v13, 0x1

    move/from16 v0, p2

    invoke-virtual {v9, v0, v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string/jumbo v13, "TimeViewState"

    const-string/jumbo v14, "cannot start DetailView. mediaList is empty"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v13, 0x0

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    :cond_1
    instance-of v13, v7, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v13, :cond_2

    check-cast v7, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v7

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v13, v13, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v13}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_1
    const/4 v10, 0x0

    if-eqz v6, :cond_3

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v13

    if-eqz v13, :cond_7

    :cond_3
    const-string/jumbo v13, "TimeViewState"

    const-string/jumbo v14, "cannot start animation to DetailView. bitmap is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v14

    invoke-virtual {v13, v10, v14}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v13

    if-nez v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v13

    sget-object v14, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v13, v14, :cond_8

    const/4 v2, 0x1

    :goto_3
    if-eqz v2, :cond_9

    const-string/jumbo v13, "KEY_MEDIA_SET_PATH"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "/timeall"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string/jumbo v13, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v3, v13, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v13, "KEY_MEDIA_SET_POSITION"

    move/from16 v0, p1

    invoke-virtual {v3, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v12

    const/4 v5, 0x0

    :goto_5
    move/from16 v0, p1

    if-ge v5, v0, :cond_a

    if-ge v5, v12, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v13, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v13

    add-int p2, p2, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v9

    if-nez v9, :cond_5

    const-string/jumbo v13, "TimeViewState"

    const-string/jumbo v14, "cannot start DetailView. mediaSet is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v7

    if-nez v7, :cond_1

    const-string/jumbo v13, "TimeViewState"

    const-string/jumbo v14, "cannot start DetailView. mediaItem is null"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v6

    goto/16 :goto_1

    :cond_7
    :try_start_1
    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_2

    :catch_0
    move-exception v4

    const-string/jumbo v13, "TimeViewState"

    const-string/jumbo v14, "cannot start animation to DetailView because of the RuntimeException. bitmap is null"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v13, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_a
    const-string/jumbo v13, "KEY_ITEM_POSITION"

    move/from16 v0, p2

    invoke-virtual {v3, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v13

    if-eqz v13, :cond_b

    const-string/jumbo v13, "expansion_detail_view"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v13

    if-nez v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v13

    sget-object v14, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v13, v14, :cond_d

    :cond_c
    const-string/jumbo v13, "KEY_IS_FROM_CATEGORYVIEW"

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v13

    const-class v14, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    move/from16 v0, p3

    invoke-virtual {v13, v14, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto/16 :goto_0
.end method

.method private startDetailViewInUIThread(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$25;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNearbyDeviceView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsNoItemViewMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_NOITEMSVIEW_MIME_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsAlbumPick:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "album-pick"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$28;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$28;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private unSelectAll()V
    .locals 9

    const/4 v5, 0x6

    const/4 v6, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v4, "pick-min-item"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v6, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a025b

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, v1, v8}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v5, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v4, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    invoke-virtual {v4, v8, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setEnableSelectAll(Z)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0
.end method

.method private updateCountOnActionBar()V
    .locals 12

    const/16 v11, 0xa

    const/4 v6, 0x1

    const/4 v10, 0x6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    invoke-static {}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->isRunningConversionAsyncTask()Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mOldSelectedCount:I

    if-nez v8, :cond_0

    iput v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mOldSelectedCount:I

    :cond_0
    if-nez v0, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v10, :cond_7

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :cond_2
    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_c

    if-ne v4, v0, :cond_c

    move v2, v6

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v8, v9, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v10, :cond_3

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-nez v8, :cond_4

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_11

    :cond_4
    const/4 v3, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_d

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "pick-max-item"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :cond_5
    :goto_2
    if-le v0, v3, :cond_6

    if-lez v3, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_10

    move v2, v6

    :cond_6
    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6, v7, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_7
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v9, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_8
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_9
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v11, :cond_a

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setEnableSelectAll(Z)V

    goto/16 :goto_0

    :cond_a
    invoke-static {}, Lcom/sec/samsung/gallery/controller/ConvertMultiFormatToMP4Cmd;->isRunningConversionAsyncTask()Z

    move-result v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mOldSelectedCount:I

    invoke-virtual {v8, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_c
    move v2, v7

    goto/16 :goto_1

    :cond_d
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v10, :cond_e

    sget-object v8, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v8}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v8

    if-nez v8, :cond_e

    const/16 v3, 0x1f4

    goto :goto_2

    :cond_e
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-eqz v8, :cond_f

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    goto :goto_2

    :cond_f
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_5

    const/4 v3, 0x6

    goto :goto_2

    :cond_10
    move v2, v7

    goto :goto_3

    :cond_11
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v6, v11, :cond_6

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    if-le v0, v3, :cond_6

    const/4 v2, 0x0

    goto :goto_3
.end method

.method private updateCountOnActionBarForRemoveTag()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setUpdateRequiredForRemoveTag(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a031f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private updateCurrentStatus()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->destroyedInSuggestionPickerMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v1, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    :cond_0
    return-void
.end method

.method private updateSelectionMode()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method public getContentsForFaceTag()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    monitor-enter v7

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedMediaSetMap()Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/HashMap;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v8, v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    if-eqz v8, :cond_2

    check-cast v3, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v6

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

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

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v2, :cond_0

    const-string/jumbo v0, "701"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "704"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z

    if-eqz v1, :cond_2

    const-string/jumbo v0, "002"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "003"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "001"

    goto :goto_0
.end method

.method isAvailableCount(IZZ)Z
    .locals 12

    const/4 v8, -0x1

    const v11, 0x7f0a0251

    const/4 v10, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-nez v6, :cond_0

    :goto_0
    return v5

    :cond_0
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "select_num_key"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_1
    if-eq v3, v8, :cond_2

    if-le p1, v3, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    if-nez v6, :cond_2

    :cond_1
    move v2, p3

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    :cond_2
    if-eqz p2, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "pick-min-item"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ge p1, v3, :cond_3

    if-le v3, v5, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a025b

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    move v2, p3

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    if-nez v6, :cond_4

    iget v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    if-le p1, v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v5, v5, [Ljava/lang/Object;

    iget v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v10

    invoke-virtual {v6, v11, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    move v2, p3

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    move v5, v1

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v6, "pick-max-item"

    const/16 v7, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    goto/16 :goto_1

    :cond_7
    const/16 v6, 0x3e8

    if-le p1, v6, :cond_4

    const/16 v3, 0x3e8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-virtual {v6, v11, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isMultiSelectMode()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    if-nez v6, :cond_4

    :cond_8
    move v2, p3

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    goto :goto_2
.end method

.method isDrmCheck(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

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

.method public isTabEnabledActivityState()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTooSmallForCrop(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTooSmallForCropItemList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->onBackPressed()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setEAM(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f120285

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onContextItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string/jumbo v5, "Gallery_Performance"

    const-string/jumbo v6, "TimeViewState onCreate Start"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "TimeViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCreate  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v5, :cond_0

    const-string/jumbo v5, "TimeViewState"

    const-string/jumbo v6, "mActivity is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsMaxCount:Z

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFirstLoadingFinished:Z

    new-instance v5, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->initTimeViewEventHandler()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGalleryWidget(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromInsideGallery(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromInsideGallery:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGifMaker(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isUnablePickPrivateFiles(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsUnablePickPrivateFiles:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v11, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v11, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->initSpinner()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v5, v8}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setStopSmartClustering(Z)V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "TimeViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Previous TabTagType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v5, v6}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_3

    :cond_2
    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v5, "pick-max-item"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v10, :cond_4

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGalleryWidget:Z

    if-eqz v5, :cond_e

    const-string/jumbo v5, "pick-max-item"

    const/16 v6, 0x3e8

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    :goto_1
    const-string/jumbo v5, "is-pick-to-add-channel-view"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickFromAddToStory:Z

    const-string/jumbo v5, "is-pick-to-add-new-album"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickFromAddToNewAlbum:Z

    :cond_5
    if-eqz p1, :cond_6

    const-string/jumbo v5, "KEY_SET_NO_ITEM_ACTION_BAR"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItem:Z

    const-string/jumbo v5, "KEY_IS_FROM_NOITEMVIEW"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFromNoItemView:Z

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string/jumbo v5, "start_dual_from_detail"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsDualLaunchFromDetail:Z

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDefaultPath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    const/high16 v6, 0x100000

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v6, "previousStateActivity"

    invoke-static {v5, v6, v8}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v6, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    :cond_8
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCurrentStatus()V

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setSuggestionPickerMode(Z)V

    const-string/jumbo v5, "enable-suggestion-add-all"

    invoke-virtual {p1, v5, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    const-string/jumbo v5, "pick-max-item"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAvailableAddCount:I

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getStorySuggestionSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getStorySuggestionSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getStorySuggestionSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getSuggestionMediaItem()Ljava/util/ArrayList;

    move-result-object v2

    :goto_2
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEnableAddAll:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v6, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getSuggestionSet(Landroid/content/Context;Ljava/util/ArrayList;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    :cond_a
    if-nez v3, :cond_b

    const-string/jumbo v5, "TimeViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mediaSet is null! and mCurrentTopSetPath is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v7, 0x2

    invoke-direct {v5, v6, v3, v0, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    new-instance v6, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$5;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    new-instance v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getLayoutLevel()I

    move-result v5

    iput v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    if-eqz p1, :cond_c

    const-string/jumbo v5, "album-pick"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsAlbumPick:Z

    :cond_c
    sget-boolean v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v5, :cond_d

    new-instance v5, Lcom/samsung/android/devicecog/gallery/viewstatehandler/TimeViewDCHandler;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/TimeViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v5, Lcom/samsung/android/devicecog/gallery/touchevent/TimeViewStateDCTouchEvent;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/samsung/android/devicecog/gallery/touchevent/TimeViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_d
    const-string/jumbo v5, "Gallery_Performance"

    const-string/jumbo v6, "TimeViewState onCreate End"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFromGifMaker:Z

    if-eqz v5, :cond_f

    const-string/jumbo v5, "select_num_key"

    invoke-virtual {v1, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "pick-max-item"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v5, "pick-max-item"

    const/16 v6, 0x1f4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_1

    :cond_10
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onDestroy()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "TimeViewState onDestroy Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isSuggestionPickerMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "previousStateActivity"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "TIME_VIEW_EXIT_SELECTION"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onDestroy()V

    :cond_2
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "TimeViewState onDestroy End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onDirty(Z)V

    return-void
.end method

.method public onDirty(Z)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "TimeViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDirty() called, isExitSelectionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetNavigationBarPosition(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelectionBufferVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setSelectionBufferMargin()V

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
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f12028b

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->onBackPressed()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 8

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v5, "TimeViewState onPause Start"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsFirstLoadingFinished:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/AbstractActionBarForSelection;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setStopSmartClustering(Z)V

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v1, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onPause(Z)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDisengageMode()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->detach()V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setDisengageMode(Z)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetGroupRange()V

    :cond_3
    iput v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "TIME_VIEW"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionTitleFocus(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionLocationFocus(I)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setEAM(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onPause()V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "TimeViewState onPause End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    goto/16 :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    goto :goto_2
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v3, 0x0

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_CAMERA"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startChannelViewMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "channel_needto_show_pregrant_popup"

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
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startChannelViewMode()V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GFPA"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/16 v2, 0x904

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactActivity(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onResume()V
    .locals 13

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v12, 0x2

    const/4 v11, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "TimeViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNeedIdleProcess:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setEAM(Z)V

    :cond_1
    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFirstMediaCheck:Z

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    invoke-static {v0, v1, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->access$13900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;ZI)I

    move-result v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    if-eqz v0, :cond_e

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->setSmartClusterZoomMode(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v12}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setZoomLevel(I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_f

    const/4 v0, 0x3

    if-ne v6, v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    if-nez v0, :cond_f

    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;->getThumbSizeType(I)I

    move-result v10

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0, v11}, Lcom/sec/android/gallery3d/app/GalleryApp;->setIsPhotoPage(Z)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getViewLastScrollRange(Lcom/sec/samsung/gallery/core/TabTagType;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    aget-object v1, v8, v11

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPrevScroll:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    aget-object v1, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPrevCenterObject:I

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setLaunchMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v4, 0x1

    :goto_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsEasyMode:Z

    if-eqz v0, :cond_6

    or-int/lit16 v4, v4, 0x100

    :cond_6
    or-int/lit16 v4, v4, 0x80

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v7

    if-ne v7, v2, :cond_7

    const-string/jumbo v0, "TimeViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", itemIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumItemIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumItemIndex:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v7

    :cond_7
    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    or-int/2addr v4, v0

    :goto_3
    if-ltz v7, :cond_12

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    :goto_4
    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setFirstLoading(I)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mState:I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-nez v0, :cond_13

    :cond_8
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    :goto_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->attachLayerToRootView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setStopSmartClustering(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->getRestartSmartClustering()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "TimeViewState"

    const-string/jumbo v1, "restart smart clustering"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://force_reload"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0, v11}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setRestartSmartClustering(Z)V

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onResume()V

    iput v11, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mOldSelectedCount:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setActivityTitle()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->refreshEventBadge()V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    if-eqz v9, :cond_c

    iput v12, v9, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_d
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onResume()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "TimeViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GalleryTimeUtils;->setSmartClusterZoomMode(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setZoomLevel(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {v6}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getThumbSizeType(I)I

    move-result v10

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    iget v7, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto/16 :goto_3

    :cond_12
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setIgnoreSkip()V

    goto/16 :goto_4

    :cond_13
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->initialize(ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    goto/16 :goto_5
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 11

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    invoke-direct {p0, p3, p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->handleResultCameraLaunchForSinglePick(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p3, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->handleResultWallpaper(Landroid/content/Intent;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz p2, :cond_1

    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object v1, v5, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->ASSIGN_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    aput-object v8, v5, v7

    const/4 v7, 0x3

    aput-object p3, v5, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v8, "GDMA"

    invoke-static {v7, v8}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v7

    const-string/jumbo v8, "START_FACE_TAG"

    invoke-virtual {v7, v8, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    goto :goto_0

    :sswitch_4
    const/4 v7, -0x1

    if-ne p2, v7, :cond_2

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    aput-object p3, v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v8, "START_ALBUM_OPERATIONS"

    invoke-virtual {v7, v8, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "DC_NLG_REQUEST"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;

    if-eqz v2, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v7}, Lcom/samsung/android/devicecog/gallery/nlgparam/DCNlgCopyMoveRequest;->sendNlgRequest(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0

    :cond_2
    :sswitch_5
    const/4 v7, 0x1

    if-ne p2, v7, :cond_4

    if-eqz p3, :cond_0

    const-string/jumbo v7, "dc_story_name"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "dc_story_name"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v7, "state_story"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v8, v5, v7

    const/4 v7, 0x1

    aput-object v3, v5, v7

    const/4 v7, 0x2

    aput-object v6, v5, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v8, "DC_CREATE_STORY"

    invoke-virtual {v7, v8, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v7, "newAlbumName"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v3}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateChannelDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v7, 0x3

    if-ne p2, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getTotalSelectedItems()I

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0471

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v7, "selected_channel_id"

    const/4 v8, -0x1

    invoke-virtual {p3, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    if-nez v7, :cond_6

    new-instance v7, Lcom/sec/samsung/gallery/util/AddItemToChannel;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v7, v8}, Lcom/sec/samsung/gallery/util/AddItemToChannel;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAddItemToChannel:Lcom/sec/samsung/gallery/util/AddItemToChannel;

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/util/AddItemToChannel;->goToChannelDetailView(I)V

    goto/16 :goto_0

    :sswitch_6
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto/16 :goto_0

    :sswitch_7
    const/4 v7, -0x1

    if-ne p2, v7, :cond_0

    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "add_tag_value"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v8, "EVENT_ADD_TAG"

    invoke-virtual {v7, v8, v4}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x403 -> :sswitch_2
        0x901 -> :sswitch_0
        0x902 -> :sswitch_1
        0x903 -> :sswitch_1
        0x904 -> :sswitch_3
        0x905 -> :sswitch_6
        0x906 -> :sswitch_7
        0xc00 -> :sswitch_4
        0xc6f -> :sswitch_5
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const-string/jumbo v1, "TimeViewState"

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$6;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$7;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnLocationItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnLocationItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$8;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$9;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$10;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$11;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$11;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$12;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$12;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$13;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$14;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$15;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchStateListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$16;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$17;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$18;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$18;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$19;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$20;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$21;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$21;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEmptySpaceClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$22;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$22;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setDexThumbnailClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$DexThumbnailClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsTimeViewStateFocused:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->setEAM(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 5

    move-object v0, p3

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_3

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_3

    :cond_0
    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    :goto_1
    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    const/16 v2, 0x20

    :goto_3
    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    return-void

    :cond_1
    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v2, v0

    goto :goto_1

    :cond_3
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    const/16 v2, 0x10

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public setPromptRequest(IILjava/lang/Object;II)V
    .locals 5

    const/4 v4, 0x3

    move-object v0, p3

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_4

    if-eqz v0, :cond_4

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_0

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_4

    :cond_0
    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    :goto_1
    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_2
    iput p4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumIndex:I

    iput p5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mAlbumItemIndex:I

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    :goto_3
    const/4 v2, 0x1

    if-ne p2, v2, :cond_6

    const/16 v2, 0x20

    :goto_4
    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-lez v2, :cond_8

    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    :goto_5
    return-void

    :cond_2
    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/UnionLocalImage;->getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1

    :cond_4
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestThumbnailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    goto :goto_3

    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    const/16 v2, 0x10

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    iget v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    and-int/lit16 v2, v2, -0x101

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mFlags:I

    goto :goto_5
.end method

.method public startDetailViewViaSmartView(Lcom/sec/android/gallery3d/data/Path;)V
    .locals 6

    const-string/jumbo v4, "TimeViewState"

    const-string/jumbo v5, "startDetailViewViaSmartView"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    const-string/jumbo v4, "TimeViewState"

    const-string/jumbo v5, "fail to start detailview via smart view. item is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    const-string/jumbo v4, "TimeViewState"

    const-string/jumbo v5, "fail to start detailview via smart view. itemCode is -1)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startDetailViewImmediate(I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "TimeViewState"

    const-string/jumbo v5, "fail to start enlarge anim"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    const/4 v1, 0x0

    sput-object v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 27

    move-object/from16 v9, p2

    check-cast v9, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v10

    const-string/jumbo v23, "TimeViewState"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Event update ["

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "]"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->selectAll()V

    goto :goto_0

    :cond_2
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->unSelectAll()V

    goto :goto_0

    :cond_3
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_FILES:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v23

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_4
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v23

    const/16 v24, 0x7

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_CAMERA_MODE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v23, v0

    const-string/jumbo v24, "START_CAMERA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x5

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_7
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x6

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_8
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE_FOR_STORY_ALBUM:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    new-instance v24, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForStoryAlbum;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForStoryAlbum;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_9
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE_FOR_MAKE_COLLAGE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    new-instance v24, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v25, v0

    invoke-direct/range {v24 .. v25}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForCollage;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual/range {v23 .. v24}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_a
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_d

    sget-object v23, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v23

    if-eqz v23, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v23

    if-nez v23, :cond_0

    :cond_b
    sget-object v23, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v23

    if-eqz v23, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v23

    const-class v24, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v23

    const-class v24, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_SCAN_NEARBY_DEVICES:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_e

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->scanForNearbyProviderDevices(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v23, "TimeViewState"

    const-string/jumbo v24, "NullPointer Exception, maybe nearby device is not initiated yet"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_e
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_CATEGORY:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v6

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    aput-object v24, v17, v23

    const/16 v23, 0x1

    aput-object v6, v17, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    sget-object v24, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v17, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v23, v0

    const-string/jumbo v24, "START_CATEGORY_TAG"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_f
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_EDIT_CATEGORY:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v6

    const/16 v23, 0x5

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    aput-object v24, v17, v23

    const/16 v23, 0x1

    aput-object v6, v17, v23

    const/16 v23, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    sget-object v24, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->EDIT_PEOPLE_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const/16 v24, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    aput-object v24, v17, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v23, v0

    const-string/jumbo v24, "START_CATEGORY_TAG"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x3

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_GIF:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_12

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsGifMode:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setGifMode(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_12
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_COLLAGE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_13

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsCollageMode:Z

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCollageMode(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_13
    sget-object v23, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewSlideShow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v23

    if-eqz v23, :cond_14

    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentTopSetPath:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v23 .. v25}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startSlideshow(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_14
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SELECTION_BUFFER:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_16

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v15

    instance-of v0, v15, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    const/16 v16, 0x0

    move-object v14, v15

    check-cast v14, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v18

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v16

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v24

    const/16 v25, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isAvailableCount(IZZ)Z

    move-result v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    goto/16 :goto_0

    :cond_16
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_TRANSFER_ROOTVIEW_TO_UPDOWN:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_17

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(I)V

    goto/16 :goto_0

    :cond_17
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_CHANNEL_SUGGESTION_ADD:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v5

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getStorySuggestionSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    check-cast v16, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getSelectedSuggestedContents(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/data/ChannelAlbum;)Ljava/util/ArrayList;

    move-result-object v20

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-object/from16 v23, v0

    sget-object v24, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentLaunchMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->exitSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->finishCurrentViewState()V

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    aput-object v20, v17, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v23

    const-string/jumbo v24, "RESTART_SUGGESTION_ADD_COMPLETE"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TO_EVENT:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v24

    const/16 v25, 0x7

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startEventChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZLjava/lang/String;)V

    goto/16 :goto_0

    :cond_1a
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_DEVICE_VIEW:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1b

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->startNearbyDeviceView()V

    goto/16 :goto_0

    :cond_1b
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_CONTACT_US:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactUs()V

    goto/16 :goto_0

    :cond_1c
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v26, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1d
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALL_WTIH_CONTENT_TYPE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v26, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1e
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v25, v0

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v26, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1f
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v23, v0

    const/16 v24, 0x7

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsLongPressEditMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_20
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_TAG:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_21

    new-instance v11, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    const-class v24, Lcom/sec/samsung/gallery/view/detailview/moreinfo/MoreInfoItemAddTagsActivity;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-direct {v11, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v23, "return_tag"

    const/16 v24, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v23

    move/from16 v0, v23

    invoke-static {v11, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    const/16 v24, 0x906

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v11, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_21
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CHOOSE_DONE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMenu()Landroid/view/Menu;

    move-result-object v23

    const v24, 0x7f12007a

    invoke-interface/range {v23 .. v24}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto/16 :goto_0

    :cond_22
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SWITCH_TAB:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_23

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Integer;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v23

    check-cast v23, Lcom/sec/samsung/gallery/drawer/GalleryTab;

    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->handleDCSwitchTab(I)V

    goto/16 :goto_0

    :cond_23
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_COLLAGE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_24

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkEnableAnimateCollage(I)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startCollageMaker()V

    goto/16 :goto_0

    :cond_24
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_CREATE_ANIMATE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_25

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->checkEnableAnimateCollage(I)Z

    move-result v23

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startGifMaker()V

    goto/16 :goto_0

    :cond_25
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto/16 :goto_0

    :cond_26
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_VIEW_AS_DIALOG:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_27

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->showViewAsDialog()V

    goto/16 :goto_0

    :cond_27
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SECURE_FOLDER:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getInstance(Landroid/content/Context;)Lcom/sec/samsung/gallery/util/KNOXUtil;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/samsung/gallery/util/KNOXUtil;->getMoveToKnox2ContainerId()I

    move-result v26

    invoke-virtual/range {v23 .. v26}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->moveToKNOX(ZZI)V

    goto/16 :goto_0

    :cond_28
    sget v23, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    move/from16 v0, v23

    if-ne v10, v0, :cond_0

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mCurrentLayout:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setCurrentLayout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected updateActionBarFromNoItemViewMode()V
    .locals 7

    const v6, 0x7f0a031f

    const/4 v0, 0x2

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mIsPickerMode:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mTimeEventHandle:Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewEventHandle;->initializeView()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-eqz v5, :cond_2

    :goto_1
    invoke-direct {v3, v4, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewPeopleActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-eqz v5, :cond_4

    :goto_3
    invoke-direct {v3, v4, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v5, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mShrinkOption:I

    if-eqz v5, :cond_6

    :goto_4
    invoke-direct {v3, v4, v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isReCreateActivity()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->refreshDualScreenFocus()V

    return-void
.end method
