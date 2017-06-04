.class public Lcom/sec/samsung/gallery/view/filterview/FilterViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "FilterViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/filterview/FilterViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;
    }
.end annotation


# static fields
.field private static final COLCNT_LEVEL_DEFAULT:I = 0x0

.field private static final PREFKEY_FILTER_VIEW_COLCNT:Ljava/lang/String; = "filterViewColCnt"

.field private static final TAG:Ljava/lang/String; = "FilterViewState"


# instance fields
.field private mAlbumIndex:I

.field private mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentTopSetPath:Ljava/lang/String;

.field private mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private final mEventViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mFirstMediaCheck:Z

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsDualLaunchFromDetail:Z

.field private mIsEasyMode:Z

.field private mIsFirstLoadingFinished:Z

.field private mIsResumed:Z

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private volatile mNeedIdleProcess:Z

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mAlbumIndex:I

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNeedIdleProcess:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsFirstLoadingFinished:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;

    const-string/jumbo v1, "EVENT_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mEventViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$2;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsFirstLoadingFinished:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsFirstLoadingFinished:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsResumed:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsResumed:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->refreshDualScreenFocus()V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsDualLaunchFromDetail:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsDualLaunchFromDetail:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAlbum(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startPhotoView(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailView(II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;[Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->checkRequiredPermissions([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->showPermissionRequestDialog([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startChannelViewMode()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mAlbumIndex:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startPeopleViewFaceType()V

    return-void
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailView(IIZ)V

    return-void
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$6402(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->updateCountOnActionBar()V

    return-void
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$17;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkMediaAvailability()V
    .locals 3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFirstMediaCheck:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v2, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFirstMediaCheck:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startTimeViewState()V

    :cond_1
    return-void
.end method

.method private checkRequiredPermissions([Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/gallery3d/util/RuntimePermissionUtils;->isRequiredPermissionEnabled(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private enterSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    return-void
.end method

.method private exitSelectionMode()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v3, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    return-void
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;Lcom/sec/samsung/gallery/core/ViewByFilterType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshDualScreenFocus()V
    .locals 5

    const/4 v0, -0x1

    sget-object v3, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v4, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getCoverMediaItem()Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v0

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    sget-object v4, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :cond_2
    return-void
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$15;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$15;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAlbum(I)V
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f0a040f

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I[Ljava/lang/Object;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->updateCountOnActionBar()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    const/16 v2, 0x1f4

    if-le v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAllPostProcess()V

    goto :goto_0
.end method

.method private selectAllPostProcess()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;)V
    .locals 6

    const-wide/16 v4, 0x1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p2, v4, v5, v3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;->increaseProgress(JZ)V

    const/4 v3, 0x1

    invoke-virtual {p2, v4, v5, v3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$SelectionTask;->increaseProgress(JZ)V

    :cond_2
    invoke-virtual {p1, v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-nez v1, :cond_3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1
.end method

.method private setActivityTitle()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0440

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setLaunchMode()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->updateCountOnActionBar()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/filterview/FilterActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private showDeleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method private showPermissionRequestDialog([Ljava/lang/String;I)V
    .locals 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sec/samsung/gallery/controller/DialogVisibility;->SHOW:Lcom/sec/samsung/gallery/controller/DialogVisibility;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p1, v0, v1

    const/4 v1, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_PERMISSION_REQUEST_ACTIVITY"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startChannelViewMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "START_CHANNEL_VIEW_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startDetailView(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewForClusterAlbumSet(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailView(IIZ)V

    goto :goto_0
.end method

.method private startDetailView(IIZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

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

    const-string/jumbo v3, "KEY_IS_FROM_CATEGORYVIEW"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v3, v4, v0, p3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto :goto_0
.end method

.method private startDetailViewForClusterAlbumSet(IIZ)V
    .locals 10

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v6, p2, v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v5, :cond_0

    move-object v8, v6

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v8, p2}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getItemIndex(I)I

    move-result v2

    move-object v8, v6

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getAlbumIndex()I

    move-result v1

    check-cast v6, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->getAlbums()Ljava/util/ArrayList;

    move-result-object v4

    instance-of v8, v5, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v8, :cond_2

    check-cast v5, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v9, "KEY_MEDIA_SET_PATH"

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/gallery3d/data/ClusterAlbum;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/ClusterAlbum;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {v0, v8, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "KEY_ITEM_POSITION"

    invoke-virtual {v0, v8, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v8

    const-class v9, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v8, v9, v0, p3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$16;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startPeopleViewFaceType()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "CGVW"

    const-string/jumbo v2, "People"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPhotoView(I)V
    .locals 2

    iput p1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mAlbumIndex:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$14;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTimeViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$13;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopSyncContact(Landroid/app/Activity;)V
    .locals 5

    invoke-static {p1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    const-string/jumbo v1, "SYNC_CONTACTS"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->STOP_SYNC:Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private unselectAll()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, v1, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    return-void
.end method

.method private updateCountOnActionBar()V
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_0

    if-ne v2, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->exitSelectionMode()V

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->clearFocus()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "FilterViewState onCreate Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "FilterViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v1, :cond_0

    const-string/jumbo v1, "FilterViewState"

    const-string/jumbo v2, "mActivity is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFirstMediaCheck:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsFirstLoadingFinished:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v1, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v5, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsEasyMode:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->initSpinner()V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    const-string/jumbo v1, "start_dual_from_detail"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsDualLaunchFromDetail:Z

    :cond_2
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowShotModeAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "/combo/{"

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFavoriteInCategory:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->getDefaultPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/allinone,/local/shotmodeburstshotalbumset,/local/shotmodewechatset/,/local/shotmodealbumset,/local/categoryalbumset}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;

    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v3, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$DataLoaderConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    const/4 v4, 0x4

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeAlbumSetAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsEasyMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    new-instance v2, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$3;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$3;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    :cond_4
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "FilterViewState onCreate End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/allinone,/local/shotmodeburstshotalbumset,/local/shotmodealbumset,/local/categoryalbumset}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string/jumbo v1, "/local/categoryalbumset"

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentTopSetPath:Ljava/lang/String;

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FilterViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsChn:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->stopSyncContact(Landroid/app/Activity;)V

    :cond_0
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FilterViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "FilterViewState"

    const-string/jumbo v3, "onDirty() called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "/local/all"

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDataManager:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->onBackPressed()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FilterViewState onPause Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsFirstLoadingFinished:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsResumed:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onPause()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_1
    iput v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mShrinkOption:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "EVENT_VIEW"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionTitleFocus(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(I)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FilterViewState onPause End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    const/4 v6, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    if-eq v1, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startChannelViewMode()V

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget v1, p3, v0

    if-ne v1, v6, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->finish()V

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/cmh/CMHInterface;->categoryNotify(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/access/dcm/DCMInterface;->categoryNotify(Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_5

    aget v1, p3, v0

    if-eq v1, v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startChannelViewMode()V

    goto :goto_0

    :sswitch_3
    const/4 v0, 0x0

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "SYNC_CONTACTS"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;->START_SYNC:Lcom/sec/samsung/gallery/controller/SyncContactsCmd$SyncContactsCmdType;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startPeopleViewFaceType()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_0
        0x69 -> :sswitch_2
        0x6b -> :sswitch_3
        0x73 -> :sswitch_1
    .end sparse-switch
.end method

.method public onResume()V
    .locals 13

    const/4 v2, -0x1

    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FilterViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNeedIdleProcess:Z

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsResumed:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FILTER:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsEasyMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "filterViewColCnt"

    invoke-static {v0, v1, v12}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsEasyMode:Z

    # invokes: Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->setInitialLevel(ZI)V
    invoke-static {v0, v1, v9}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->access$3300(Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;ZI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    invoke-static {v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;->getThumbSizeType(I)I

    move-result v10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v12}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->exitSelectionMode()V

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->setLaunchMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;->cancel(Z)Z

    :cond_2
    new-instance v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;Lcom/sec/samsung/gallery/view/filterview/FilterViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_0
    or-int/lit8 v4, v4, 0x40

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v8

    if-ne v8, v2, :cond_4

    const/4 v6, 0x0

    const-string/jumbo v0, "FilterViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mAlbumIndex:I

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

    iget v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mAlbumIndex:I

    invoke-static {v0, v6}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v8

    :cond_4
    iget v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mShrinkOption:I

    or-int/2addr v4, v0

    :goto_1
    if-ltz v8, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mEventViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewBeam;->setBeamListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v1, v7, v12

    aget v2, v7, v11

    const/4 v3, 0x2

    aget v3, v7, v3

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->setActivityTitle()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FilterViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;

    iget v8, v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto :goto_1
.end method

.method public onViewInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const-string/jumbo v1, "FilterViewState"

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mFilterSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$4;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$5;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$6;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$6;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$7;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$7;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$8;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$8;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$9;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$9;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$10;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$11;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState$12;-><init>(Lcom/sec/samsung/gallery/view/filterview/FilterViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V

    return-void
.end method

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sput-object v2, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v2, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7

    const/4 v6, 0x0

    move-object v1, p2

    check-cast v1, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v2

    const-string/jumbo v3, "FilterViewState"

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

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->showDeleteDialog()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v2, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->selectAll()V

    goto :goto_0

    :cond_2
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->unselectAll()V

    goto :goto_0

    :cond_3
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_CAMERA_MODE:I

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "START_CAMERA"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-ne v2, v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x5

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_5
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    if-ne v2, v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x6

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_6
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SCAN_NEARBY_DEVICES:I

    if-ne v2, v3, :cond_7

    :try_start_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/remote/nearby/NearbyUtils;->scanForNearbyProviderDevices(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "FilterViewState"

    const-string/jumbo v4, "NullPointer Exception, maybe nearby device is not initiated yet"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_7
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    if-ne v2, v3, :cond_0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v3, v4, v6}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

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

    sput-object v0, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/filterview/FilterViewState;->refreshDualScreenFocus()V

    return-void
.end method
