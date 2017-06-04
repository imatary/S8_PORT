.class public Lcom/sec/samsung/gallery/view/allview/AllViewState;
.super Lcom/sec/android/gallery3d/app/TabActivityState;
.source "AllViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/data/ContentListener;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;,
        Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;,
        Lcom/sec/samsung/gallery/view/allview/AllViewState$SelectionTask;
    }
.end annotation


# static fields
.field private static final COLCNT_LEVEL_DEFAULT:I = 0x1

.field public static final KEY_IS_REFRESH:Ljava/lang/String; = "is_refresh"

.field private static final SUPPORT_NEARBY_DEVICE_MENU:Z

.field private static final TAG:Ljava/lang/String; = "AllViewState"


# instance fields
.field private bShowDisconnectDialog:Z

.field private final mAllAdapterConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;

.field private final mAllLayoutConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;

.field private final mAllModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private final mAllViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mBrowseStart:Z

.field private mCancelOperation:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentLayout:I

.field private mCurrentMediaItemIndex:I

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mFlatBrowseStateListener:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

.field private final mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

.field private final mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

.field private final mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

.field private final mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

.field private final mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

.field private final mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

.field private mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

.field private mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mTopSetPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->SupportNearbyDeviceMenu:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iput v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentMediaItemIndex:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllLayoutConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllAdapterConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->bShowDisconnectDialog:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCancelOperation:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;

    const-string/jumbo v1, "ALL_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState$1;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$4;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$12;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$12;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$13;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$14;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$15;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$16;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$16;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$17;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->handleFilter()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->handleBackgroundDeletion()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/allview/AllViewState;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->startPreviousViewState([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/view/allview/AllViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCancelOperation:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/samsung/gallery/view/allview/AllViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCancelOperation:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectItem(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->startDetailViewInUIThread(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->startDetailView(II)V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/data/MediaSet;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/allview/AllViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->isCloudItemDeleted(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/sec/samsung/gallery/view/allview/AllViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->bShowDisconnectDialog:Z

    return p1
.end method

