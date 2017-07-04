.class public Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "NoItemViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataMtpLoaderConfig;,
        Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NoItemViewState"

.field private static final USE_MULTIWINDOW:Z


# instance fields
.field private mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field private mAddEventButtonView:Landroid/view/View;

.field private mCreateBtn:Landroid/widget/ImageButton;

.field private mCreateEventBtn:Landroid/widget/ImageButton;

.field private mCreateEventText:Landroid/widget/TextView;

.field private mCreateLiveEventBtn:Landroid/widget/ImageButton;

.field private mCreateLiveEventText:Landroid/widget/TextView;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

.field private mEnableActionBarMenu:Z

.field private mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsAlbumPick:Z

.field private mIsFullScreen:Z

.field private mIsMtpMode:Z

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private mNeedCreateEventBtnListener:Z

.field private mNeedIdleProcess:Z

.field private mNeedSpinnerRequestFocus:Z

.field private mNeedsCrop:Z

.field private mNoItemActionBarForNormal:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

.field private final mNoItemViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mRootGroup:Landroid/view/ViewGroup;

.field private mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

.field private mTopSetPath:Ljava/lang/String;

.field private final mUseCreateEventFloatingButton:Z

.field private final mUseLiveEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMultiWindow:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->USE_MULTIWINDOW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsAlbumPick:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedsCrop:Z

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedIdleProcess:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedSpinnerRequestFocus:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLiveEvent:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseLiveEvent:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedCreateEventBtnListener:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnableActionBarMenu:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCreateEventFloatingButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseCreateEventFloatingButton:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsFullScreen:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;

    const-string/jumbo v1, "NO_ITEM_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$1;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNoItemViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$2;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$7;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleFilter()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedsCrop:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedsCrop:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->shouldStartPreviousViewState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startPreviousViewState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startTimeViewState()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->finishCurrentViewState()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/ui/EmptySetDrawer;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNoItemActionBarForNormal:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startDetailView(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseLiveEvent:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleNewEventAlbum()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setCreateEventVisibleMode(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedCreateEventBtnListener:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedCreateEventBtnListener:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setCreateEventListener()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleLiveChannelAlbum()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startNearbyViewState(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)Ljava/lang/Class;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private cancelSwitchFilterTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    :cond_0
    return-void
.end method

