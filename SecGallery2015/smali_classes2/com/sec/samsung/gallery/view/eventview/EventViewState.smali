.class public Lcom/sec/samsung/gallery/view/eventview/EventViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "EventViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;
    }
.end annotation


# static fields
.field public static final CONST_HIGHLIGHT_VIDEO_INDEX:I = -0x1

.field public static final CONST_MAP_VIEW_INDEX:I = -0x2

.field private static final HV_CLASS_NAME:Ljava/lang/String; = "com.samsung.app.highlightplayer.activity.HighlightPlayerActivity"

.field private static final HV_CLASS_NAME_FOR_DREAM:Ljava/lang/String; = "com.samsung.app.highlightplayer.activity.HighlightEditActivity"

.field private static final HV_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.app.highlightplayer"

.field public static final REQUEST_ALBUM_CREATION:I = 0x701

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field private static final SELECT_MAX_ITEM_LIMIT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "EventViewState"


# instance fields
.field private mAlbumIndex:I

.field private mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentTopSetPath:Ljava/lang/String;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

.field private mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

.field private final mEventViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mFirstMediaCheck:Z

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsDualLaunchFromDetail:Z

.field private mIsFirstLoadingFinished:Z

.field private mIsFromNoItemView:Z

.field private mIsResumed:Z