.method static synthetic access$3702(Lcom/sec/samsung/gallery/view/allview/AllViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    return p1
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/allview/AllViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentMediaItemIndex:I

    return v0
.end method

.method static synthetic access$4702(Lcom/sec/samsung/gallery/view/allview/AllViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentMediaItemIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/allview/AllViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method private cancelSwitchFilterTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    :cond_0
    return-void
.end method

.method private checkMediaAvailability()V
    .locals 2

    const-string/jumbo v0, "AllViewState"

    const-string/jumbo v1, "checkMediaAvailability"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->startNoItemViewState()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    goto :goto_0
.end method

.method private enterSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->initActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    return-void
.end method

.method private exitSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setSpinnerTitle()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->initActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    goto :goto_0
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v1, ""

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v3, "/slink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v3, "/nearby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getTopSetPath(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getOneAlbumPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleBackgroundDeletion()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;

    const-string/jumbo v1, "AllViewDeleteThread"

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$10;->start()V

    return-void
.end method

.method private handleFilter()V
    .locals 5

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->cancelSwitchFilterTask()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getOneAlbumPath(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/AllViewState$5;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, p0, v2, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$5;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v4, v0}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private initActionBar()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v1, "/slink"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v1, "/nearby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-direct {v1, v2, v3, v5}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/utils/EditModeHelper;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/allview/RemoteContentActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-direct {v1, v2, v3, v5}, Lcom/sec/samsung/gallery/view/allview/ItemsActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/utils/EditModeHelper;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/AllActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/allview/AllActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private isCloudItemDeleted(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v8, 0x0

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v0, "_id"

    aput-object v0, v2, v1

    const-string/jumbo v3, "_id = ?"

    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseImageUri:Landroid/net/Uri;

    const-string/jumbo v6, "AllViewState"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v8, 0x1

    :cond_2
    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    return v8

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/sec/android/gallery3d/remote/cloud/CloudMediaItem;->mBaseVideoUri:Landroid/net/Uri;

    const-string/jumbo v6, "AllViewState"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_0
.end method

.method private requestBrowsing()V
    .locals 4

    const-string/jumbo v1, "AllViewState"

    const-string/jumbo v2, "requestBrowsing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AllViewState"

    const-string/jumbo v2, "mBrowseStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mBrowseStart:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->initFlatBrowseFlag()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mFlatBrowseStateListener:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->setFlatBrowseStateListener(Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;->refreshItem()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v1, v1, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getInstance(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->refresh(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->reloadData()V

    goto :goto_0
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/AllViewState$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/allview/AllViewState$7;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAll()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectAllPostProcess()V

    goto :goto_0
.end method

.method private selectAllPostProcess()V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4, p1, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private selectItem(II)V
    .locals 10

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a040f

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v6, 0x7f0a040e

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {v4, v5, v6, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1
.end method

.method private showDisconnectedDialog(Ljava/lang/String;)V
    .locals 5

    const/4 v3, 0x1

    const-string/jumbo v1, "AllViewState"

    const-string/jumbo v2, "showDmsDisconnected!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->bShowDisconnectDialog:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0a016c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a0042

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a02f4

    new-instance v3, Lcom/sec/samsung/gallery/view/allview/AllViewState$11;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$11;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private startDetailView(II)V
    .locals 8

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    if-gtz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v6, "AllViewState"

    const-string/jumbo v7, "cannot start DetailView. mediaItem is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    const-string/jumbo v6, "AllViewState"

    const-string/jumbo v7, "cannot start anmation to DetailView. bitmap is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getRotation()I

    move-result v7

    invoke-virtual {v6, v4, v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v6, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string/jumbo v6, "expansion_detail_view"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v6, v7, v0}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_1
.end method

.method private startDetailViewInUIThread(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/allview/AllViewState$6;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNoItemViewState()V
    .locals 3

    const-string/jumbo v1, "AllViewState"

    const-string/jumbo v2, "startNoItemViewState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/allview/AllViewState$8;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$8;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startPreviousViewState([Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousViewState()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/slinkview/SLinkViewState;

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SLINK:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->ALL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;

    invoke-direct {v2, p0, v0, p1}, Lcom/sec/samsung/gallery/view/allview/AllViewState$9;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    const-class v1, Lcom/sec/samsung/gallery/view/nearbyview/NearbyViewState;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_NEARBY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto :goto_0
.end method

.method private unselectAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void
.end method

.method private updateCountOnActionBar()V
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string/jumbo v4, "AllViewState"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "select count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", all count : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method protected getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "602"

    return-object v0
.end method

.method public isTabEnabledActivityState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onBackPressed()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->exitSelectionMode()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onContentDirty()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v3, "/nearby"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v3, "/slink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->getTitle(Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->setActionbarTitle(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-boolean v2, Lcom/sec/samsung/gallery/view/allview/AllViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "AllViewState onCreate Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v4, Lcom/sec/samsung/gallery/view/allview/AllViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getTopSetPath(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    new-instance v3, Lcom/sec/samsung/gallery/view/allview/AllViewState$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$2;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mFlatBrowseStateListener:Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice$flatBrowseStateListener;

    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllAdapterConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLoaderConfig;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALL:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    sget-boolean v3, Lcom/sec/samsung/gallery/view/allview/AllViewState;->SUPPORT_NEARBY_DEVICE_MENU:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->initSpinner(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p1, :cond_1

    const-string/jumbo v3, "is_refresh"

    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->requestBrowsing()V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    const-string/jumbo v3, "nearby"

    invoke-virtual {v1, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getSource(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSource;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;

    if-nez v2, :cond_2

    :goto_0
    return-void

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/remote/nearby/NearbySource;->getNearbyContext()Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyContext;->getNearbyClient()Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNearbyClient:Lcom/sec/android/gallery3d/remote/nearby/NearbyClient;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v3, v3, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v3, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->registerContentObserver()V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->addContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "AllViewState onCreate End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "AllViewState"

    const-string/jumbo v4, "NullPointerException at nearbySource.getNearbyContext().getNearbyClient()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AllViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/sec/android/gallery3d/data/ContentListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->unregisterContentObserver()V

    :cond_1
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onDestroy()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AllViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    const-string/jumbo v3, "/slink"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->isModalDownloadNeeded(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->enqueueMenuItemAfterModalDownload(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getModalDownloadIntent(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v3, 0x30b

    invoke-virtual {v2, v1, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "AllViewState"

    const-string/jumbo v3, "Activity Not Found !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x102002c

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->onBackPressed()V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AllViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ALL_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->cancelSwitchFilterTask()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onPause()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AllViewState OnPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSupportedOperations()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->updateMenuOperation(Landroid/view/Menu;J)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 12

    const/4 v2, 0x4

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AllViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->handleBackgroundDeletion()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "photoViewColCnt"

    invoke-static {v0, v1, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iput v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllLayoutConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;

    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    # invokes: Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->setModeLevel(I)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;->access$2300(Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;I)V

    iget v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getThumbSizeType(I)I

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onResume()V

    const/16 v4, 0x80

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentMediaItemIndex:I

    invoke-virtual {v0, v11, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllLayoutConfig:Lcom/sec/samsung/gallery/view/allview/AllViewState$AllLayoutConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v10, v11, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mAllViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->initActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getActionBarTitle(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v10}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v0, v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v0, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->isConnect()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->bShowDisconnectDialog:Z

    if-nez v0, :cond_5

    const-string/jumbo v0, "AllViewState"

    const-string/jumbo v1, "Slink device is disconnect by onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->showDisconnectedDialog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/controller/StartGalleryViewCmd;->getLatestActivityState(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/gallery3d/app/StateManager;->switchState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :cond_5
    new-instance v0, Lcom/sec/samsung/gallery/view/allview/AllViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/allview/AllViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/allview/AllViewBeam;->setBeamListener()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onResume()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "AllViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    if-ne v0, v2, :cond_2

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mCurrentLayout:I

    goto/16 :goto_0
.end method

.method protected onStateResult(IILandroid/content/Intent;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/4 v3, -0x1

    if-eq p2, v3, :cond_1

    const-string/jumbo v3, "AllViewState"

    const-string/jumbo v6, "activity result was not ok"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x30b

    if-ne p1, v3, :cond_0

    const-string/jumbo v3, "AllViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SLink Download Complete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/samsung/android/sdk/samsunglink/SlinkFileTransferUtils;->getLocalUrisFromSuccessfulModalDownloadResult(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    instance-of v3, v1, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->pollItemAfterModalDownload()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v3, "AllViewState"

    const-string/jumbo v6, "no action after modal download"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->startChooser(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Ljava/util/ArrayList;)V

    goto :goto_0

    :sswitch_1
    const-string/jumbo v3, "deviceId"

    invoke-virtual {p3, v3, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v3, v4, v8

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getSelectedItemIds()[J

    move-result-object v6

    invoke-static {v3, v6, v4, v5}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->transferFiles(Landroid/content/Context;[JJ)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f120290 -> :sswitch_0
        0x7f1202b1 -> :sswitch_1
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnHoverListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mOnKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    new-instance v1, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState$3;-><init>(Lcom/sec/samsung/gallery/view/allview/AllViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 11

    const/4 v10, 0x7

    const/4 v9, 0x1

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    const-string/jumbo v6, "AllViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Event update ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_SCAN_NEARBY_DEVICES:I

    if-ne v2, v6, :cond_1

    :try_start_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->scanForNearbyProviderDevices(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v6, "AllViewState"

    const-string/jumbo v7, "NullPointer Exception, maybe nearby device is not initiated yet"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v2, v6, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->selectAll()V

    goto :goto_0

    :cond_2
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v2, v6, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->unselectAll()V

    goto :goto_0

    :cond_3
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-ne v2, v6, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->enterSelectionMode()V

    goto :goto_0

    :cond_4
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_TO_ALBUM:I

    if-ne v2, v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v6, v5, v9, v7, v8}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showAlbumListDialogToCopyMove(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_TO_ALBUM:I

    if-ne v2, v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopSetPath:Ljava/lang/String;

    invoke-virtual {v6, v5, v9, v9, v7}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showAlbumListDialogToCopyMove(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_SEND_TO_OTHER_DEVICES:I

    if-ne v2, v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    const v7, 0x7f1202b1

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->enqueueMenuItemAfterModalDownload(I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->setSelectedItemIds(Lcom/sec/android/gallery3d/ui/SelectionManager;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v4, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/remote/slink/SLinkStorage;->getStorageId()I

    move-result v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mSLinkManager:Lcom/sec/android/gallery3d/remote/slink/SLinkManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->getSelectedItemIds()[J

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sec/android/gallery3d/remote/slink/SLinkManager;->createDeviceChooserActivityIntent(Landroid/content/Context;I[J)Landroid/content/Intent;

    move-result-object v3

    :try_start_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/allview/AllViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v7, 0x30b

    invoke-virtual {v6, v3, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v6, "AllViewState"

    const-string/jumbo v7, "Activity Not Found !!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    sget v6, Lcom/sec/samsung/gallery/core/Event;->EVENT_REFRESH_SLINK:I

    if-ne v2, v6, :cond_0

    const-string/jumbo v6, "AllViewState"

    const-string/jumbo v7, "refresh start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "6005"

    invoke-static {v6, v7}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/allview/AllViewState;->requestBrowsing()V

    goto/16 :goto_0
.end method