.method private createAdapter(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->needMediaSetAdapter(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataAlbumLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "mtp"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataMtpLoaderConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$DataMtpLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;

    invoke-direct {v3}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;-><init>()V

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    goto :goto_0
.end method

.method private drawAddEventButton()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040040

    const/4 v0, 0x0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200a9

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200ab

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200aa

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200ac

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200ad

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateLiveEventText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->initializeCreateEventButtonView()V

    return-void
.end method

.method private enableActionbarOptions(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setNaviSpinnerEnable()V

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnableActionBarMenu:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setNaviSpinnerDisable()V

    goto :goto_0
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getCurrentTopSetPath(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_0
    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const-string/jumbo v3, "nearby"

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    :try_start_0
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    const-string/jumbo v3, "NoItemViewState"

    const-string/jumbo v4, "NullPointerException at nearbySource.getNearbyContext().getNearbyClient()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getPreviousViewState()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/sec/android/gallery3d/app/ActivityState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getTopFilterMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, p1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    return-object v3
.end method

.method private handleFilter()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->cancelSwitchFilterTask()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v0

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$6;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getTopFilterMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private handleLiveChannelAlbum()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->isEventSharingServiceOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v3, "max_channel_member"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "START_MULTI_CONTACT_PICK"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, v6}, Lcom/sec/android/gallery3d/eventshare/agent/EventShareSetting;->onEventSharingService(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private handleNewEventAlbum()V
    .locals 9

    const/4 v8, 0x1

    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v5, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "*/*"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v4, "pick-from-gallery"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v0, 0x1f4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseEventShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "max_channel_files"

    const/16 v6, 0x1f4

    invoke-static {v4, v5, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v4, "is_pick-limited-file-size"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "max_file_size"

    const-wide/16 v6, 0x78

    invoke-static {v4, v5, v6, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadLongKey(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    const-string/jumbo v4, "pick-limited-file-size"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    const-string/jumbo v4, "pick-max-item"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "is-pick-to-add-channel-view"

    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v5, 0x701

    invoke-virtual {v4, v1, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    const-string/jumbo v4, "android.intent.action.MULTIPLE_PICK"

    goto :goto_0
.end method

.method private handleResultCameraLaunchForSinglePick(Landroid/content/Intent;I)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v6, 0x902

    if-ne p2, v6, :cond_2

    const-string/jumbo v6, "uri-data"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v6, v5, v11}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v6, "NoItemViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cannot find file : path is null : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    new-array v2, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v6, v2, v8

    aput-object v11, v2, v9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "MULTIPLE_PICKER_SELECTION_COMPLETED"

    invoke-virtual {v6, v7, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-array v2, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v6, v2, v8

    aput-object v1, v2, v9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v6

    const-string/jumbo v7, "PICKER_ITEM_SELECTED"

    invoke-virtual {v6, v7, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private handleResultWallpaper(Landroid/content/Intent;I)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->finishActivityForWallpaper(Landroid/content/Intent;I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, -0x1

    if-ne p2, v3, :cond_0

    :goto_0
    invoke-virtual {v2, p2, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v3, v0, v2

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "PICKER_ITEM_SELECTED"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private initNaviSpinner()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpMode"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpDeviceName"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0, v4}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->initSpinner(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->initSpinner()V

    goto :goto_0
.end method

.method private initializeCreateEventButtonView()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$9;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$10;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$11;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$12;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$13;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isAvailableEAM()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleAlbumMode()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "single-album"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private needMediaSetAdapter(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "/allinone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "favorites"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "/nearby"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "mtp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setActionbarBackground(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f100014

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const-string/jumbo v1, "#ff7d7d7d"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setCreateEventListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$14;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setCreateEventVisibleMode(Z)V
    .locals 9

    const/4 v4, 0x1

    const/4 v6, 0x4

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10005f

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    if-nez p1, :cond_1

    move v3, v4

    :goto_1
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setActionbarBackground(Z)V

    if-nez p1, :cond_2

    move v3, v4

    :goto_2
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->enableActionbarOptions(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->setClickable(Z)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    move v3, v5

    :goto_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4

    move v3, v5

    :goto_4
    invoke-virtual {v7, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventText:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    move v3, v5

    :goto_5
    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateLiveEventText:Landroid/widget/TextView;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001b

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f050018

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001a

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    :goto_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateLiveEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10005e

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v5

    goto :goto_2

    :cond_3
    move v3, v6

    goto :goto_3

    :cond_4
    move v3, v6

    goto :goto_4

    :cond_5
    move v3, v6

    goto :goto_5

    :cond_6
    move v5, v6

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f05001c

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f050017

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f050019

    invoke-static {v3, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_7
.end method

.method private setModelListener()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    return-void
.end method

.method private shouldStartPreviousViewState()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->isFestivalMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-gtz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-gtz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startChannelViewMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "START_CHANNEL_VIEW_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startDetailView(Z)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v1, v2, v0, p1}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private startDetailViewInUIThread(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$8;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Z)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNearbyDeviceView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-void
.end method

.method private startNearbyViewState(Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$5;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startPreviousViewState()V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-class v2, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eq v1, v2, :cond_0

    const-class v2, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-class v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    const-string/jumbo v3, "UPDATE_SPINNER_EXPANSION_GROUP"

    invoke-virtual {v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    :cond_1
    const-string/jumbo v2, "KEY_IS_FROM_NOITEMVIEW"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_2

    const-class v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-ne v1, v2, :cond_2

    const-string/jumbo v2, "KEY_IS_ENTER_MTP_PHOTO_VIEW"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_2
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsAlbumPick:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "album-pick"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string/jumbo v2, "KEY_MEDIA_SET_PATH"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$3;

    invoke-direct {v3, p0, v1, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$3;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    const-string/jumbo v2, "KEY_VIEW_REDRAW"

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private startTimeViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState$4;-><init>(Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateNaviSpinner()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpMode"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpDeviceName"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v2, v0, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onBackPressed()V
    .locals 2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseCreateEventFloatingButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setCreateEventVisibleMode(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const v3, 0x7f120285

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mMenu:Landroid/view/Menu;

    const/4 v2, 0x0

    invoke-static {v1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->setScreenSize(Landroid/graphics/Point;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isUpdateBackscreenInPauseState()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->setLayout()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mMenu:Landroid/view/Menu;

    const v2, 0x7f02024a

    invoke-static {v1, v3, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NoItemViewState onCreate Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v1, v0}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNoItemActionBarForNormal:Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    sput-boolean v2, Lcom/sec/android/gallery3d/data/LocalAlbumSet;->sbNeedFullLoading:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "mtpMode"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsMtpMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_CHANNEL:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-eq v0, v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->isSingleAlbumMode()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseSpinnerLayout:Z

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->initSpinner(Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNoItemViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    if-eqz p1, :cond_4

    const-string/jumbo v0, "album-pick"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsAlbumPick:Z

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1200d5

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->getCurrentTopSetPath(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->createAdapter(Ljava/lang/String;)V

    new-instance v0, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NoItemViewState onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->initNaviSpinner()V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NoItemViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "NO_ITEM_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NoItemViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    instance-of v1, v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onMWLayoutChanged()V
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-boolean v4, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->USE_MULTIWINDOW:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getMultiWindow()Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/gallery3d/app/IGalleryMultiWindow;->getMultiWindowActivity()Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/samsung/gallery/lib/libinterface/MultiWindowInterface;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    :goto_0
    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsFullScreen:Z

    if-nez v4, :cond_0

    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v0, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsFullScreen:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->setScreenSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isUpdateBackscreenInPauseState()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->setLayout()V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NoItemViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedCreateEventBtnListener:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeLayout()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseCreateEventFloatingButton:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mCreateEventBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->enableActionbarOptions(Z)V

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setActionbarBackground(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAddEventButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "NoItemViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedSpinnerRequestFocus:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedSpinnerRequestFocus:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->requestFocusToSpinnerTitle()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnableActionBarMenu:Z

    if-nez v0, :cond_1

    const v0, 0x7f12007c

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12028b

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    const v0, 0x7f12028d

    invoke-static {p1, v0, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_1
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_CAMERA"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startChannelViewMode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v5, "NoItemViewState onResume Start"

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->setModelListener()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->onResume()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v5, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->shouldStartPreviousViewState()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startPreviousViewState()V

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->refreshEventBadge()V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v2

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v2, v5, :cond_c

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v5, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v5, v6}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    sget-boolean v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->USE_MULTIWINDOW:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_e

    :cond_5
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mIsFullScreen:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->isForceResume()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isGalleryInForeground(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEmptySetDrawer:Lcom/sec/android/gallery3d/ui/EmptySetDrawer;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->setLayout()V

    :cond_7
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseSpinnerLayout:Z

    if-eqz v2, :cond_f

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->updateNaviSpinner()V

    :cond_8
    :goto_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->isAvailableEAM()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    :goto_3
    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    if-eq v2, v5, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v2

    const-class v5, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    if-ne v2, v5, :cond_a

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "channel_new_exist_count"

    invoke-static {v2, v5, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_a
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mRootGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseCreateEventFloatingButton:Z

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/channelview/ChannelViewState;

    if-ne v2, v3, :cond_b

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->drawAddEventButton()V

    :cond_b
    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->enableActionbarOptions(Z)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "NoItemViewState onResume End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    instance-of v2, v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    if-eqz v2, :cond_d

    const-string/jumbo v2, "NoItemViewState"

    const-string/jumbo v5, "setLaunchMode() called, ActivityResume situation and ActionBarView is NoItemActionBarForNormal. so skip."

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    new-instance v0, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mUseSpinnerLayout:Z

    invoke-direct {v0, v2, v5}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemActionBarForNormal;->setTopSetPath(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move v2, v3

    goto/16 :goto_1

    :cond_f
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto/16 :goto_2

    :cond_10
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto/16 :goto_3
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v8, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v7, "crop"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    move v7, v8

    :goto_0
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mNeedsCrop:Z

    :cond_0
    sparse-switch p1, :sswitch_data_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p3, p1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleResultCameraLaunchForSinglePick(Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0, p3, p2}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleResultWallpaper(Landroid/content/Intent;I)V

    goto :goto_1

    :sswitch_2
    if-eqz p3, :cond_1

    :try_start_0
    const-string/jumbo v7, "selectedItems"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string/jumbo v7, "NoItemViewState"

    invoke-virtual {v0}, Landroid/os/BadParcelableException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v8, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->prepareCreateEventDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :sswitch_3
    const/4 v7, -0x1

    if-ne p2, v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    const-string/jumbo v10, "result"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->getPhoneNumbersFromContacts(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/ChannelAlbumManager;

    move-result-object v7

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v9, v3, v8}, Lcom/sec/android/gallery3d/data/ChannelAlbumManager;->prepareCreateLiveChannelDialog(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x403 -> :sswitch_1
        0x701 -> :sswitch_2
        0x902 -> :sswitch_0
        0x903 -> :sswitch_0
        0xe00 -> :sswitch_3
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->isAvailableEAM()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public startExpandAction()V
    .locals 3

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startDetailViewInUIThread(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startDetailViewInUIThread(Z)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startDetailViewInUIThread(Z)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sput-object v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v2, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v2, "NoItemViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event update ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_EVENT_ALBUM:I

    if-ne v1, v2, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->handleNewEventAlbum()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    if-ne v1, v2, :cond_3

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    const-class v3, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v2, v3, v5}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_CONTACT_US:I

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactUs()V

    goto :goto_0

    :cond_4
    sget v2, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEARBY_DEVICE_VIEW:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/noitemview/NoItemViewState;->startNearbyDeviceView()V

    goto :goto_0
.end method
