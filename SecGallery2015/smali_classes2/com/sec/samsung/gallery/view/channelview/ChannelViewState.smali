.class public Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;
.super Lcom/sec/android/gallery3d/app/TabActivityState;
.source "ChannelViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;,
        Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;,
        Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;
    }
.end annotation


# static fields
.field private static final ACTION_HIGHLIGHT_VIDEO_NOTIFICATION:Ljava/lang/String; = "com.samsung.gallery.notify"

.field public static final CONST_ACCEPT_BUTTON_INDEX:I = -0x1

.field public static final CONST_DECLINE_BUTTON_INDEX:I = -0x2

.field private static final EVENT_ID:Ljava/lang/String; = "eventID"

.field private static final FEATURE_DISABLE_SEARCHVIEW:Z

.field private static final FEATURE_USE_CMH:Z

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FEATURE_USE_DREAM_CHANNEL_VIEW_GUI:Z

.field private static final FeatureLowStorageMode:Z

.field private static final MEDIATYPE_IMAGE:Ljava/lang/String; = "media_type=1"

.field private static final MEDIATYPE_VIDEO:Ljava/lang/String; = "media_type=3"

.field private static final MSG_DELAY_TIME_MS:I = 0x64

.field private static final MSG_EVENT_RESTORE_DELAY_TIME_MS:I = 0x7d0

.field private static final MSG_MAX_REFRESH_UPDATE_COUNT:I = 0x5

.field private static final MSG_REFRESH_ACTIONBAR_BG:I = 0x1

.field private static final MSG_START_PHOTOVIEW:I = 0x0

.field private static final MSG_UPDATE_EVENT_SHARE_SERVICE:I = 0x2

.field private static final REQUEST_ALBUM_CREATION:I = 0x701

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field public static final REQUEST_MULTI_CONTACT_PICK:I = 0xe00

.field private static final REQUEST_SELECT_CONTACT:I = 0xe01

.field private static final TAG:Ljava/lang/String; = "ChannelViewState"

.field private static final USE_EVENT_NOTIFICATION:Z


# instance fields
.field private final FEATURE_USE_TAB_UI:Z

.field private eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

.field private mAddEventButtonView:Landroid/view/View;

.field private mAlbumIndex:I

.field private mChannelAlbumMgr:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

.field private mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

.field private final mChannelViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

.field private mCreateBtn:Landroid/widget/ImageButton;

.field private mCreateEventBtn:Landroid/widget/ImageButton;

.field private mCreateEventText:Landroid/widget/TextView;

.field private mCreateLiveEventBtn:Landroid/widget/ImageButton;

.field private mCreateLiveEventText:Landroid/widget/TextView;

.field private mCreatedChannelId:I

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentTopSetPath:Ljava/lang/String;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

.field private final mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEnableActionBarMenu:Z

.field private mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

.field private mEventSharingServiceOnCoreApps:Z

.field private mFirstMediaCheck:Z

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private final mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

.field private mIsDualLaunchFromDetail:Z

.field private mIsEventSharingServiceOn:Z

.field private mIsFirstLoadingFinished:Z

.field private mIsFromNoItemView:Z

.field private mIsMaxSharedGroup:Z

.field private mIsResumed:Z

.field private mIsStartPhotoViewNewEvent:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private mNeedCreateEventBtnListener:Z

.field private volatile mNeedIdleProcess:Z

.field private mPreviousTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

.field private mRefreshUpdateCount:I

.field private mRootGroup:Landroid/view/ViewGroup;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;

.field private final mUseCreateEventFloatingButton:Z

.field private final mUseEventShare:Z

.field private final mUseLiveEvent:Z

.field private final mUseRestoreEventFromServer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventNotificationView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->USE_EVENT_NOTIFICATION:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->DisableSearchView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_DISABLE_SEARCHVIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_CMH:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DEVICE_COG:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDreamChannelViewGUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DREAM_CHANNEL_VIEW_GUI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLowStorageMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FeatureLowStorageMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLiveEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseLiveEvent:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseEventShare:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateEventFloatingButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseCreateEventFloatingButton:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRestoreEventFromServer:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseRestoreEventFromServer:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFromNoItemView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsMaxSharedGroup:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedCreateEventBtnListener:Z

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedIdleProcess:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEnableActionBarMenu:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreatedChannelId:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsStartPhotoViewNewEvent:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEventSharingServiceOnCoreApps:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsEventSharingServiceOn:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;

    const-string/jumbo v1, "CHANNEL_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$2;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$3;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$41;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$41;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$42;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->restoreEventFromServer()V

    return-void
.end method

