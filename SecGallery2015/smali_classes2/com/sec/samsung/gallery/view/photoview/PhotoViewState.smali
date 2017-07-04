.class public Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;
.super Lcom/sec/android/gallery3d/app/TabActivityState;
.source "PhotoViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOADING_COUNT:I = 0xc

.field private static final DEFAULT_MEDIASET_INDEX:I = 0x0

.field private static final FEATURE_SHOW_STATUS_BAR:Z

.field private static final FEATURE_USE_DEVICE_COG:Z

.field private static final FEATURE_USE_NAVIGATION_BAR:Z

.field private static final FEATURE_USE_TAB_UI:Z

.field private static final IS_NOS:Z

.field private static final MSG_PHOTO_LOADING_FINISHED:I = 0x1

.field private static final MSG_REFRESH_ACTIONBAR_BG:I = 0x4

.field public static final MSG_UPDATE_ACTIONBAR:I = 0x2

.field private static final MSG_UPDATE_CLOUD_ACTIONBAR:I = 0x5

.field private static final REQUEST_ADD_CONTENTS:I = 0x205

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field private static final REQUEST_ASSIGN_NAME:I = 0x203

.field private static final SELECT_MAX_ITEM_LIMIT:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "PhotoViewState"

.field private static final USE_MTP_VIEW:Z

.field public static final VIEW_MODE_SWITCH_TO_DETAIL_VIEW:I = 0x201

.field public static final VIEW_MODE_SWITCH_TO_DETAIL_VIEW_TO_OTHER:I = 0x206


# instance fields
.field private mActionbarStyle:I

.field public mCurrentLayout:I

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field mCurrentMediaItemIndex:I

.field mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field mCurrentMediaSetIndex:I

.field mCurrentMediaSetPath:Ljava/lang/String;

.field mCurrentTopMediaSetPath:Ljava/lang/String;

.field mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field public mDetailViewStarted:Z

.field public mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mFirstMediaCheck:Z

.field private mFromAlbumViewState:Z

.field private mFromInsideGallery:Z

.field mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field final mGroupIDList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mIsCategoryTagType:Z

.field mIsCollageMode:Z

.field mIsEasyMode:Z

.field private mIsFromCamera:Z

.field mIsFromShortcut:Z

.field mIsGifMode:Z

.field public final mIsLikeEventView:Z

.field private mIsMtpEnter:Z

.field mIsRecycleBinView:Z

.field mIsScloudView:Z

.field mIsSightMode:Z

.field private mIsSightModeFromDetail:Z

.field private mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

.field public mLockInSelectionMode:Z

.field public final mMainHandler:Landroid/os/Handler;

.field mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mMenu:Landroid/view/Menu;

.field private volatile mNeedIdleProcess:Z

.field private final mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

.field private mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

.field private final mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

.field private mOverFlowView:Landroid/widget/TextView;

.field private mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

.field private final mPhotoModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private final mPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

.field mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

.field private mSortBy:I

.field private mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

.field mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

.field private mUpdatePath:Z

.field mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