.field private mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private volatile mNeedIdleProcess:Z

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private final mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFromNoItemView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z

    iput v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNeedIdleProcess:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;

    const-string/jumbo v1, "EVENT_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$2;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$3;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFromNoItemView:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->refreshDualScreenFocus()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsDualLaunchFromDetail:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsDualLaunchFromDetail:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAlbum(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startHighLightVideo(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startMapView(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->getLatestEventInfo()I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startPhotoView(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/data/EventAlbumManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailView(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I

    return v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;)V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailView(IIZ)V

    return-void
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V

    return-void
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$21;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkMediaAvailability()V
    .locals 6

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mFirstMediaCheck:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v3, v4, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mFirstMediaCheck:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventItemCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "EventViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MIMETYPE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->exitSelectionMode()V

    :cond_1
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startNoItemViewState(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mMenu:Landroid/view/Menu;

    if-nez v3, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method private checkValidHighlightVideo(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private enterSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshSelectionBarState(Z)V

    :cond_1
    return-void
.end method

.method private exitSelectionMode()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    return-void
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getLatestEventInfo()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "latest_update_event"

    invoke-static {v1, v2, v0}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getRefreshState(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v1, "KEY_VIEW_REDRAW"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    return v0
.end method

.method private handleNewEventAlbum()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-class v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.extra.LOCAL_ONLY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "pick-from-gallery"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v1, "pick-max-item"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "is-pick-to-add-channel-view"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/16 v2, 0x701

    invoke-virtual {v1, v0, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_0
    const-string/jumbo v1, "android.intent.action.MULTIPLE_PICK"

    goto :goto_0
.end method

.method private refreshDualScreenFocus()V
    .locals 4

    const/4 v0, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    sget-object v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->updateDualScreenFocus(I)V

    :cond_2
    return-void
.end method

.method private registerEventViewObserver()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getSDCardRemovedIntentFilter()Landroid/content/IntentFilter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$19;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAlbum(I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040f

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshCheckState()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040e

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private selectAll()V
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAllPostProcess()V

    goto :goto_0
.end method

.method private selectAllPostProcess()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshCheckState()V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;)V
    .locals 6

    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v5, v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;->increaseProgress(JZ)V

    const/4 v3, 0x1

    invoke-virtual {p2, v4, v5, v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_2
    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1
.end method

.method private setActivityTitle()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0441

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setLaunchMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/eventview/EventActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    return-void
.end method

.method private startDetailView(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailView(IIZ)V

    return-void
.end method

.method private startDetailView(IIZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

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

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v3, v4, v0, p3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$20;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$20;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startHighLightVideo(IILjava/lang/String;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->checkValidHighlightVideo(I)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "gallery.launch.otheractivity"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string/jumbo v3, "eventid"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "eventName"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "create_app"

    const-string/jumbo v4, "edit_movie"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.app.highlightplayer"

    const-string/jumbo v4, "com.samsung.app.highlightplayer.activity.HighlightEditActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v4, "GEDH"

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->getLatestEventInfo()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "latest_update_event"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    goto :goto_0

    :cond_2
    const/high16 v3, 0x10000

    :try_start_1
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "com.samsung.app.highlightplayer"

    const-string/jumbo v4, "com.samsung.app.highlightplayer.activity.HighlightPlayerActivity"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventViewState"

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v4, 0x7f0a00d5

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private startMapView(I)V
    .locals 6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getLocation(Lcom/sec/android/gallery3d/data/MediaSet;)[D

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInitialScale(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v5, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v4, "KEY_MEDIA_SET_PATH"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "KEY_MEDIA_ITEM_LOCATION"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    const-string/jumbo v4, "KEY_MAP_VIEW_ZOOM_LEVEL"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v4, "KEY_EVENT_VIEW_ALBUM_BUCKET_ID"

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v5, "GEMV"

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;

    invoke-direct {v5, p0, v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$17;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Landroid/os/Bundle;)V

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startNoItemViewState(Ljava/lang/String;)V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->cancelDeleteAnimation()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_NOITEMSVIEW_MIME_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState$18;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$18;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startPhotoView(I)V
    .locals 2

    iput p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$16;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unregisterEventViewObserver()V
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSDCardRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "EventViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unregisterEventViewObserver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v1, "EventViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unselectAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->refreshCheckState()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void
.end method

.method private updateCountOnActionBar()V
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getAllCount()I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0
.end method


# virtual methods
.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->exitSelectionMode()V

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "EventViewState onCreate Start"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "EventViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v2, :cond_0

    const-string/jumbo v2, "EventViewState"

    const-string/jumbo v3, "mActivity is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mFirstMediaCheck:Z

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v2, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->getRefreshState(Landroid/os/Bundle;)Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iput-object v7, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->initSpinner()V

    if-eqz p1, :cond_1

    const-string/jumbo v2, "KEY_IS_FROM_NOITEMVIEW"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFromNoItemView:Z

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "start_dual_from_detail"

    invoke-virtual {p1, v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsDualLaunchFromDetail:Z

    :cond_1
    const-string/jumbo v2, "/local/event/all"

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;

    new-instance v2, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v4, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    const/4 v5, 0x3

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setEasyMode(Z)V

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    new-instance v3, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$4;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    :cond_2
    invoke-static {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    const-string/jumbo v2, "Gallery_Performance"

    const-string/jumbo v3, "EventViewState onCreate End"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDirty()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    const/4 v3, -0x1

    const/4 v5, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "EventViewState onPause Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->unregisterEventViewObserver()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->onPause()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->saveCurrentScrollInfo()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;->pause()V

    :cond_1
    iput v5, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mShrinkOption:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "EVENT_VIEW"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setGenericMotionTitleFocus(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000ab

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    aget v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(I)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "EventViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .locals 12

    const/4 v2, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "EventViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNeedIdleProcess:Z

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mIsResumed:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setEasyMode(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->registerEventViewObserver()V

    invoke-static {v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerEventView;->getThumbSizeType(I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v0, v9}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->setLaunchMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_1
    new-instance v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;Lcom/sec/samsung/gallery/view/eventview/EventViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;

    new-array v1, v11, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    :goto_0
    or-int/lit8 v4, v4, 0x40

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v8

    if-ne v8, v2, :cond_3

    const/4 v6, 0x0

    const-string/jumbo v0, "EventViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", itemIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mAlbumIndex:I

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v8

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mShrinkOption:I

    or-int/2addr v4, v0

    :goto_1
    if-ltz v8, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setFirstIndex(I)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->setFirstLoadingCount(I)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseStoryAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    :cond_5
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->onDirty()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f1000e0

    invoke-static {v0, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v7

    if-eqz v7, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v1, v7, v10

    const/4 v2, 0x2

    aget v2, v7, v2

    const/4 v3, 0x3

    aget v3, v7, v3

    aget v5, v7, v11

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_6
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->cancelNotification()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->setActivityTitle()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "EventViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;

    iget v8, v0, Lcom/sec/samsung/gallery/view/eventview/EventViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto/16 :goto_1
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 8

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-eqz p3, :cond_0

    :try_start_0
    const-string/jumbo v6, "selectedItems"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v6, "EventViewState"

    invoke-virtual {v0}, Landroid/os/BadParcelableException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventAlbumMgr:Lcom/sec/android/gallery3d/data/EventAlbumManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6, v7, v3}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->prepareCreateEventDialog(Landroid/content/Context;Lcom/sec/android/gallery3d/ui/SelectionManager;)V
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_1
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    const/4 v6, 0x2

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v7, v2, v6

    const/4 v6, 0x1

    aput-object p3, v2, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v7, "START_ALBUM_OPERATIONS"

    invoke-virtual {v6, v7, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x701 -> :sswitch_0
        0xc00 -> :sswitch_1
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeEventView;

    const-string/jumbo v1, "EventViewState"

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEventSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeEventSetAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$5;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$6;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$7;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState$8;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$8;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState$9;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$9;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$10;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState$11;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$11;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$12;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$13;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$14;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState$15;-><init>(Lcom/sec/samsung/gallery/view/eventview/EventViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    return-void
.end method

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sput-object v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v2, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    const-string/jumbo v3, "EventViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->selectAll()V

    goto :goto_0

    :cond_2
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->unselectAll()V

    goto :goto_0

    :cond_3
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_NEW_EVENT_ALBUM:I

    if-ne v2, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->handleNewEventAlbum()V

    goto :goto_0

    :cond_4
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_CAMERA_MODE:I

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "START_CAMERA"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x5

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_6
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    if-ne v2, v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x6

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_7
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COLLECT_EVENT_ALBUM:I

    if-ne v2, v3, :cond_9

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_8
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mMediaSetForCopy:Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5, v7, v6}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_9
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SCAN_NEARBY_DEVICES:I

    if-ne v2, v3, :cond_a

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->scanForNearbyProviderDevices(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "EventViewState"

    const-string/jumbo v4, "NullPointer Exception, maybe nearby device is not initiated yet"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_a
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

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

    sput-object v1, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/eventview/EventViewState;->refreshDualScreenFocus()V

    :cond_0
    return-void
.end method