.method static synthetic access$10000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I

    return p1
.end method

.method static synthetic access$10200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$10400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailView(II)V

    return-void
.end method

.method static synthetic access$10600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    return v0
.end method

.method static synthetic access$10700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$108(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRefreshUpdateCount:I

    return v0
.end method

.method static synthetic access$10800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->addMemberToGuidGroup()V

    return-void
.end method

.method static synthetic access$11000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startNotificationViewMode()V

    return-void
.end method

.method static synthetic access$11200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$11400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$11600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setAddEventButton(Z)V

    return-void
.end method

.method static synthetic access$11800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I

    return v0
.end method

.method static synthetic access$11900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->createSharedStoryDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateEventShareStatus()V

    return-void
.end method

.method static synthetic access$12000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getCoverBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12600()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->USE_EVENT_NOTIFICATION:Z

    return v0
.end method

.method static synthetic access$12700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$12800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelAlbumMgr:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$13800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;)V

    return-void
.end method

.method static synthetic access$13900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailView(IIZ)V

    return-void
.end method

.method static synthetic access$14400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$14500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$14502(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$14600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseEventShare:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$15200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseLiveEvent:Z

    return v0
.end method

.method static synthetic access$15500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleNewEventAlbum(I)V

    return-void
.end method

.method static synthetic access$15600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setCreateEventVisibleMode(Z)V

    return-void
.end method

.method static synthetic access$15800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedCreateEventBtnListener:Z

    return v0
.end method

.method static synthetic access$15802(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedCreateEventBtnListener:Z

    return p1
.end method

.method static synthetic access$15900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setCreateEventListener()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$16000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleLiveChannelAlbum()V

    return-void
.end method

.method static synthetic access$16100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->removeEventShareIcon(I)V

    return-void
.end method

.method static synthetic access$16200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$16500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$16900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$17300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$17800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$17900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$18100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$18300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsStartPhotoViewNewEvent:Z

    return p1
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DREAM_CHANNEL_VIEW_GUI:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEventSharingServiceOnCoreApps:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;II)Ljava/lang/Boolean;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoViewFromClick(II)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActionbarBackground()V

    return-void
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFirstLoadingFinished:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFirstLoadingFinished:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsResumed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActionBarMenuColor(Z)V

    return-void
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFromNoItemView:Z

    return v0
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->refreshDualScreenFocus()V

    return-void
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsDualLaunchFromDetail:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsDualLaunchFromDetail:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(I)V

    return-void
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsEventSharingServiceOn:Z

    return v0
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$702(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsEventSharingServiceOn:Z

    return p1
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkToRestoreEventShareInvitePush()V

    return-void
.end method

.method static synthetic access$9000(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9100(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9600(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9800(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$33;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addMemberToGuidGroup()V
    .locals 5

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseRestoreEventFromServer:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "add_member_to_guid_group"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/remote/scloud/SCloudRefer;->isSCloudContentSyncOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->getGuidFromSAClient(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private checkExactName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$24;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$24;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkNameUsingPattern(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;)Z

    move-result v0

    return v0
.end method

.method private checkMediaAvailability()V
    .locals 7

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getAllCount()I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkMediaItemExists(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v5, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoMediaItem:Z

    iget v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreatedChannelId:I

    if-lez v3, :cond_3

    if-nez v0, :cond_2

    const-string/jumbo v3, "ChannelViewState"

    const-string/jumbo v4, "CreatedChannel no action!"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, -0x1

    iput v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreatedChannelId:I

    :cond_3
    if-gtz v0, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ChannelViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "MIMETYPE : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->exitSelectionMode()V

    :cond_4
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startNoItemViewState(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMenu:Landroid/view/Menu;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    :cond_5
    :goto_2
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mFirstMediaCheck:Z

    goto :goto_1

    :cond_6
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mFirstMediaCheck:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v5, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_7
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItem()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateActionBarFromNoItemViewMode()V

    goto :goto_2

    :cond_8
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    if-eqz v3, :cond_5

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItem()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateActionBarFromNoItemViewMode()V

    goto :goto_2
.end method

.method private checkNameAfterDeleteSpace(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$23;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$23;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkNameUsingPattern(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;)Z

    move-result v0

    return v0
.end method

.method private checkNameUsingPattern(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$22;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$22;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkNameUsingPattern(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;)Z

    move-result v0

    return v0
.end method

.method private checkNameUsingPattern(Ljava/lang/String;Ljava/lang/String;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;)Z
    .locals 4

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, p1, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComparatorName;->compareName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p2, v2, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoViewUsingName(Ljava/lang/String;ILcom/sec/android/gallery3d/data/ChannelAlbum;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkSharedParam(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "shared"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkToNeedEventSharePermissions()V
    .locals 5

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "channel_needto_show_pregrant_popup"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "channel_needto_show_pregrant_popup"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsWifiOnlyModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a033c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->REQUIRED_PERMISSION_ON_ENTERING_EVENTVIEW:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->showPermissionRequestDialog([Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "ESUJ"

    const-string/jumbo v4, "ESU_JOIN"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "ESUJ"

    const-string/jumbo v4, "NOT_ESU_JOIN"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private checkToRestoreEventShareInvitePush()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "need_to_restore_invite_push"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ChannelViewState"

    const-string/jumbo v1, "Need to restore invite push "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "RESTORE_EVENT_SHARE_INVITE_PUSH"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$40;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$40;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private createSharedStoryDialog()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a0433

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a04cc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a00df

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$28;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$28;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0a0348

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$29;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$29;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private drawAddEventButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040040

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200a9

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200ab

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200aa

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200ac

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200ad

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateLiveEventText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->initializeCreateEventButtonView()V

    return-void
.end method

.method private enableActionbarOptions(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setNaviSpinnerEnable()V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEnableActionBarMenu:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setNaviSpinnerDisable()V

    goto :goto_0
.end method

.method private enterSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$25;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$25;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setEAM(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    return-void
.end method

.method private exitSelectionMode()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$26;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$26;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setEAM(Z)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void
.end method

.method private finishCurrentViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mPreviousTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getCoverBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, p1

    goto :goto_0
.end method

.method private handleDCSelectItem(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "StoryDetailView"

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p5, :cond_1

    invoke-direct {p0, p5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbumWithOrdinal(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1, p4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbumWithStoryName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2, p4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbumWithSelectOrderAndCount(IILjava/lang/String;)V

    goto :goto_0
.end method

.method private handleDCSharedSelectAll()V
    .locals 8

    const/4 v7, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0790

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "StoryListSelectedView"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a07e4

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "StoryListSelectedView"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_1
.end method

.method private handleDCStartChannelDetailView(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "StoryDetailView"

    invoke-static {v0, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestCommonErrorNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p4, :cond_1

    invoke-direct {p0, p4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCStartChannelDetailWithOrdinal(I)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isValidParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCStartChannelDetailWithStoryName(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isLatest(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCStartLatestChannelDetailWithSharedType(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCStartOldestChannelDetailWithSharedType(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDCStartChannelDetailWithOrdinal(I)V
    .locals 9

    const/4 v8, 0x0

    new-instance v2, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v2}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v6, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v6, v2, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v5

    iget v6, v2, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v6}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    sub-int v6, v1, v5

    add-int/lit8 v6, v6, 0x1

    if-le p1, v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "StoryDetailView"

    invoke-static {v6, v7}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v6, -0x1

    if-ne p1, v6, :cond_1

    move v4, v1

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v6, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v0, :cond_2

    invoke-direct {p0, v4, v8}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    goto :goto_0

    :cond_1
    add-int v6, v5, p1

    add-int/lit8 v4, v6, -0x1

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0795

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "StoryDetailView"

    sget-object v8, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v6, v7, v8, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0
.end method

.method private handleDCStartChannelDetailWithStoryName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkExactName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkNameAfterDeleteSpace(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkNameUsingPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0796

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "StorySelectType"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "StoryDetailView"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "StoryDetailView"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0
.end method

.method private handleDCStartLatestChannelDetailWithSharedType(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkSharedParam(Ljava/lang/String;)Z

    move-result v2

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v3

    if-eqz v0, :cond_0

    if-ne v2, v3, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->makeFailedNlgOfLaunchChannelPhotoView()V

    goto :goto_1
.end method

.method private handleDCStartOldestChannelDetailWithSharedType(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkSharedParam(Ljava/lang/String;)Z

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v3

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    if-ne v2, v3, :cond_0

    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->makeFailedNlgOfLaunchChannelPhotoView()V

    goto :goto_1
.end method

.method private handleFilterByOperation(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "is_filter_by_shared_story"

    const-string/jumbo v0, "shared stories"

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->CMH_STORY_TABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string/jumbo v0, "200"

    const-string/jumbo v1, "3004"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "FilterBy"

    sget-object v2, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleLiveChannelAlbum()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "max_channel_member"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v1, v5

    add-int/lit8 v2, v0, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "START_MULTI_CONTACT_PICK"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->onEventSharingService(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private handleNewEventAlbum(I)V
    .locals 9

    const/4 v8, 0x1

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "*/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v4, "pick-from-gallery"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget-boolean v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v4, :cond_1

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v4}, Lcom/sec/samsung/gallery/core/TabTagType;->from(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v4

    if-ne p1, v4, :cond_4

    const-string/jumbo v4, "dc_pick_from_gallery_time"

    :goto_1
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "dc_ignore_done"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const/16 v0, 0x1f4

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseEventShare:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "max_channel_files"

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "is_pick-limited-file-size"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "max_file_size"

    const-wide/16 v6, 0x78

    invoke-static {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "pick-limited-file-size"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    const-string/jumbo v4, "pick-max-item"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "is-pick-to-add-channel-view"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v5, 0x701

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_3
    const-string/jumbo v4, "android.intent.action.MULTIPLE_PICK"

    goto :goto_0

    :cond_4
    const-string/jumbo v4, "dc_pick_from_gallery_album"

    goto :goto_1
.end method

.method private handleRenamePopup(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0791

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "RenamePopUp"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6, v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaObject;

    :cond_1
    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    aput-object v0, v2, v5

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "StoryListView"

    aput-object v5, v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "RENAME_DC_OPERATION"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleSelectStoryUsingName(Ljava/lang/String;ZILcom/sec/android/gallery3d/data/MediaSet;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkSharedParam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p4}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    const/4 p2, 0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    invoke-direct {p0, p3, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    const/4 p2, 0x1

    goto :goto_0
.end method

.method private initializeCreateEventButtonView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$34;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$34;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$35;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$36;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$37;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$37;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$38;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$38;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isSimAbsent(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lcom/sec/android/gallery3d/ds/SimInformation;->useMultiSIM()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/sec/android/gallery3d/ds/SimInformation;->getSimState(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private makeFailedNlgOfLaunchChannelPhotoView()V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0795

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "StoryDetailView"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private refreshDualScreenFocus()V
    .locals 4

    const/4 v0, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    sget-object v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :cond_2
    return-void
.end method

.method private registerHighlightVideoReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.gallery.notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private removeEventShareIcon(I)V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    if-ne v3, p1, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v3, v1, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->updateEventShareIcon(IZI)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private restoreEventFromServer()V
    .locals 5

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseRestoreEventFromServer:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "restore_from_server"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v1, :cond_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->restoreEventFromServer(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$31;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$31;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAlbum(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    return-void
.end method

.method private selectAlbum(IZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a040f

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v7, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v8, v4}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v1, v7}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a040e

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private selectAlbumOperationForBixby(II)Z
    .locals 2

    const/4 v1, 0x1

    move v0, p1

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private selectAlbumWithOrdinal(I)V
    .locals 7

    new-instance v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getVisibleInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget v4, v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleStart:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v3

    iget v4, v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;->mVisibleEnd:I

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    sub-int v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    if-le p1, v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "StoryListSelectedView"

    invoke-static {v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->requestOrdinalFailNlg(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v4, -0x1

    if-ne p1, v4, :cond_1

    move v2, v0

    :goto_1
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "StoryListSelectedView"

    sget-object v6, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v4, v5, v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    goto :goto_0

    :cond_1
    add-int v4, v3, p1

    add-int/lit8 v2, v4, -0x1

    goto :goto_1
.end method

.method private selectAlbumWithSelectOrderAndCount(IILjava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkSharedParam(Ljava/lang/String;)Z

    move-result v2

    if-gt v0, p2, :cond_0

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAll()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "StoryListSelectedView"

    sget-object v5, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;)V

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    const-string/jumbo v4, "StoryListSelectedView"

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v4, v0, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectSharedAlbumOperationForBixby(III)Z

    move-result v1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v4, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbumOperationForBixby(II)Z

    move-result v1

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_2

    invoke-direct {p0, v0, v4, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectSharedAlbumOperationForBixby(III)Z

    move-result v1

    goto :goto_1

    :cond_2
    sub-int v3, v0, p2

    invoke-direct {p0, v3, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbumOperationForBixby(II)Z

    move-result v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private selectAlbumWithStoryName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v5, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    if-nez v4, :cond_1

    const-string/jumbo v5, "ChannelViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mediaSet is null, i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleSelectStoryUsingName(Ljava/lang/String;ZILcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    goto :goto_1

    :cond_2
    invoke-static {p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->compareStoryName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleSelectStoryUsingName(Ljava/lang/String;ZILcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {p1, v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->checkStoryNameUsingPattern(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0, p2, v2, v3, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleSelectStoryUsingName(Ljava/lang/String;ZILcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    const-string/jumbo v6, "StoryListSelectedView"

    invoke-virtual {v5, v6, v2, p1}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method private selectAll()V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAllPostProcess()V

    goto :goto_0
.end method

.method private selectAllPostProcess()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;)V
    .locals 10

    const-wide/16 v8, 0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2, v8, v9, v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;->increaseProgress(JZ)V

    invoke-virtual {p2, v8, v9, v6}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_2
    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method private selectSharedAlbumOperationForBixby(III)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-ge p1, p2, :cond_2

    move v2, p1

    :goto_0
    if-ge v2, p2, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    check-cast v4, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    if-ne p3, v1, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAlbum(IZ)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, p1, -0x1

    :goto_2
    if-lt v2, p2, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->isShared()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    if-eq p3, v1, :cond_0

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    return v0
.end method

.method private setActionBarMenuColor(Z)V
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "action_bar"

    const-string/jumbo v9, "id"

    const-string/jumbo v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0266

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/TextView;

    if-nez v6, :cond_0

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    :cond_1
    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100017

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    :goto_0
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_4

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100201

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    goto :goto_0

    :cond_4
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1
.end method

.method private setActionbarBackground()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarBackgroundRscID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setActivityTitle()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0441

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setAddEventButton(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCreateEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$39;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$39;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCreateEventVisibleMode(Z)V
    .locals 9

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10005f

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActionbarBackground()V

    if-nez p1, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->enableActionbarOptions(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    move v3, v5

    :goto_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    move v3, v5

    :goto_4
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateLiveEventText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    :goto_5
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001b

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f050018

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001a

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10005e

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_3

    :cond_4
    move v3, v6

    goto :goto_4

    :cond_5
    move v5, v6

    goto :goto_5

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001c

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f050017

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f050019

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_6
.end method

.method private setEAM(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private setLaunchMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedMediaSetMap()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaObject;

    instance-of v5, v3, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v5, :cond_0

    move-object v0, v3

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v7, v7, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZZZ)V

    return-void
.end method

.method private showFilterByDialog()V
    .locals 3

    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "SHOW_FILTER_BY_DIALOG"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x6e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startChannelPhotoView(IZ)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreatedChannelId:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;

    invoke-direct {v2, p0, p2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$27;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Z)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private startChannelPhotoViewFromClick(II)Ljava/lang/Boolean;
    .locals 10

    const/4 v9, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "3001"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-nez v0, :cond_0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsStartPhotoViewNewEvent:Z

    if-eqz v4, :cond_1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getUGCI()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "max_channel_number"

    const/16 v6, 0xc8

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->getSharedChannelCount(Landroid/content/Context;)I

    move-result v4

    if-lt v4, v3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0018

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a0017

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->startSharingEvent(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, -0x2

    if-ne p2, v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareAgentHelper;->getMyDuid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v1, v2, v6}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->deleteMember(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4, v2}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->deleteChannelContact(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    goto :goto_1
.end method

.method private startChannelPhotoViewUsingName(Ljava/lang/String;ILcom/sec/android/gallery3d/data/ChannelAlbum;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkSharedParam(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->isShared()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startChannelPhotoView(IZ)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private startDetailView(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailView(IIZ)V

    return-void
.end method

.method private startDetailView(IIZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    if-gt v3, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, p2, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "KEY_IS_FROM_EVENTVIEW"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v3, v4, v0, p3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$32;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNearbyDeviceView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startNoItemViewState(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->cancelDeleteAnimation()V

    :cond_0
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v4, :cond_5

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "auto_create_event"

    const/4 v6, -0x1

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoMediaItem:Z

    if-eqz v4, :cond_4

    if-eqz v0, :cond_3

    move v2, v3

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iput v2, v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoEventType:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v4, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v4, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoMediaItem:Z

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setNoMediaItemStatus(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "KEY_MEDIA_SET_PATH"

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "KEY_NOITEMSVIEW_MIME_TYPE"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$30;

    invoke-direct {v4, p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$30;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Landroid/os/Bundle;)V

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private startNotificationViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$20;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$20;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTimeViewState()V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    return-void
.end method

.method private unregisterHighlightVideoReceiver()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mHighlightVideoNotiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ChannelViewState"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unselectAll()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v2, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateCountOnActionBar()V
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getAllCount()I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private updateEventShareStatus()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOnCoreApps(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEventSharingServiceOnCoreApps:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEventSharingServiceOnCoreApps:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "sharing_service_on"

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const-string/jumbo v0, "ChannelViewState"

    const-string/jumbo v1, "Need to sync "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->isSimAbsent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "CHECK_EVENT_SHARE_STATUS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public checkAndStopSharing()V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaList()Ljava/util/LinkedList;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    if-eqz v5, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/ChannelAlbum;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/ChannelAlbum;->getBucketId()I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareDataManager;->getStateAndRunningStateWithId(I)Lcom/sec/android/gallery3d/eventshare/EventShareData;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v5, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->stopSendingEvent(Landroid/content/Context;I)V

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v5, v1, Lcom/sec/android/gallery3d/eventshare/EventShareData;->request:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->stopUploading(Landroid/content/Context;I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkContentItems(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v0, "203"

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "202"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v0, "201"

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "200"

    goto :goto_0
.end method

.method public isTabEnabledActivityState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setEAM(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->exitSelectionMode()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseCreateEventFloatingButton:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setCreateEventVisibleMode(Z)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onContextItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "ChannelViewState onCreate Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "ChannelViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v3, :cond_0

    const-string/jumbo v3, "ChannelViewState"

    const-string/jumbo v4, "mActivity is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mFirstMediaCheck:Z

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFirstLoadingFinished:Z

    new-instance v3, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mPreviousTabTagType:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f1200d5

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootGroup:Landroid/view/ViewGroup;

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->initSpinner()V

    if-eqz p1, :cond_2

    const-string/jumbo v3, "KEY_IS_FROM_NOITEMVIEW"

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFromNoItemView:Z

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "start_dual_from_detail"

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsDualLaunchFromDetail:Z

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseEventShare:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KEY_IS_MAX_EVENT_GROUP"

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsMaxSharedGroup:Z

    :cond_2
    const-string/jumbo v3, "/channel/channelalbumset"

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DataLoaderConfig;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    const/4 v6, 0x5

    invoke-direct {v3, v4, v2, v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setEasyMode(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    new-instance v4, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$4;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsMaxSharedGroup:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "max_channel_number"

    const/16 v5, 0xc8

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a0016

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f0a0017

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->createDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {v1}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelAlbumMgr:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iput v9, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreatedChannelId:I

    if-eqz p1, :cond_4

    const-string/jumbo v3, "KEY_IS_FROM_NOITEMVIEW"

    invoke-virtual {p1, v3, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "KEY_IS_NEW_CHANNEL_ID"

    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreatedChannelId:I

    :cond_4
    new-instance v3, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->eventShareRequestSender:Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    sget-boolean v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v3, :cond_5

    new-instance v3, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ChannelViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v3, Lcom/samsung/android/devicecog/gallery/touchevent/ChannelViewStateDCTouchEvent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/samsung/android/devicecog/gallery/touchevent/ChannelViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_5
    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "ChannelViewState onCreate End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    goto/16 :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDirty()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetNavigationBarPosition(Z)V

    :cond_0
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
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f12028b

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 11

    const/4 v10, 0x0

    const/4 v6, -0x1

    const/4 v9, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v5, "ChannelViewState onPause Start"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsResumed:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedCreateEventBtnListener:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v1

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-nez v1, :cond_b

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->onPause(Z)V

    :cond_1
    iput-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDisengageMode()Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->detach()V

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setDisengageMode(Z)V

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_3
    iput v4, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mShrinkOption:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "CHANNEL_VIEW"

    invoke-virtual {v2, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionFocus(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setGenericMotionTitleFocus(I)V

    :cond_4
    sget-boolean v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DREAM_CHANNEL_VIEW_GUI:Z

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->unregisterHighlightVideoReceiver()V

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v5, 0x7f1000ab

    invoke-static {v2, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v5, v0, v3

    aget v6, v0, v9

    const/4 v7, 0x3

    aget v7, v0, v7

    aget v8, v0, v4

    invoke-virtual {v2, v5, v6, v7, v8}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseCreateEventFloatingButton:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->enableActionbarOptions(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActionbarBackground()V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v10, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

    :cond_9
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseEventShare:Z

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setEAM(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a0051

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(I)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onPause()V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "ChannelViewState onPause End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_b
    move v2, v4

    goto/16 :goto_0

    :cond_c
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItemVI()V

    goto/16 :goto_1
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 6

    const v5, 0x7f12028b

    const v4, 0x7f12027a

    const/4 v1, 0x1

    const v3, 0x7f12029a

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEnableActionBarMenu:Z

    if-nez v0, :cond_0

    const v0, 0x7f12007c

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f120275

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v5, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12028d

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSCloudOnly:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsNoItemViewMode:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_CMH:Z

    if-eqz v0, :cond_1

    const v0, 0x7f12029c

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12029c

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDCM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_DISABLE_SEARCHVIEW:Z

    if-nez v0, :cond_4

    invoke-static {p1, v5, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :goto_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mNoMediaItem:Z

    if-nez v0, :cond_3

    invoke-static {p1, v4, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateEventFloatingButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void

    :cond_4
    invoke-static {p1, v5, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v3, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    invoke-static {p1, v4}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    if-nez v0, :cond_6

    const v0, 0x7f12029c

    invoke-static {p1, v0}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->isMenuItemVisible(Landroid/view/Menu;I)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemShowAsAction(Landroid/view/Menu;II)V

    :cond_7
    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FeatureLowStorageMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "is_low_storage"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemEnabled(Landroid/view/Menu;IZ)V

    goto :goto_1

    :cond_8
    invoke-static {p1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/TabActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startTimeViewState()V

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 13

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "ChannelViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->checkToNeedEventSharePermissions()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNeedIdleProcess:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mIsResumed:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setEasyMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setEAM(Z)V

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelView;->getThumbSizeType(I)I

    move-result v12

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v0, v12}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setLaunchMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    or-int/lit8 v4, v4, 0x40

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v8

    const/4 v0, -0x1

    if-ne v8, v0, :cond_4

    const/4 v6, 0x0

    const-string/jumbo v0, "ChannelViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", itemIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mAlbumIndex:I

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v8

    :cond_4
    iget v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mShrinkOption:I

    or-int/2addr v4, v0

    :goto_1
    if-ltz v8, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setFirstIndex(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->setFirstLoadingCount(I)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mState:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    :cond_7
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_14

    const v0, 0x7f1000ab

    :goto_3
    invoke-static {v1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v7

    if-eqz v7, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v1, 0x1

    aget v1, v7, v1

    const/4 v2, 0x2

    aget v2, v7, v2

    const/4 v3, 0x3

    aget v3, v7, v3

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_9
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mUseCreateEventFloatingButton:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->drawAddEventButton()V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$21;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$21;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_b
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onResume()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "channel_new_exist_count"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_c
    new-instance v11, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.sec.android.gallery3d.eventshare.STATE_NOTIFIY"

    invoke-direct {v11, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.category.DEFAULT"

    invoke-virtual {v11, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDownloadStateReceiver:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$DownloadStateReceiver;

    invoke-virtual {v0, v1, v11}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setActivityTitle()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_DREAM_CHANNEL_VIEW_GUI:Z

    if-eqz v0, :cond_d

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->registerHighlightVideoReceiver()V

    :cond_d
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->refreshEventBadge()V

    :cond_e
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v9

    const/4 v0, 0x1

    iput v0, v9, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v9, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_10
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "ChannelViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iget v8, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto/16 :goto_1

    :cond_13
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v10

    check-cast v10, Lcom/sec/android/gallery3d/app/TabStateManager;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;

    iget v1, v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$ComposeViewConfig;->mTabPos:I

    invoke-virtual {v10, p0, v0, v1}, Lcom/sec/android/gallery3d/app/TabStateManager;->setTabState(Lcom/sec/android/gallery3d/app/TabActivityState;Landroid/os/Bundle;I)V

    goto/16 :goto_2

    :cond_14
    const v0, 0x7f1000e0

    goto/16 :goto_3
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 14

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_0

    :try_start_0
    sget-object v11, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v11}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string/jumbo v2, "union_selectedItems"

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    const/4 v12, 0x0

    invoke-virtual {v3, v9, v12}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v12

    invoke-virtual {v3, v12}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string/jumbo v11, "ChannelViewState"

    invoke-virtual {v1}, Landroid/os/BadParcelableException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    const-string/jumbo v2, "selectedItems"

    goto :goto_1

    :cond_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    const-string/jumbo v12, "dc_param_value"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    const-string/jumbo v11, "no_param_value"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v11

    invoke-static {v11}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v13

    invoke-virtual {v11, v12, v13, v6}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareDCCreateChannel(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v11, "newAlbumName"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelAlbumMgr:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11, v12, v7, v4}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateChannelDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :sswitch_1
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v12, v5, v11

    const/4 v11, 0x1

    aput-object p3, v5, v11

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v12, "START_ALBUM_OPERATIONS"

    invoke-virtual {v11, v12, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_2
    const/4 v11, -0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_0

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    const-string/jumbo v13, "result"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelAlbumMgr:Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v13, 0x1

    invoke-virtual {v11, v12, v8, v13}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateLiveChannelDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x701 -> :sswitch_0
        0xc00 -> :sswitch_1
        0xe00 -> :sswitch_2
        0xe01 -> :sswitch_2
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const-string/jumbo v1, "ChannelViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialzieView = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$5;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$6;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$7;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$8;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$9;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$9;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$10;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$11;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$11;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$12;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$13;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$14;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchStateListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$15;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$16;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$17;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$17;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$18;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$18;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setEmptySpaceClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView$EmptySpaceClickListener;)V

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState$19;-><init>(Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView;->setDesktopModeStoryAlbumClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeChannelView$DesktopModeStoryAlbumClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->setEAM(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sput-object v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v2, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 26

    move-object/from16 v13, p2

    check-cast v13, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v14

    const-string/jumbo v4, "ChannelViewState"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Event update ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-ne v14, v4, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v14, v4, :cond_2

    const-string/jumbo v4, "201"

    const-string/jumbo v22, "1030"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAll()V

    goto :goto_0

    :cond_2
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v14, v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->unselectAll()V

    goto :goto_0

    :cond_3
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_EVENT_ALBUM:I

    if-ne v14, v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v22, "3003"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleNewEventAlbum(I)V

    goto :goto_0

    :cond_4
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_CAMERA_MODE:I

    if-ne v14, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v22, "START_CAMERA"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-ne v14, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/16 v22, 0x5

    move/from16 v0, v22

    iput v0, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mChannelSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeChannelSetAdapter;->getCount()I

    move-result v4

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->selectAll()V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_7
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v14, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v22

    const/16 v23, 0x7

    invoke-virtual/range {v22 .. v23}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x7

    const/16 v25, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_SCAN_NEARBY_DEVICES:I

    if-ne v14, v4, :cond_a

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->scanForNearbyProviderDevices(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v12

    const-string/jumbo v4, "ChannelViewState"

    const-string/jumbo v22, "NullPointer Exception, maybe nearby device is not initiated yet"

    move-object/from16 v0, v22

    invoke-static {v4, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    if-ne v14, v4, :cond_d

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getIsSlideAnim()Z

    move-result v4

    if-nez v4, :cond_0

    :cond_b
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v22, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v22, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v4, v0, v1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_d
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_DEVICE_VIEW:I

    if-ne v14, v4, :cond_e

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->startNearbyDeviceView()V

    goto/16 :goto_0

    :cond_e
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_CONTACT_US:I

    if-ne v14, v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactUs()V

    goto/16 :goto_0

    :cond_f
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_CHANNELPHOTOVIEW:I

    if-ne v14, v4, :cond_11

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->isUseOrdinal()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v9

    const/4 v4, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v4, v1, v2, v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCStartChannelDetailView(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getStoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSharedType()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8, v4}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCStartChannelDetailView(Ljava/lang/String;ILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_11
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    if-ne v14, v4, :cond_12

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getStoryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectCount()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSelectOrderType()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getSharedType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;->getOrdinal()I

    move-result v9

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCSelectItem(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_12
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHOW_RENAME_POPUP:I

    if-ne v14, v4, :cond_13

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleRenamePopup(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    if-ne v14, v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/16 v22, 0x7

    move/from16 v0, v22

    iput v0, v4, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->enterSelectionMode()V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_14
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_FILTER_BY:I

    if-ne v14, v4, :cond_15

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->showFilterByDialog()V

    goto/16 :goto_0

    :cond_15
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SWITCH_TAB:I

    if-ne v14, v4, :cond_16

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v4

    check-cast v4, Lcom/sec/samsung/gallery/drawer/GalleryTab;

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/drawer/GalleryTab;->handleDCSwitchTab(I)V

    goto/16 :goto_0

    :cond_16
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_PICKER:I

    if-ne v14, v4, :cond_17

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleNewEventAlbum(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v22, "3003"

    move-object/from16 v0, v22

    invoke-static {v4, v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_17
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_NOTIFICATION:I

    if-ne v14, v4, :cond_18

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "tabname"

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    const-class v22, Lcom/sec/samsung/gallery/view/gallerynotificationview/GalleryNotificationState;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v11}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_18
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_FILTER_BY:I

    if-ne v14, v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v4}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->checkSharedAlbumExist(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleFilterByOperation(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v22, 0x7f0a07e9

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    move/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v22, "FilterBy"

    sget-object v23, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->FAILURE:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-static {v4, v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    goto/16 :goto_0

    :cond_1a
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    if-ne v14, v4, :cond_1b

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1b
    sget v4, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_SHARED_STORY_ALL:I

    if-ne v14, v4, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->handleDCSharedSelectAll()V

    goto/16 :goto_0
.end method

.method protected updateActionBarFromNoItemViewMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->updateCountOnActionBar()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/channelview/ChannelActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method protected updateDualScreenFocus(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    sput-object v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;->refreshDualScreenFocus()V

    :cond_0
    return-void
.end method