.field tempTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_SHOW_STATUS_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDeviceCog:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->IS_NOS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDetailViewStarted:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGroupIDList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFromAlbumViewState:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsLikeEventView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCategoryTagType:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdatePath:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLockInSelectionMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNeedIdleProcess:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightModeFromDetail:Z

    iput v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$1;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;

    const-string/jumbo v1, "PHOTO_VIEW_EXIT_SELECTION"

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$2;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$8;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$9;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$13;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$15;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightModeFromDetail:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateAlbumNameOfActionBar()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setOverFlowColor(F)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setUpBtnColor(F)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;FI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setTextMenuColor(FI)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionBarTitleColor(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionBarMenuColor()V

    return-void
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setSelectionViewColor(F)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionBarBGColor(F)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$3602(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateCloudAlbumNameOfActionBar()V

    return-void
.end method

.method static synthetic access$4000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$4102(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$4302(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Lcom/sec/android/gallery3d/data/MediaItem;)Lcom/sec/android/gallery3d/data/MediaItem;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->switchTopMediaSet(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getStateIdForSelectAll()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/data/OnProgressListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->postUpdateAlbumNameOfActionBar()V

    return-void
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method private addContentstoEvent(Landroid/content/Intent;)V
    .locals 25

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryApplication()Lcom/sec/android/gallery3d/app/GalleryApp;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getInstance(Lcom/sec/android/gallery3d/app/GalleryApp;)Lcom/sec/android/gallery3d/data/EventAlbumManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-static {v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->getInstance(Lcom/sec/android/gallery3d/interfaces/DefaultAppContext;)Lcom/sec/samsung/gallery/util/LocalDatabaseManager;

    move-result-object v18

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventAlbumMap()Ljava/util/ArrayList;

    move-result-object v11

    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v6, v7, :cond_4

    :cond_2
    const-string/jumbo v7, "PhotoViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "mPhotoViewState.mCurrentMediaSetIndex = "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v23, ", mAlbumMap.size() = "

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    if-nez v11, :cond_3

    const-string/jumbo v6, "null"

    :goto_1
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v14

    :try_start_0
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v17, "union_selectedItems"

    :goto_2
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/Uri;

    const/4 v6, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v14, v0, v6}, Lcom/sec/android/gallery3d/data/DataManager;->findPathByUri(Landroid/net/Uri;Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v15

    const-string/jumbo v6, "PhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "BadParcelableException : "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Landroid/os/BadParcelableException;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    :try_start_1
    const-string/jumbo v17, "selectedItems"

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v12

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-object v5, v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget-wide v8, v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->albumCreateTime:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;

    iget v4, v6, Lcom/sec/android/gallery3d/data/EventAlbumManager$EventAlbumEntry;->bucketId:I

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->removeSuggestedValue(I)V

    const/4 v13, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->updateItemList(Ljava/util/ArrayList;Z)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v19

    const-string/jumbo v23, "images_event_album"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getImageContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v13, v6

    const-string/jumbo v23, "video_event_album"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getVideoContentValues(Ljava/util/ArrayList;ILjava/lang/String;ZZJ)[Landroid/content/ContentValues;

    move-result-object v6

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v6}, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->addEventInfo(Ljava/lang/String;[Landroid/content/ContentValues;)I

    move-result v6

    add-int/2addr v13, v6

    if-lez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/sec/samsung/gallery/util/LocalDatabaseManager;->EVENT_ALBUM_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_7
    if-lez v19, :cond_0

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/data/EventAlbumManager;->getEventItemCount(I)I
    :try_end_1
    .catch Landroid/os/BadParcelableException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v5, :cond_8

    if-ne v12, v10, :cond_a

    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_9

    :try_start_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0220

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v5, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_8
    :goto_5
    :try_start_3
    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHighlightVideo:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    if-lt v10, v6, :cond_0

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v16

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->startHighLightVideoService(Landroid/content/Context;Ljava/util/ArrayList;)V
    :try_end_3
    .catch Landroid/os/BadParcelableException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a022e

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v5, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto :goto_4

    :cond_a
    add-int v6, v12, v19

    if-le v6, v10, :cond_8

    const/4 v6, 0x1

    move/from16 v0, v19

    if-ne v0, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0222

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v5, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    :goto_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v0, v20

    invoke-static {v6, v0}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_1
    move-exception v15

    :try_start_5
    const-string/jumbo v6, "PhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "MissingFormatArgumentException!! bucketId = "

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/BadParcelableException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_5

    :cond_b
    :try_start_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a0230

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v5, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v6, v7, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/util/MissingFormatArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/BadParcelableException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v20

    goto :goto_6
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$6;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private cancelSwitchFilterTask()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    :cond_0
    return-void
.end method

.method private checkAndSetValidMediaItemSource()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "PhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkMediaItemSourceValid : source in mediaItemAdapter is null [or] mtp mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v1, :cond_1

    const-string/jumbo v1, "PhotoViewState"

    const-string/jumbo v2, "checkMediaItemSourceValid : mComponent or mTopMediaSet is null, finish state !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "PhotoViewState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "source="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v1, :cond_3

    iput v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    const-string/jumbo v1, "PhotoViewState"

    const-string/jumbo v2, "checkMediaItemSourceValid : MediaSet yet to load"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "PhotoViewState"

    const-string/jumbo v2, "checkMediaItemSourceValid : 1st SubMediaSet is null, finish state !!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    goto/16 :goto_0

    :cond_4
    iput v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    goto/16 :goto_0
.end method

.method private checkMediaAvailability()V
    .locals 9

    const/4 v6, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_4

    const/4 v4, 0x1

    :goto_0
    if-nez v4, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    :cond_0
    if-eqz v4, :cond_7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->dismissDialogs()V

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v7, "mtpMode"

    invoke-static {v5, v7, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v5, :cond_6

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v7, "UPDATE_SPINNER_EXPANSION_GROUP"

    invoke-virtual {v5, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->startNoItemViewState(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v5, :cond_5

    :goto_1
    return-void

    :cond_4
    move v4, v6

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "PhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NullPointerException : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    :cond_6
    :goto_2
    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFirstMediaCheck:Z

    goto :goto_1

    :cond_7
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFirstMediaCheck:Z

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->checkAndSetValidMediaItemSource()V

    sget-boolean v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getRootLayer()Lcom/sec/android/gallery3d/glcore/GlLayer;

    move-result-object v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v7, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_8
    sget-boolean v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "PhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaAvailability#2 for MTP mCurrentMediaSet["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] mTopMediaSet["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v5, Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->compareAndSetMTP(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)V

    goto :goto_2

    :cond_9
    sget-boolean v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsNoItemViewMode:Z

    if-eqz v5, :cond_6

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsNoItemViewMode:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->hideNoItem()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v5, :cond_6

    const-string/jumbo v5, "PhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "checkMediaAvailability#3 for MTP mCurrentMediaSet["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] mTopMediaSet["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    instance-of v5, v5, Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    check-cast v5, Lcom/sec/android/gallery3d/data/MtpDeviceSet;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->compareAndSetMTP(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)V

    goto/16 :goto_2
.end method

.method private compareAndSetMTP(Lcom/sec/android/gallery3d/data/MtpDeviceSet;)V
    .locals 9

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MtpDevice;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->getMtpContext()Lcom/sec/android/gallery3d/data/MtpContext;

    move-result-object v2

    const-string/jumbo v5, "PhotoViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compareAndSetMTP mediaSet["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] mtpContext["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MtpDevice;->getMediaItemCount()I

    move-result v5

    if-lez v5, :cond_1

    const-string/jumbo v5, "PhotoViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compareAndSetMTP deviceId["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MtpDevice;->getMtpDeviceId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "] count["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MtpDevice;->getMediaItemCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MtpContext;->getMtpClient()Lcom/sec/android/gallery3d/data/MtpClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MtpClient;->getDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/mtp/MtpDevice;

    const-string/jumbo v6, "PhotoViewState"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "compareAndSetMTP mtpDeviceList["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/mtp/MtpDevice;->getDeviceId()I

    move-result v6

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MtpDevice;->getMtpDeviceId()I

    move-result v7

    if-ne v6, v7, :cond_0

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v5, "PhotoViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compareAndSetMTP matched mediaSet["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    :goto_0
    return-void

    :cond_2
    const-string/jumbo v5, "PhotoViewState"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "compareAndSetMTP not matched baseSet["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MtpDeviceSet;->clearDeviceList()V

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MtpContext;->notifyDirty()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    goto :goto_0
.end method

.method private exitSelectionMode(Z)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v3, "PhotoViewState"

    const-string/jumbo v6, "exitSelectionMode"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->logDCExitSelectionMode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "mtpMode"

    invoke-static {v3, v6, v5}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v6, "mtpDeviceName"

    invoke-static {v3, v6}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v3, v0, v5}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getPhotoLayoutConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v3, :cond_5

    const/4 v2, 0x2

    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v7, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-boolean v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v9, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v9, :cond_6

    move v3, v4

    :goto_2
    invoke-direct {v7, v8, v2, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->clearSelectedCount()V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGroupIDList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    sget-boolean v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v3

    invoke-interface {v3, v4}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :cond_2
    sget-boolean v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->resetDCShareParam()V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x4

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v3, v5}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2
.end method

.method private getAcionbarBackground(I)Landroid/widget/LinearLayout;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1200b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    :cond_1
    move-object v2, v0

    goto :goto_0
.end method

.method private getActionbarOverFlow(I)Landroid/widget/TextView;
    .locals 9

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string/jumbo v5, "action_bar"

    const-string/jumbo v6, "id"

    const-string/jumbo v7, "android"

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOverFlowView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method private getActionbarTextMenu(I)Landroid/widget/TextView;
    .locals 5

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, p1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1200b5

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    move-object v2, v1

    goto :goto_0
.end method

.method private getActionbarUpButton(I)Landroid/widget/ImageButton;
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    const-string/jumbo v6, "PhotoViewState"

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

.method private getFirstLoadingCount()I
    .locals 10

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    packed-switch v7, :pswitch_data_0

    const/16 v2, 0xc

    :goto_0
    return v2

    :pswitch_0
    const/16 v2, 0x80

    goto :goto_0

    :pswitch_1
    const/16 v2, 0x42

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x1c

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v3, v7, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget v6, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mPortRatio:F

    :goto_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v5, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mHeightSpace:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getColumnCount()I

    move-result v0

    if-lez v0, :cond_3

    int-to-float v7, v0

    mul-float/2addr v7, v1

    div-float/2addr v7, v5

    float-to-double v8, v7

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v4, v8

    mul-int v7, v0, v4

    add-int/lit8 v2, v7, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget v6, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mLandRatio:F

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWidthSpace:F

    mul-float v5, v7, v6

    goto :goto_2

    :cond_3
    const/16 v2, 0xc

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .locals 5

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0391

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0392

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

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

.method private getPhotoLayoutConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    return-object v0
.end method

.method private getStateIdForSelectAll()Ljava/lang/String;
    .locals 3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_RECYCLEBIN:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v2, :cond_0

    const-string/jumbo v1, "RecycleBinSelectedView"

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SCLOUDVIEW:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v2, :cond_1

    const-string/jumbo v1, "CloudSelectedView"

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "AlbumThumbnailsSelectedView"

    goto :goto_0
.end method

.method private getTopSetPathByFilter()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewByType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
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
    .locals 5

    const/4 v2, 0x1

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0396

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0397

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private handleFilterPhotos()V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentMediaFilterType()Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;

    move-result-object v0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->cancelSwitchFilterTask()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/android/gallery3d/app/FilterUtils;->toFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/app/FilterUtils;->switchFilterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    :goto_0
    new-instance v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, p0, v4, v0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$10;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Landroid/content/Context;Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Lcom/sec/android/gallery3d/data/MediaSet;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSwitchFilterTask:Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/utils/MediaCountCheckTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    goto :goto_0
.end method

.method private handleSortByForDC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->getSortByTypeFromString(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    move-result-object v1

    invoke-static {p2}, Lcom/samsung/android/devicecog/gallery/DCUtils;->getSortByOrderFromString(Ljava/lang/String;)Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0775

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/controller/DCNlgManager;->getNlgRequestInfo(Landroid/content/Context;I[Ljava/lang/Object;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "Sortby"

    sget-object v3, Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;->SUCCESS:Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;

    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->sendResponseDCState(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/devicecog/gallery/controller/SendResponseCmd$ResponseResult;Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;)V

    return-void
.end method

.method private initMtpMode()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpMode"

    invoke-static {v2, v3, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "mtpDeviceName"

    invoke-static {v2, v3}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->initSpinner(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private postUpdateAlbumNameOfActionBar()V
    .locals 4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private refreshDualScreenFocus()V
    .locals 5

    const/4 v0, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    const-string/jumbo v2, "PhotoViewState"

    const-string/jumbo v3, "refreshDualScreenFocus item null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v2, "PhotoViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshDualScreenFocus path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "PhotoViewState"

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    sget-object v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "PhotoViewState"

    const-string/jumbo v3, "refreshDualScreenFocus :: mMediaItemAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "PhotoViewState"

    const-string/jumbo v3, "refreshDualScreenFocus :: mComposeView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private saveSortByState(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p2}, Lcom/sec/android/gallery3d/data/MediaSet;->setSortByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->notifyDirty()V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->sortingByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->sortingByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sort_by_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;I)V

    const-string/jumbo v0, "PhotoViewState"

    const-string/jumbo v1, "saveSortByState. Type and OrderType are saved"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private selectAll()V
    .locals 12

    const/16 v7, 0x1f4

    const/4 v11, 0x6

    const/4 v6, 0x1

    const/4 v10, -0x1

    const/4 v2, -0x1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "pick-max-item"

    invoke-virtual {v1, v8, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v11, :cond_2

    if-eq v3, v10, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    sub-int v2, v3, v5

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateMaximumSelectionNumberExceeded(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFromInsideGallery:Z

    if-nez v8, :cond_2

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v8, :cond_1

    move v3, v6

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    sub-int v2, v3, v5

    if-nez v2, :cond_2

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateMaximumSelectionNumberExceeded(I)V

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_1

    :cond_2
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v8, :cond_3

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    sub-int v2, v3, v8

    :cond_3
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_4

    const/4 v3, 0x6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    sub-int v2, v3, v8

    :cond_4
    const/4 v4, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v8

    sub-int v4, v8, v0

    :cond_5
    if-eq v2, v10, :cond_6

    if-le v2, v4, :cond_7

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v11, :cond_9

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v8, :cond_8

    move v3, v6

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAllProcess(II)V

    goto :goto_0

    :cond_7
    move v4, v2

    goto :goto_2

    :cond_8
    move v3, v7

    goto :goto_3

    :cond_9
    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_a

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAllProcessTask()V

    goto :goto_0

    :cond_a
    invoke-direct {p0, v2, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAllProcess(II)V

    goto :goto_0
.end method

.method private selectAllItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;II)V
    .locals 18

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v12

    if-nez p3, :cond_3

    const/4 v10, 0x0

    :goto_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x0

    :goto_1
    if-gt v4, v10, :cond_0

    if-gtz p2, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v8, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateMaximumSelectionNumberExceeded(ZII)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v13, :cond_11

    if-lez p2, :cond_11

    const/4 v11, 0x0

    if-eqz v8, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a004d

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_1
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    add-int/lit8 v13, v12, -0x1

    div-int v10, v13, p3

    goto :goto_0

    :cond_4
    mul-int v13, v4, p3

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v13, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v7

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v6, v13, :cond_5

    if-gtz p2, :cond_6

    if-lez p3, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v8, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateMaximumSelectionNumberExceeded(ZII)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v5, :cond_8

    const-string/jumbo v13, "PhotoViewState"

    const-string/jumbo v14, "item is null"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v13, v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v13

    if-nez v13, :cond_b

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v13

    if-eqz v13, :cond_b

    :cond_9
    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a049e

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :cond_a
    const/4 v9, 0x1

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v13

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v13, :cond_e

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_e

    instance-of v13, v5, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v13, :cond_7

    instance-of v13, v5, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-nez v13, :cond_7

    instance-of v13, v5, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v13, :cond_c

    instance-of v13, v5, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v13, :cond_d

    :cond_c
    const/4 v8, 0x1

    goto :goto_4

    :cond_d
    const/4 v8, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v13, :cond_10

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide v16, 0x2000000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-nez v13, :cond_10

    instance-of v13, v5, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v13, :cond_f

    instance-of v13, v5, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v13, :cond_7

    :cond_f
    const/4 v8, 0x1

    goto :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 p2, p2, -0x1

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v13, :cond_2

    if-lez p2, :cond_2

    const/4 v11, 0x0

    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00a8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    :cond_12
    if-eqz v11, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private selectAllProcess(II)V
    .locals 4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectItem(Lcom/sec/android/gallery3d/data/MediaSet;II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isAvailableCount(IZ)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0, p2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getStateIdForSelectAll()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendBixbyResponseForSelectAll(Ljava/lang/String;Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0
.end method

.method private selectAllProcessTask()V
    .locals 5

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$11;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$12;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnProgressListener:Lcom/sec/android/gallery3d/data/OnProgressListener;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/OnProgressListener;Landroid/content/DialogInterface$OnCancelListener;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionTask:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/sec/android/gallery3d/data/MediaSet;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$SelectionTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private selectItem(Lcom/sec/android/gallery3d/data/MediaSet;II)V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v5, v5, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v5, :cond_2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAllItemPickMode(Lcom/sec/android/gallery3d/data/MediaSet;II)V

    :cond_1
    invoke-virtual {p0, v4, v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v5

    invoke-virtual {p1, v7, v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    instance-of v6, v3, Lcom/sec/android/gallery3d/data/ActionImage;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, p1, v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto :goto_1
.end method

.method private setActionBarBGColor(F)V
    .locals 8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const v2, 0x7f020046

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v4, p1

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    float-to-double v4, p1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v4, v6

    if-gez v3, :cond_3

    const/4 v3, 0x0

    :goto_2
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setElevation(F)V

    goto :goto_0

    :cond_2
    const v2, 0x7f020048

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b029d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto :goto_2
.end method

.method private setActionBarMenuColor()V
    .locals 12

    const/4 v11, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a0266

    invoke-virtual {v6, v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v0, v3, v6, v7}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100017

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

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
    instance-of v6, v4, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    :goto_0
    return-void

    :cond_3
    instance-of v6, v4, Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private setActionBarTitleColor(F)V
    .locals 10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_0

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f100019

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-direct {p0, p1, v2, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMiddleColor(FII)I

    move-result v1

    new-instance v3, Landroid/text/SpannableString;

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v8

    const/16 v9, 0x12

    invoke-interface {v3, v6, v7, v8, v9}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setComponentResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->setBasicReferences()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;->setBasicReferences()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->setPhotoView(Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->initializeView()V

    return-void
.end method

.method private setComponetCreate()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->setMode()V

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    const-string/jumbo v1, "PHOTO_VIEW"

    invoke-direct {v0, v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;-><init>(Ljava/lang/String;Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    return-void
.end method

.method private setEnvOnCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    const-string/jumbo v0, "KEY_ITEM_POSITION"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    if-eqz p1, :cond_5

    const-string/jumbo v0, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "KEY_MEDIA_ITEM_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iput-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    if-eqz p1, :cond_6

    const-string/jumbo v0, "KEY_MEDIA_SET_POSITION"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    if-eqz p1, :cond_7

    const-string/jumbo v0, "KEY_FROM_ALBUM_VIEW_STATE"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v3

    :goto_3
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFromAlbumViewState:Z

    if-eqz p1, :cond_8

    const-string/jumbo v0, "pick-from-gallery"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v3

    :goto_4
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFromInsideGallery:Z

    if-eqz p1, :cond_9

    const-string/jumbo v0, "is_from_camera"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v3

    :goto_5
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    if-eqz p1, :cond_a

    const-string/jumbo v0, "KEY_IS_FROM_SHORTCUT"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_6
    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-nez v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_2
    iput v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    :cond_3
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdatePath:Z

    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_5

    :cond_a
    move v3, v1

    goto :goto_6
.end method

.method private setEnvOnCreateForWeChatCamera(Landroid/os/Bundle;)V
    .locals 3

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v0, "KEY_MEDIA_SET_PATH"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    :cond_1
    iput v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    if-eqz p1, :cond_3

    const-string/jumbo v0, "from-Camera"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdatePath:Z

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method private setEnvOnResume()V
    .locals 15

    const/4 v12, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v10, 0x0

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->reload()J

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCategoryTagType:Z

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdatePath:Z

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v9, "mtpMode"

    invoke-static {v6, v9, v10}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getTopSetPathByFilter()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v2, :cond_4

    sget-boolean v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-nez v6, :cond_4

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    sget-boolean v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/data/DataManager;->getAddMtpTopPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    :goto_0
    iput-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoViewMediator:Lcom/sec/samsung/gallery/view/photoview/PhotoViewMediator;

    invoke-virtual {v6, v9}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iput-boolean v10, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDetailViewStarted:Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lez v6, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    monitor-enter v9

    :try_start_0
    new-instance v6, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    invoke-direct {v6, p0}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v6, v11}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMediaItemAdapterSize()I

    move-result v9

    if-ne v6, v9, :cond_c

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMediaItemAdapterSize()I

    move-result v6

    if-lez v6, :cond_c

    move v5, v8

    :goto_2
    if-nez v5, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v6, "pick-max-item"

    invoke-virtual {v1, v6, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v12, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v6

    if-ne v6, v3, :cond_6

    const/4 v5, 0x1

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6, v10, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_3
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v6, :cond_7

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v6, :cond_10

    :cond_7
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateCloudAlbumNameOfActionBar()V

    :goto_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sec/samsung/gallery/features/FeatureNames;->UseStoryAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v6}, Lcom/sec/samsung/gallery/features/GalleryFeature;->clearFeature(Lcom/sec/samsung/gallery/features/FeatureNames;)V

    :cond_8
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getShrinkOption()I

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v9, v0, v10

    aget v8, v0, v8

    aget v7, v0, v7

    const/4 v10, 0x3

    aget v10, v0, v10

    invoke-virtual {v6, v9, v8, v7, v10}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_9
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->setonEvtResume()V

    return-void

    :cond_a
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    goto/16 :goto_0

    :cond_b
    iput-boolean v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdatePath:Z

    goto/16 :goto_1

    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    :cond_c
    move v5, v10

    goto :goto_2

    :cond_d
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v12, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getShrinkOption()I

    move-result v6

    if-eqz v6, :cond_e

    move v6, v7

    :goto_5
    sget-boolean v9, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v9

    sget-object v14, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v9, v14, :cond_f

    move v9, v8

    :goto_6
    invoke-direct {v12, v13, v6, v9}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    invoke-virtual {v11, v12}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_3

    :cond_e
    move v6, v8

    goto :goto_5

    :cond_f
    move v9, v10

    goto :goto_6

    :cond_10
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-eqz v6, :cond_11

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateAlbumNameOfActionBar()V

    goto :goto_4

    :cond_11
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_4
.end method

.method private setFaceTagParam(Landroid/content/Intent;)V
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v7, 0x0

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string/jumbo v6, "PhotoViewState"

    invoke-static/range {v0 .. v6}, Lcom/sec/android/gallery3d/util/PerformanceAnalyzer;->getCursor(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    invoke-static {v7}, Lcom/sec/android/gallery3d/common/Utils;->closeSilently(Landroid/database/Cursor;)V

    throw v2
.end method

.method private setFullScreenMode(Z)V
    .locals 3

    const/16 v2, 0x400

    sget-boolean v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_SHOW_STATUS_BAR:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x400

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showNavigationBar()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFWStatusBarInOpenTheme:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getSystemUiVisibility()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLightStatusBar(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2, v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getStatusBarUiVisibility(ZI)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private setOverFlowColor(F)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const-string/jumbo v14, "action_bar"

    const-string/jumbo v15, "id"

    const-string/jumbo v16, "android"

    invoke-virtual/range {v13 .. v16}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v13, 0x7f0a0266

    invoke-virtual {v12, v13}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v2, v6, v12, v13}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    const/4 v7, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroid/widget/TextView;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_1

    :cond_0
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    :cond_1
    if-nez v7, :cond_2

    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v13, 0x7f10018f

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v13, 0x7f100017

    invoke-static {v12, v13}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v10

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v9, v10}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMiddleColor(FII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v12}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v12, :cond_5

    sget-boolean v12, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->IS_NOS:Z

    if-eqz v12, :cond_4

    const v3, 0x7f02009a

    :goto_1
    instance-of v12, v7, Landroid/widget/TextView;

    if-eqz v12, :cond_8

    new-instance v4, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;

    invoke-direct {v4}, Lcom/sec/samsung/gallery/lib/factory/ViewFactory;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v12

    invoke-interface {v4, v12}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;

    move-object v12, v7

    check-cast v12, Landroid/widget/TextView;

    invoke-interface {v11, v12}, Lcom/sec/samsung/gallery/lib/libinterface/ViewInterface;->clearAllTextEffect(Landroid/widget/TextView;)V

    move-object v12, v7

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_2
    invoke-virtual {v7, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_4
    const v3, 0x7f020098

    goto :goto_1

    :cond_5
    const v3, 0x7f020276

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    cmpl-float v12, p1, v12

    if-nez v12, :cond_7

    const v3, 0x7f020273

    goto :goto_1

    :cond_7
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    const v13, 0x101045c

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v5, v14}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v3, v5, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1

    :cond_8
    instance-of v12, v7, Landroid/widget/ImageView;

    if-eqz v12, :cond_3

    move-object v12, v7

    check-cast v12, Landroid/widget/ImageView;

    invoke-static {v8}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2
.end method

.method private setSelectionViewColor(F)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v8

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100019

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {p0, p1, v5, v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMiddleColor(FII)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f120075

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f120074

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100191

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100190

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v7

    invoke-direct {p0, p1, v5, v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMiddleColor(FII)I

    move-result v2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f120073

    invoke-virtual {v8, v9}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-nez v8, :cond_0

    new-array v6, v11, [[I

    new-array v8, v10, [I

    aput-object v8, v6, v10

    new-array v1, v11, [I

    aput v2, v1, v10

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v6, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method private setTextMenuColor(FI)V
    .locals 10

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getActionbarTextMenu(I)Landroid/widget/TextView;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f10018f

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v8, 0x7f100017

    invoke-static {v7, v8}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-direct {p0, p1, v4, v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMiddleColor(FII)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getAcionbarBackground(I)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEnableButtonBackgrounds(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v1, 0x7f020276

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-nez v7, :cond_3

    const v1, 0x7f020273

    goto :goto_1

    :cond_3
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    const v8, 0x101045c

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v2, Landroid/util/TypedValue;->resourceId:I

    goto :goto_1
.end method

.method private setUpBtnColor(F)V
    .locals 11

    const v8, 0x7f0a02b2

    invoke-direct {p0, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getActionbarUpButton(I)Landroid/widget/ImageButton;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getNavigateUpButtonDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f10018f

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f100012

    invoke-static {v8, v9}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getMiddleColor(FII)I

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

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

.method private showAddcontentErrorDialog(I)V
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0472

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0a0471

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a02f4

    new-instance v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$14;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$14;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showDeleteDialog(I)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v1

    invoke-virtual {v0, v2, p1, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v0, v2, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZI)V

    goto :goto_0
.end method

.method private showNavigationBar()V
    .locals 2

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_NAVIGATION_BAR:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method private sortingByOrderType(Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$16;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$SortByOrderType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sortingByType(Lcom/sec/samsung/gallery/core/MediaType$SortByType;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$16;->$SwitchMap$com$sec$samsung$gallery$core$MediaType$SortByType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/MediaType$SortByType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSortBy:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private startCategoriesViewMode()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$4;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$4;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startChannelViewMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "START_CHANNEL_VIEW_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startNoItemViewState(Ljava/lang/String;)V
    .locals 3

    sget-boolean v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsNoItemViewMode:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->showNoItem()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousViewState(Ljava/lang/Class;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "KEY_MEDIA_SET_PATH"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "KEY_NOITEMSVIEW_MIME_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$5;

    invoke-direct {v2, p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$5;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private switchTopMediaSet(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentMediaFilterType(Lcom/sec/samsung/gallery/core/MediaType$MediaFilterType;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private unselectAll()V
    .locals 5

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAllItemInMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v1, v3, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return-void

    :cond_1
    const/16 v1, 0x1f4

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_1

    :cond_3
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_1
.end method

.method private updateAlbumNameOfActionBar()V
    .locals 11

    const v10, 0x7f0a02dd

    const/4 v9, 0x1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCategoryTagType:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    if-gt v7, v9, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceTag:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_3

    instance-of v7, v2, Lcom/sec/android/gallery3d/remote/nearby/NearbyDevice;

    if-nez v7, :cond_3

    if-eqz v0, :cond_3

    const-string/jumbo v7, "/"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v9

    :cond_3
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v0, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8, v10}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getEventAlbumTimeInfo()Ljava/lang/String;

    move-result-object v0

    :cond_5
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a04e2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_7
    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_8
    iget v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-nez v7, :cond_9

    if-ltz v4, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSetCount()I

    move-result v7

    if-ge v4, v7, :cond_0

    :cond_9
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-eqz v7, :cond_a

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_a
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    goto :goto_1

    :cond_b
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v7

    instance-of v7, v7, Lcom/sec/samsung/gallery/mapfragment/MapViewState;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const v8, 0x7f0a0248

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCoverScrollUp()Z

    move-result v7

    if-eqz v7, :cond_10

    sget-object v7, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v7}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getImageCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightModeFromDetail:Z

    if-eqz v7, :cond_d

    move v6, v3

    :goto_2
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getImageCountString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v1, :cond_e

    if-eqz v6, :cond_e

    const-string/jumbo v7, "  "

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getVideoCountString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getVideoCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v6

    goto :goto_2

    :cond_e
    const-string/jumbo v7, ""

    goto :goto_3

    :cond_f
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v0, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const-string/jumbo v8, ""

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v0, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private updateCloudAlbumNameOfActionBar()V
    .locals 7

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const v2, 0x7f0a034e

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v4, :cond_2

    const v2, 0x7f0a00a5

    :cond_2
    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getImageCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getVideoCountInAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getActionBarView()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getImageCountString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    const-string/jumbo v4, "  "

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getVideoCountString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v4, ""

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private updateLogicalAlbumMenu(Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

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

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v2, :cond_3

    :cond_0
    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v2, :cond_1

    sget v0, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    :cond_3
    invoke-virtual {p0, p3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateMaximumSelectionNumberExceeded(I)V

    goto :goto_2
.end method

.method private updateRenameAlbumMenu(Landroid/view/Menu;)V
    .locals 5

    const v4, 0x7f120276

    const/4 v3, 0x0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseRenameAlbum:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaSet;

    const v1, 0x7f1202c9

    invoke-static {p1, v1, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sec/android/gallery3d/data/RenameHideBlockList;->isBlockedAlbum(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, v4, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1, v4, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemVisibility(Landroid/view/Menu;IZ)V

    goto :goto_0
.end method


# virtual methods
.method enterSelectionMode()V
    .locals 9

    const/4 v8, 0x0

    const/4 v4, 0x1

    const-string/jumbo v3, "PhotoViewState"

    const-string/jumbo v5, "enterSelectionMode"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGifSelectMode(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setCollageSelectMode(Z)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v8, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v6, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getPhotoLayoutConfig()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v3, :cond_7

    const/4 v3, 0x2

    :goto_0
    invoke-direct {v6, v7, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_2
    sget-boolean v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v3

    invoke-interface {v3, v8}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->setEnableTab(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->logDCEnterSelectionMode(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x7

    if-eq v3, v5, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_5

    :cond_4
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v3, :cond_6

    :cond_5
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v3, :cond_8

    move v1, v4

    :goto_1
    if-ne v1, v4, :cond_9

    move v0, v4

    :goto_2
    invoke-direct {p0, v2, v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectItem(Lcom/sec/android/gallery3d/data/MediaSet;II)V

    :cond_6
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_7
    move v3, v4

    goto :goto_0

    :cond_8
    const/16 v1, 0x1f4

    goto :goto_1

    :cond_9
    add-int/lit8 v0, v1, -0x1

    goto :goto_2
.end method

.method exitSelectionMode()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode(Z)V

    return-void
.end method

.method public getAcionbarStyle()I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionbarStyle:I

    return v0
.end method

.method protected getComposeAdapter()Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method public getContentsForFaceTag()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getDCScreenStateId()Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->getScreenStateId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getGalleryActivity()Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method public getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method getMediaItemAdapterSize()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getSAScreenId()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "505"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, "504"

    goto :goto_0
.end method

.method isAvailableCount(IZ)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFromInsideGallery:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    const/16 v3, 0x3e8

    if-le p1, v3, :cond_0

    const/16 v1, 0x3e8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0254

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelected(I)Z
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v1

    return v1
.end method

.method public isTabEnabledActivityState()Z
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDetailViewStarted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->onBackPressed()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/TabActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    const v2, 0x7f12007a

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

    const v2, 0x7f120285

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePhotoCover:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v3, 0x7f020051

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PhotoViewState"

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

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v3, "PhotoViewState onCreate Start"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "KEY_IS_ENTER_MTP_PHOTO_VIEW"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->initMtpMode()V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    new-instance v0, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v3, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    new-instance v0, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->tempTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    if-eqz p1, :cond_4

    const-string/jumbo v0, "KEY_IS_ENTER_RECYCLEBIN_PHOTO_VIEW"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-eqz p1, :cond_5

    const-string/jumbo v0, "KEY_IS_ENTER_SCLOUD_PHOTO_VIEW"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_6

    const-string/jumbo v0, "KEY_IS_SIGHT_MODE"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const-string/jumbo v0, "KEY_IS_SIGHT_MODE_FROM_DETAIL"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightModeFromDetail:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightModeFromDetail:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setFullScreenMode(Z)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setEnvOnCreateForWeChatCamera(Landroid/os/Bundle;)V

    :goto_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setComponetCreate()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "eventViewColCnt"

    invoke-static {v0, v1, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    :cond_1
    :goto_6
    new-instance v1, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :goto_7
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoAdapterCfg:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLoaderConfig;

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_DEVICE_COG:Z

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/PhotoViewDCHandler;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    new-instance v0, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, v1}, Lcom/samsung/android/devicecog/gallery/touchevent/PhotoViewStateDCTouchEvent;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    :cond_2
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoViewState onCreate End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->initSpinner(Z)V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto/16 :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_2

    :cond_6
    move v0, v2

    goto/16 :goto_3

    :cond_7
    move v0, v2

    goto/16 :goto_4

    :cond_8
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setEnvOnCreate(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_OTHER_CATEGORY:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/core/TabTagType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v0, :cond_c

    :cond_a
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMaxLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    goto/16 :goto_6

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "categoryViewColCnt"

    invoke-static {v0, v1, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    goto/16 :goto_6

    :cond_c
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_1

    :cond_d
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "photoViewColCnt"

    invoke-static {v0, v1, v4}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    goto/16 :goto_6

    :cond_e
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    goto/16 :goto_7
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMenu:Landroid/view/Menu;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->startCommand(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onDestroy()V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "PHOTO_VIEW_EXIT_SELECTION"

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isStackSyncing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;->cancel(Z)Z

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/photoview/UpdateSelectionModeTask;

    :cond_3
    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    goto :goto_0
.end method

.method public onDisplayChanged(I)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNavigationBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->resetNavigationBarPosition(Z)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCategoryView(Lcom/sec/samsung/gallery/core/TabTagType;Ljava/lang/Boolean;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1080"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseHierarchicalUpButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isCameraQuickViewOnLockscreen(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setFromCamera(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/core/ViewByFilterType;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewByType(IZ)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    const-class v1, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/app/StateManager;->pushStateAtBottom(Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-boolean v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setNeedTabUI(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryTab()Lcom/sec/samsung/gallery/drawer/GalleryTabable;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/samsung/gallery/drawer/GalleryTabable;->moveTab(I)V

    :cond_2
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onBackPressed()V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    return-void
.end method

.method public onPause()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "PhotoViewState onPause Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDisengageMode()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->detach()V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setDisengageMode(Z)V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_1
    sget-boolean v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    :cond_2
    iput v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mShrinkOption:I

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLockInSelectionMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "PHOTO_VIEW"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onPause()V

    :cond_5
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isEventViewMode()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    :cond_6
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_7
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseActionBarSubTitle:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_8
    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "PhotoViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateLogicalAlbumMenu(Landroid/view/Menu;)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateRenameAlbumMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/TabActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v1, :cond_0

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "START_CAMERA"

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->startChannelViewMode()V

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x0

    :goto_3
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->startCategoriesViewMode()V

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    :goto_4
    array-length v1, p2

    if-ge v0, v1, :cond_3

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->startChannelViewMode()V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x0

    :goto_5
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v2, "GFPA"

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/util/ContextProviderLogUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/16 v2, 0x904

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startContactActivity(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :pswitch_6
    const/4 v0, 0x0

    :goto_6
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p3, v0

    if-eq v1, v4, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v1

    const-class v2, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method public onResume()V
    .locals 14

    const/4 v13, 0x0

    const/4 v2, 0x1

    const/4 v12, 0x4

    const/4 v11, 0x0

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNeedIdleProcess:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->addGLIdleListener()V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mTabPos:I

    :cond_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFirstMediaCheck:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryApp;->setCurrentClusterType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mShrinkOption:I

    or-int/2addr v4, v0

    :cond_1
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsEasyMode:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsEasyMode:Z

    if-eqz v0, :cond_e

    or-int/lit16 v4, v4, 0x100

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->setModeLevel(I)V

    or-int/lit16 v4, v4, 0x80

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;->getThumbSizeType(I)I

    move-result v10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getFirstLoadingCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mState:I

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    :cond_4
    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/TabStateManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->isTabTransition()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->addLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePhotoCover:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->selectAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setComponentResume()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->checkAndSetValidMediaItemSource()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setEnvOnResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    :cond_7
    iput-boolean v11, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDetailViewStarted:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->USE_MTP_VIEW:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mtpMode"

    invoke-static {v0, v1, v11}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadBooleanKey(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "mtpDeviceName"

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadStringKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v6, v11}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Ljava/lang/String;Z)V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v13}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v13, v11}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousBitmap(Landroid/graphics/Bitmap;I)V

    const v0, 0x7f0a0266

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getActionbarOverFlow(I)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOverFlowView:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshActionBarTheme(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/filterview/CategoryTagType;->setCurrentCategoryType(Landroid/content/res/Resources;Ljava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    :cond_a
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    if-eqz v8, :cond_b

    iput v12, v8, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v8, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_b
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->updateStatusBarColor(Landroid/view/Window;Landroid/content/Context;)V

    :cond_c
    invoke-super {p0}, Lcom/sec/android/gallery3d/app/TabActivityState;->onResume()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;)V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "PhotoViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_d
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    if-ne v0, v12, :cond_2

    iput v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    goto/16 :goto_1

    :cond_f
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    sget-boolean v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->FEATURE_USE_TAB_UI:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsMtpEnter:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v9

    check-cast v9, Lcom/sec/android/gallery3d/app/TabStateManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mTabPos:I

    invoke-virtual {v9, p0, v13, v0}, Lcom/sec/android/gallery3d/app/TabStateManager;->setTabState(Lcom/sec/android/gallery3d/app/TabActivityState;Landroid/os/Bundle;I)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v11}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    goto/16 :goto_3
.end method

.method protected onSaveState(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "PhotoViewState"

    const-string/jumbo v1, "setOnSaveState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string/jumbo v0, "KEY_ITEM_POSITION"

    iget v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_MEDIA_SET_PATH"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "KEY_MEDIA_ITEM_PATH"

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "KEY_MEDIA_SET_POSITION"

    iget v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "KEY_FROM_ALBUM_VIEW_STATE"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFromAlbumViewState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "is_from_camera"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromCamera:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v0, "KEY_IS_FROM_SHORTCUT"

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    if-ne p2, v4, :cond_0

    new-array v1, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v1, v5

    aput-object p3, v1, v6

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "START_ALBUM_OPERATIONS"

    invoke-virtual {v4, v5, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setFaceTagParam(Landroid/content/Intent;)V

    if-eqz p2, :cond_1

    const/4 v4, 0x4

    new-array v2, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v5

    aput-object v0, v2, v6

    sget-object v4, Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;->ASSIGN_TAG:Lcom/sec/samsung/gallery/controller/StartFaceTagCmd$FaceTagAction;

    aput-object v4, v2, v7

    const/4 v4, 0x3

    aput-object p3, v2, v4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "START_FACE_TAG"

    invoke-virtual {v4, v5, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v5, "EXIT_SELECTION_MODE"

    invoke-virtual {v4, v5, v3}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :sswitch_2
    if-ne p2, v4, :cond_0

    invoke-direct {p0, p3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->addContentstoEvent(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x203 -> :sswitch_1
        0x205 -> :sswitch_2
        0xc00 -> :sswitch_0
    .end sparse-switch
.end method

.method public onViewInitialize()V
    .locals 3

    const-string/jumbo v1, "PhotoViewState"

    const-string/jumbo v2, "onViewInitialize"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mPhotoEventHandle:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->setEnvGLViewInitialize()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnEnlargeAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mOnShrinkAnimListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V

    goto :goto_0
.end method

.method prePenSelectionRemoveItem(I)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3, v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-nez v0, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    invoke-virtual {v2, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a040f

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v2, v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isAvailableCount(IZ)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_2
    move v3, v1

    goto :goto_0
.end method

.method public processActionBarVI(F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setOverFlowColor(F)V

    const v0, 0x7f12007c

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setTextMenuColor(FI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120290

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f1202c2

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f1202a3

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setTextMenuColor(FI)V

    const v0, 0x7f120275

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setTextMenuColor(FI)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setUpBtnColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionBarTitleColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setActionBarBGColor(F)V

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->setSelectionViewColor(F)V

    return-void
.end method

.method public refreshActionBarTheme(I)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePhotoCover:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "PhotoViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshActionBarTheme style ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$7;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;I)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setActionbarStyle(I)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionbarStyle:I

    return-void
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    check-cast p3, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object p3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mShrinkOption:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    :goto_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_5

    const/16 v0, 0x20

    :cond_3
    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mShrinkOption:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mShrinkOption:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mFlags:I

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

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

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method public showDeleteDialog(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    return-void
.end method

.method public startExpandAction()V
    .locals 4

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mData:Landroid/os/Bundle;

    invoke-static {v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x206

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v1

    const-string/jumbo v2, "VIEW_MODE_SWITCH"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 24

    move-object/from16 v7, p2

    check-cast v7, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v8

    const-string/jumbo v19, "PhotoViewState"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "processEvent = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_EVENTVIEW:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showDeleteDialog(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_2

    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showDeleteDialog(I)V

    goto :goto_0

    :cond_2
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getSAScreenId()Ljava/lang/String;

    move-result-object v19

    const-string/jumbo v20, "5035"

    invoke-static/range {v19 .. v20}, Lcom/sec/samsung/gallery/util/SamsungAnalyticsLogUtil;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->selectAll()V

    goto :goto_0

    :cond_3
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->unselectAll()V

    goto :goto_0

    :cond_4
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SECRETBOX:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v20

    const/16 v21, 0x7

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    const/16 v21, 0x3

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v12, v1, v2, v3}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_FILTER_DATA:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->handleFilterPhotos()V

    goto :goto_0

    :cond_6
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_START_SLIDESHOW:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v19 .. v21}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startSlideshow(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_9
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_b
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_IMPORT:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v19, v0

    const-string/jumbo v20, "SHOW_IMPORT_DIALOG"

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v23, v0

    aput-object v23, v21, v22

    const/16 v22, 0x1

    const/16 v23, 0x0

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_CATEGORY:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v4

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    aput-object v20, v13, v19

    const/16 v19, 0x1

    aput-object v4, v13, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v20

    aput-object v20, v13, v19

    const/16 v19, 0x3

    sget-object v20, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->REMOVE_PHOTO_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v20, v13, v19

    const/16 v19, 0x4

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v19, v0

    const-string/jumbo v20, "START_CATEGORY_TAG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_EDIT_CATEGORY:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getContentsForFaceTag()Ljava/util/ArrayList;

    move-result-object v4

    const/16 v19, 0x5

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    aput-object v20, v13, v19

    const/16 v19, 0x1

    aput-object v4, v13, v19

    const/16 v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getMediaItemArrayList()Ljava/util/ArrayList;

    move-result-object v20

    aput-object v20, v13, v19

    const/16 v19, 0x3

    sget-object v20, Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;->EDIT_TAG:Lcom/sec/samsung/gallery/controller/StartCategoryTagCmd$CategoryAction;

    aput-object v20, v13, v19

    const/16 v19, 0x4

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-object/from16 v19, v0

    const-string/jumbo v20, "START_CATEGORY_TAG"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_ADD_CONTENTS:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v5

    const/16 v19, 0x1f4

    move/from16 v0, v19

    if-lt v5, v0, :cond_f

    const/16 v19, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showAddcontentErrorDialog(I)V

    goto/16 :goto_0

    :cond_f
    new-instance v15, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    const-class v20, Lcom/sec/android/gallery3d/app/GalleryActivity;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-boolean v19, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->IS_NOS:Z

    if-eqz v19, :cond_10

    const-string/jumbo v19, "com.samsung.intent.action.MULTIPLE_PICK"

    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v19, "*/*"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v19, "android.intent.extra.LOCAL_ONLY"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v19, "pick-from-gallery"

    const/16 v20, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v19, "pick-max-item"

    rsub-int v0, v5, 0x1f4

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v19

    move/from16 v0, v19

    invoke-static {v15, v0}, Lcom/samsung/android/devicecog/gallery/DCUtils;->setExtraExecuteFromBixby(Landroid/content/Intent;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    const/16 v20, 0x205

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_10
    const-string/jumbo v19, "android.intent.action.MULTIPLE_PICK"

    goto :goto_1

    :cond_11
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_SELECTION_BUFFER:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_13

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Lcom/sec/android/gallery3d/ui/SelectionManager;->get(I)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v11

    instance-of v0, v11, Lcom/sec/android/gallery3d/data/MediaItem;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    const/4 v12, 0x0

    move-object v10, v11

    check-cast v10, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v10}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v14

    if-eqz v14, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v12

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v12, v10}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v20

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isAvailableCount(IZ)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateCountOnActionBar()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    goto/16 :goto_0

    :cond_13
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_TRANSFER_ROOTVIEW_TO_UPDOWN:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_14

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getIntData()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->startTransferUpDown(I)V

    goto/16 :goto_0

    :cond_14
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_COLLAGE:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_16

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_16
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_GIF:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_18

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    if-eqz v19, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_18
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_RESTORE_FROM_RECYCLEBIN:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_19

    const/16 v19, 0x4

    move/from16 v0, v19

    new-array v13, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    aput-object v20, v13, v19

    const/16 v19, 0x1

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v13, v19

    const/16 v19, 0x2

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v13, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v20

    aput-object v20, v13, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v19

    const-string/jumbo v20, "SCLOUD_RECYCLEBIN_FILE_PROCESSING"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_19
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_FROM_RECYCLEBIN:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1a

    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG_FROM_RECYCLEBIN:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showDeleteDialog(I)V

    goto/16 :goto_0

    :cond_1a
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1b

    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_EMPTY_TRASH_DIALOG_FROM_RECYCLEBIN:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->showDeleteDialog(I)V

    goto/16 :goto_0

    :cond_1b
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ITEM:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v21, v0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ITEM:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1c
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SELECT_ALL_WTIH_CONTENT_TYPE:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v21, v0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_SELECT_ALL_WITH_PARAMETER:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1d
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_ENTER_EMPTY_SELECTION:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v20

    move-object/from16 v1, v19

    iput v0, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->enterSelectionMode()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_1e
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_START_DETAILVIEW:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCHandler:Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCSelectionListener:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;

    move-object/from16 v21, v0

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;

    sget-object v22, Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;->TYPE_ENTER_DETAIL_VIEW:Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->executeDCSelectItemTask(Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$SelectionListener;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectionParameter;Lcom/samsung/android/devicecog/gallery/selectiontask/DCSelectItemTask$JobType;)V

    goto/16 :goto_0

    :cond_1f
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_SORT_BY:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_20

    new-instance v19, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object/from16 v20, v0

    new-instance v21, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$3;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState$3;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    invoke-direct/range {v19 .. v21}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;-><init>(Landroid/content/Context;Lcom/sec/samsung/gallery/view/common/SortByTypeChangeListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByType()Lcom/sec/samsung/gallery/core/MediaType$SortByType;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/gallery3d/data/MediaSet;->getSortByOrderType()Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Lcom/sec/samsung/gallery/view/common/SortByTypeDialog;->showDialog(Lcom/sec/samsung/gallery/core/MediaType$SortByType;Lcom/sec/samsung/gallery/core/MediaType$SortByOrderType;)V

    goto/16 :goto_0

    :cond_20
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_TOUCH_ACTION:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_21

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setGlComposeView(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentLayout:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->setCurrentLayout(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDCTouchEvent:Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;

    move-object/from16 v19, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/devicecog/gallery/touchevent/ActivityStateDCTouchEvent;->doDCTouchEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_21
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SORT_BY:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_22

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/core/Event;->getData()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v13, v19

    check-cast v13, [Ljava/lang/String;

    const/16 v19, 0x0

    aget-object v16, v13, v19

    const/16 v19, 0x1

    aget-object v17, v13, v19

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->handleSortByForDC(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_22
    sget v19, Lcom/sec/samsung/gallery/core/Event;->EVENT_DC_CMD_SHARE:I

    move/from16 v0, v19

    if-ne v8, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->chooseShareDialog()V

    goto/16 :goto_0
.end method

.method updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 10

    const/4 v9, 0x6

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7, p1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7, v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    if-ne v1, v0, :cond_2

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v7

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v8

    if-ne v7, v8, :cond_2

    move v2, v5

    :goto_1
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    sget v7, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-ne v4, v7, :cond_3

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v6, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v6, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v5, v4, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5, v6, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_2

    :cond_4
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-ne v4, v9, :cond_5

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v6, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5, v6, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_3

    :cond_6
    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-ne v4, v1, :cond_7

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v7, v6, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    :goto_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto/16 :goto_0

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5, v6, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    goto :goto_4
.end method

.method public updateCountOnActionBar()V
    .locals 4

    const/4 v3, 0x6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v1, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v2, v3, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getSelectedCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    return-void

    :cond_0
    const/16 v1, 0x1f4

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

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

    sput-object v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->refreshDualScreenFocus()V

    :cond_0
    return-void
.end method

.method updateMaximumSelectionNumberExceeded(I)V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0254

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    return-void
.end method
