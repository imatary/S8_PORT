.class public Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;
.super Lcom/sec/android/gallery3d/app/ActivityState;
.source "FavoriteViewState.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;,
        Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$SelectionTask;,
        Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;,
        Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DynamicScaleAnimConfig;,
        Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;
    }
.end annotation


# static fields
.field private static final COLCNT_LEVEL_DEFAULT:I = 0x1

.field private static final COLCNT_LEVEL_SELECT:I = 0x1

.field private static final KEY_VIDEO_CLIP:Ljava/lang/String; = "VIDEO_CLIP_MULTIPIC"

.field private static final PREFKEY_FAVORITE_VIEW_COLCNT:Ljava/lang/String; = "favoriteViewColCnt"

.field private static final REQUEST_ALBUM_LIST:I = 0xc00

.field private static final TAG:Ljava/lang/String; = "FavoriteViewState"

.field private static final VIDEO_CLIP_MAX_ITEM:I = 0xf


# instance fields
.field private mAlbumIndex:I

.field private mAlbumItemIndex:I

.field private final mAlbumViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

.field private mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

.field private mCurrentTopSetPath:Ljava/lang/String;

.field private mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mEAMReceiver:Landroid/content/BroadcastReceiver;

.field private mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

.field private mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

.field private final mFavoriteViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

.field private mFirstMediaCheck:Z

.field private mFromGalleryWidget:Z

.field private mFromGifMaker:Z

.field private mFromInsideGallery:Z

.field private mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

.field private mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsCollageMode:Z

.field private mIsEasyMode:Z

.field private mIsGifMode:Z

.field private mIsPickerMode:Z

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mMenu:Landroid/view/Menu;

.field private final mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

.field private volatile mNeedIdleProcess:Z

.field private mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

.field private mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mUpdatePath:Z

.field private mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/app/ActivityState;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNeedIdleProcess:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumIndex:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumItemIndex:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdatePath:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;

    const-string/jumbo v1, "FAVORITE_VIEW"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFavoriteViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$2;

    const-string/jumbo v1, "FAVORITE_VIEW_EXIT_SELECTION"

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v0, p0, v1, v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$2;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    new-instance v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$3;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$20;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$20;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailViewInUIThread(IIZ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectItem(II)V

    return-void
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->enterSelectionMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailViewInUIThread(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    return-void
.end method

.method static synthetic access$2900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$3100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    return v0
.end method

.method static synthetic access$3200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->prePenSelectionRemoveItem(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;IZZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableCount(IZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->exitSelectionMode()V

    return-void
.end method

.method static synthetic access$4002(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$4100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$4200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$4502(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$4600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$4700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$4800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5002(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;I)I
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return p1
.end method

.method static synthetic access$5100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFlags:I

    return v0
.end method

.method static synthetic access$5200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startChannelViewMode()V

    return-void
.end method

.method static synthetic access$5400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lorg/puremvc/java/multicore/patterns/facade/Facade;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/glcore/GlRootView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailView(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailView(IIZ)V

    return-void
.end method

.method static synthetic access$6100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$6400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$6900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7000(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    return-void
.end method

.method static synthetic access$7200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/data/DataManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/utils/EditModeHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNeedIdleProcess:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNeedIdleProcess:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->checkMediaAvailability()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    return-object v0
.end method

.method static synthetic access$902(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;)Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdateSelectionModeTask:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$UpdateSelectionModeTask;

    return-object p1
.end method

.method private addGLIdleListener()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "ON_GL_IDLE_TIMER"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;->ADD_GL_IDLE_LISTENER:Lcom/sec/samsung/gallery/controller/GLIdleTimerCmd$GLIdleTimerCmdType;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$22;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$22;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V
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

.method private checkMediaAvailability()V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v5

    if-gtz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startTimeViewState()V

    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFirstMediaCheck:Z

    return-void

    :cond_2
    move v2, v4

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFirstMediaCheck:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setDisplaySearchIcon()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v5, :cond_4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v5, :cond_4

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v5, :cond_1

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v3, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setDisplaySearchIcon()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v5, :cond_6

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v5, :cond_6

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v5, :cond_1

    :cond_6
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v5, v3, v4, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    goto :goto_1
.end method

.method private enterSelectionMode()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->enterSelectionMode()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->closeDropDownPopup()V

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setGifSelectMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->setCollageSelectMode(Z)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForMultiPick;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v2, 0x0

    invoke-virtual {v1, v5, v4, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v1, v1, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-direct {p0, v4, v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectItem(II)V

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v2, v3, v5}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_0
.end method

.method private exitSelectionMode()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->leaveSelectionMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForNormal;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setDisplaySearchIcon()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v4, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setMode(IILjava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    :cond_3
    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setGifMode(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCollageMode(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v1, 0x4

    iput v1, v0, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    return-void
.end method

.method private finishCurrentViewState()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    return-void
.end method

.method private getDefaultPath()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v2, Lcom/sec/samsung/gallery/core/ViewByFilterType;->LOCAL:Lcom/sec/samsung/gallery/core/ViewByFilterType;

    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/utils/DataPath;->getViewByTopSetPath(Landroid/content/Context;Lcom/sec/samsung/gallery/core/ViewByFilterType;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->newClusterPath(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initFavoriteViewEventHandler()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const-class v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentViewMode(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method private isAvailableCount(IZZ)Z
    .locals 10

    const v9, 0x7f0a0254

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    if-nez v5, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromInsideGallery:Z

    if-eqz v5, :cond_3

    const/4 v1, 0x1

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    if-eqz p3, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    move v4, v1

    goto :goto_0

    :cond_3
    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGalleryWidget:Z

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "select_num_key"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_2
    if-eq v2, v7, :cond_4

    if-le p1, v2, :cond_4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v5, v9, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :cond_4
    if-eqz p2, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isPenSelectionMode()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "pick-min-item"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ge p1, v2, :cond_1

    if-le v2, v4, :cond_1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a025b

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v8

    invoke-virtual {v5, v6, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "pick-max-item"

    const/16 v6, 0x1f4

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_2

    :cond_6
    const/16 v5, 0x3e8

    if-le p1, v5, :cond_1

    const/16 v2, 0x3e8

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-virtual {v5, v9, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private isAvailableEAM()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;)Z
    .locals 9

    const v8, 0x7f0a049e

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-nez v3, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1, v8}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableCount(IZZ)Z

    move-result v1

    goto :goto_0
.end method

.method private prePenSelectionRemoveItem(II)Z
    .locals 10

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v4, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_1
    invoke-virtual {v3, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a040f

    move-object v4, v0

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v3, v1, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v2, 0x1

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    invoke-direct {p0, v5, v6, v7}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableCount(IZZ)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    move v4, v2

    goto :goto_0
.end method

.method private refreshDualScreenFocus()V
    .locals 5

    const/4 v0, -0x1

    sget-object v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    sget-object v3, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v1

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    if-nez v1, :cond_1

    const-string/jumbo v2, "FavoriteViewState"

    const-string/jumbo v3, "refreshDualScreenFocus item null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string/jumbo v2, "FavoriteViewState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshDualScreenFocus path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v2, "FavoriteViewState"

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    sget-object v3, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setDualScreenFocusPath(Lcom/sec/android/gallery3d/data/Path;)V

    :goto_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->updateDualScreenFocus(I)V

    :goto_2
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "FavoriteViewState"

    const-string/jumbo v3, "refreshDualScreenFocus :: mMediaItemAdapter is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v2, "FavoriteViewState"

    const-string/jumbo v3, "refreshDualScreenFocus :: mComposeView is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$21;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private selectAll()V
    .locals 9

    const/4 v8, -0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v6, "pick-max-item"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v6, :cond_1

    if-eq v1, v8, :cond_1

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectLimitedAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    :goto_0
    const-string/jumbo v6, "pick-max-item"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v6, :cond_0

    if-eq v2, v8, :cond_0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v5

    if-lt v5, v2, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showMaximumSelectionNumberExceeded(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_2

    const/16 v1, 0x1f4

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectLimitedAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGalleryWidget:Z

    if-eqz v6, :cond_3

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v6, :cond_3

    const/16 v1, 0x3e8

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_3
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v6, :cond_4

    sget v1, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_4
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v6, :cond_5

    const/4 v1, 0x6

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_5
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "select_num_key"

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_6
    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromInsideGallery:Z

    if-nez v6, :cond_7

    const/16 v1, 0x1f4

    invoke-direct {p0, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto :goto_0

    :cond_7
    const/16 v6, 0x3e8

    if-lt v4, v6, :cond_8

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->runSelectionTask(Lcom/sec/android/gallery3d/data/MediaSet;)V

    goto/16 :goto_0

    :cond_8
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllPostProcess()V

    goto/16 :goto_0
.end method

.method private selectAllPostProcess()V
    .locals 4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    invoke-direct {p0, v1, v2, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableCount(IZZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V

    return-void
.end method

.method private selectAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;ILcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;)V
    .locals 19

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const/4 v14, -0x1

    move/from16 v0, p2

    if-eq v0, v14, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v13

    sub-int v6, p2, v13

    const/4 v5, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v15

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v9, 0x1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v10, :cond_5

    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->isCancelled()Z

    move-result v14

    if-eqz v14, :cond_1

    :goto_2
    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-wide/16 v14, 0x1

    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    const-wide/16 v14, 0x1

    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-virtual {v0, v14, v15, v1}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->increaseProgress(JZ)V

    :cond_2
    if-eqz v3, :cond_f

    if-gtz v6, :cond_f

    if-lez p2, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a0254

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v14, :cond_d

    sget v4, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    :cond_3
    :goto_3
    if-lez v4, :cond_4

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01e2

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v14, :cond_8

    if-eqz v3, :cond_6

    if-gtz v6, :cond_6

    if-gtz p2, :cond_8

    :cond_6
    const/4 v12, 0x0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a004d

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_7
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v14, :cond_b

    if-eqz v3, :cond_9

    if-gtz v6, :cond_9

    if-gtz p2, :cond_b

    :cond_9
    const/4 v12, 0x0

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a00a8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    :cond_a
    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_b
    if-eqz p3, :cond_c

    invoke-virtual/range {p3 .. p3}, Lcom/sec/samsung/gallery/view/utils/SelectionUpdateTask;->setFinishingState()V

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14, v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/Map;)V

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v14, :cond_3

    const/4 v4, 0x6

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01e1

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_4

    :cond_f
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v14, v14, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v15, 0x6

    if-eq v14, v15, :cond_10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-nez v14, :cond_10

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v14, :cond_19

    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v14, v7}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v14

    if-nez v14, :cond_13

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v14

    if-eqz v14, :cond_13

    :cond_11
    if-eqz v9, :cond_12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v15, 0x7f0a049e

    invoke-static {v14, v15}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v9, 0x0

    :cond_12
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_13
    if-eqz v3, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14, v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v14

    if-nez v14, :cond_12

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v14, :cond_15

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-eqz v14, :cond_16

    :cond_15
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v14, :cond_18

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v14

    const-wide v16, 0x2000000000L

    and-long v14, v14, v16

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_18

    :cond_16
    instance-of v14, v7, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v14, :cond_12

    instance-of v14, v7, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v14, :cond_17

    instance-of v14, v7, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v14, :cond_12

    :cond_17
    const/4 v5, 0x1

    goto :goto_5

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    if-eqz v3, :cond_12

    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_19
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7, v11}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    goto :goto_5
.end method

.method private selectItem(II)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v11, v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v6, :cond_0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v11, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v12, 0x6

    if-ne v11, v12, :cond_2

    const/16 v4, 0x1f4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v11

    if-lt v11, v4, :cond_2

    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v11

    if-nez v11, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showMaximumSelectionNumberExceeded(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v8, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a040f

    move-object v11, v5

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v8, v6, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableCount(IZZ)Z

    move-result v12

    invoke-virtual {v11, v12}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateDoneButton(Z)V

    invoke-direct/range {p0 .. p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_3
    move-object v11, v5

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v11, "VIDEO_CLIP_MULTIPIC"

    const/4 v12, 0x0

    invoke-virtual {v3, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    const/16 v11, 0xf

    if-lt v2, v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a018d

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/16 v15, 0xf

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v11, :cond_b

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    const/4 v9, 0x0

    sget v11, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-lt v2, v11, :cond_6

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a01e3

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    sget v15, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_5
    :goto_2
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    instance-of v11, v5, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v11, :cond_7

    instance-of v11, v5, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v11, :cond_8

    :cond_7
    move-object v11, v5

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    move-object v11, v5

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v11

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a049e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_8
    instance-of v11, v5, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v11, :cond_9

    instance-of v11, v5, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v11, :cond_a

    :cond_9
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a004d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_a
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a049e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    const/4 v9, 0x0

    const/4 v11, 0x6

    if-lt v2, v11, :cond_c

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00a7

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x6

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    :cond_c
    instance-of v11, v5, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v11, :cond_d

    instance-of v11, v5, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v11, :cond_f

    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00a8

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_e
    :goto_3
    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v12

    const-wide v14, 0x2000000000L

    and-long/2addr v12, v14

    const-wide/16 v14, 0x0

    cmp-long v11, v12, v14

    if-nez v11, :cond_e

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a049e

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_10
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a040e

    move-object v11, v5

    check-cast v11, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v11}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v12, v13, v14, v0, v1}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    invoke-virtual {v8, v6, v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    goto/16 :goto_1
.end method

.method private selectLimitedAllProcess(Lcom/sec/android/gallery3d/data/MediaSet;I)V
    .locals 11

    const/4 v10, 0x6

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    sub-int v1, p2, v7

    if-lez v1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showMaximumSelectionNumberExceeded(I)V

    :goto_0
    return-void

    :cond_1
    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v4, 0x1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_3

    if-gtz v1, :cond_4

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGalleryWidget:Z

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-eq v8, v10, :cond_2

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    if-eqz v8, :cond_3

    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showMaximumSelectionNumberExceeded(I)V

    :cond_3
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Ljava/util/Map;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-nez v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v10, :cond_9

    :cond_5
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v8, v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_6
    if-eqz v4, :cond_7

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a049e

    invoke-static {v8, v9}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v4, 0x0

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8, v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-direct {p0, p1, v2, v6}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_9
    invoke-direct {p0, p1, v2, v6}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->addItemtoTempMap(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaItem;Ljava/util/Map;)V

    goto :goto_2
.end method

.method private setActivityTitle()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getResumeStateThroughActivityLifeCycle()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0442

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setDisplaySearchIcon()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method private setFirstLoding(I)V
    .locals 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    :goto_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    invoke-static {v6, v3, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridColumnsCount(Landroid/content/res/Resources;ZLcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)[I

    move-result-object v6

    aget v0, v6, p1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    iget-boolean v7, v7, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseGroupTitle:Z

    invoke-static {v6, v0, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridRowCount(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)I

    move-result v4

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6, p1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getGridGap(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)I

    move-result v6

    add-int/lit8 v7, v0, 0x1

    mul-int v1, v6, v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getDisplayWidth(Z)I

    move-result v7

    sub-int/2addr v7, v1

    div-int/2addr v7, v0

    invoke-virtual {v6, v7, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setItemWidthForPlayIcon(IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5, v4, v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingValues(II)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    mul-int v6, v4, v0

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    return-void

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method private setLaunchMode()V
    .locals 9

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v1

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v5, :cond_0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PERSON_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v1, v5, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v6, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    if-eqz v8, :cond_4

    :goto_1
    invoke-direct {v6, v7, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForEdit;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v6, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForNormal;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    if-eqz v8, :cond_6

    :goto_2
    invoke-direct {v6, v7, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setDisplaySearchIcon()V

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_2
.end method

.method private showDeleteDialog()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(Z)V

    return-void
.end method

.method private showDeleteDialog(Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->showDeleteDialog(ZZ)V

    return-void
.end method

.method private showMaximumSelectionNumberExceeded(I)V
    .locals 6

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private startChannelViewMode()V
    .locals 5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v1, "START_CHANNEL_VIEW_MODE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private startDetailView(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailView(IIZ)V

    return-void
.end method

.method private startDetailView(IIZ)V
    .locals 9

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

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
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v6, "FavoriteViewState"

    const-string/jumbo v7, "cannot start DetailView. mediaItem is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    instance-of v6, v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v6, :cond_3

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v2

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mEnlargeAnim:Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;

    invoke-interface {v6}, Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;->isStartAnimationNow()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6, p1, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItemImage(II)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    const/4 v4, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    const-string/jumbo v6, "FavoriteViewState"

    const-string/jumbo v7, "cannot start anmation to DetailView. bitmap is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v6, p0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setPreviousActivityState(Lcom/sec/android/gallery3d/app/ActivityState;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

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

    const-string/jumbo v6, "KEY_IS_FROM_FAVORITEVIEW"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inExpansionMode()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string/jumbo v6, "expansion_detail_view"

    invoke-virtual {v0, v6, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v6

    const-class v7, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    invoke-virtual {v6, v7, v0, p3}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getScreenNailImage()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_7
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_2
.end method

.method private startDetailViewInUIThread(II)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$17;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;II)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startDetailViewInUIThread(IIZ)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$18;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$18;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;IIZ)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startTimeViewState()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$19;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$19;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private unselectAll()V
    .locals 8

    const/4 v4, 0x6

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeAll()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v3, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v7, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshCheckState()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "pick-min-item"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-le v1, v5, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a025b

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_1
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v4, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v3, v7, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v7, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v3, v7}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0
.end method

.method private updateCountOnActionBar()V
    .locals 11

    const/4 v10, 0x6

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getAllCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    :cond_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v10, :cond_4

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    :goto_0
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setSelectedItemCount(I)V

    if-lez v0, :cond_7

    if-ne v4, v0, :cond_7

    move v2, v6

    :goto_1
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v8

    sget-object v9, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v8, v9, :cond_9

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v8, "pick-max-item"

    const/4 v9, -0x1

    invoke-virtual {v1, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-le v0, v3, :cond_1

    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_8

    move v2, v6

    :cond_1
    :goto_2
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v7, v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->updateButton(IZ)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableEAM()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v0, :cond_f

    :cond_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    sget v9, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-virtual {v8, v4, v9}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_5
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4, v10}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(II)V

    goto :goto_0

    :cond_6
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v8, v4}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setTitle(I)V

    goto :goto_0

    :cond_7
    move v2, v7

    goto :goto_1

    :cond_8
    move v2, v7

    goto :goto_2

    :cond_9
    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v8, v8, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    if-ne v8, v10, :cond_b

    const/16 v3, 0x1f4

    if-le v0, v3, :cond_1

    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_a

    move v2, v6

    :goto_4
    goto :goto_2

    :cond_a
    move v2, v7

    goto :goto_4

    :cond_b
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-eqz v8, :cond_d

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-le v0, v3, :cond_1

    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_c

    move v2, v6

    :goto_5
    goto :goto_2

    :cond_c
    move v2, v7

    goto :goto_5

    :cond_d
    iget-boolean v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v8, :cond_1

    const/4 v3, 0x6

    if-le v0, v3, :cond_1

    if-lez v3, :cond_1

    iget-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v8

    if-ne v8, v3, :cond_e

    move v2, v6

    :goto_6
    goto :goto_2

    :cond_e
    move v2, v7

    goto :goto_6

    :cond_f
    if-nez v4, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_3
.end method


# virtual methods
.method public getSAScreenId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onBackPressed()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_NORMAL:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->exitSelectionMode()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->finishWithCoupledActivity(Landroid/app/Activity;)V

    :cond_3
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->finishCurrentViewState()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/app/ActivityState;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMenu:Landroid/view/Menu;

    const v1, 0x7f120286

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->setMenuItemIcon(Landroid/view/Menu;II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mShrinkAnim:Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->refreshSelectionBarState(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->onConfigurationChanged()V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onConfigChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/ActionBarManager;->invalidateOptionsMenu()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "FavoriteViewState onCreate Start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "FavoriteViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    if-nez v3, :cond_0

    const-string/jumbo v3, "FavoriteViewState"

    const-string/jumbo v4, "mActivity is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v4, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-direct {v4, v3}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryActivity;->hidePreDisplayScreen()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4, p0}, Lcom/sec/samsung/gallery/view/ActionBarManager;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/app/ActivityState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-direct {v3, v4}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->initFavoriteViewEventHandler()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGalleryWidget(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGalleryWidget:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromInsideGallery(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromInsideGallery:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isFromGifMaker(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object v8, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->initSpinner()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v4, :cond_2

    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v3

    sget-object v4, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "pick-max-item"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_3

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGalleryWidget:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "pick-max-item"

    const/16 v4, 0x3e8

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->getDefaultPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdatePath:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    :goto_2
    new-instance v3, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    new-instance v5, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;

    invoke-direct {v5, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DataLoaderConfig;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-direct {v3, v4, v1, v5, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;-><init>(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader$DataConfig;I)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mModelListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setModelListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$ModelListener;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    new-instance v4, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$4;

    invoke-direct {v4, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$4;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setLoadingListener(Lcom/sec/android/gallery3d/app/LoadingListener;)V

    :cond_4
    new-instance v3, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    const-string/jumbo v3, "Gallery_Performance"

    const-string/jumbo v4, "FavoriteViewState onCreate End"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFromGifMaker:Z

    if-eqz v3, :cond_6

    const-string/jumbo v3, "select_num_key"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "pick-max-item"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "pick-max-item"

    const/16 v4, 0x1f4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1

    :cond_7
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMenu:Landroid/view/Menu;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onCreateOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FavoriteViewState onDestroy Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onDestroy()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FavoriteViewState onDestroy End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDirty()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->onDirty(Z)V

    return-void
.end method

.method public onDirty(Z)V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getSource()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    instance-of v1, v0, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/ClusterAlbumSet;->isNeedUpdateCluster()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->exitSelectionMode()V

    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->updateMediaSet()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)V
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    if-nez v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->onBackPressed()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x0

    const/4 v3, -0x1

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "FavoriteViewState onPause Start"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onPause()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->saveCurrentScrollInfo()V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->pause()V

    :cond_1
    iput v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "ALBUM_VIEW"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "FAVORITE_VIEW_EXIT_SELECTION"

    invoke-virtual {v1, v2}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->removeMediator(Ljava/lang/String;)Lorg/puremvc/java/multicore/interfaces/IMediator;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionFocus(I)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v1, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setGenericMotionTitleFocus(I)V

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableEAM()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f1000ab

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->intColorToFloatARGBArray(I)[F

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v4, v0, v4

    aget v5, v0, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setTitle(I)V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onPause()V

    const-string/jumbo v1, "Gallery_Performance"

    const-string/jumbo v2, "FavoriteViewState onPause End"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPrepareOptionMenu(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/sec/android/gallery3d/app/ActivityState;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget v1, p3, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startChannelViewMode()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    :goto_2
    array-length v1, p2

    if-ge v0, v1, :cond_2

    aget v1, p3, v0

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startChannelViewMode()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x68
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onResume()V
    .locals 11

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v7, 0x1

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FavoriteViewState onResume Start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNeedIdleProcess:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->addGLIdleListener()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/FilterUtils;->toClusterType(Lcom/sec/samsung/gallery/core/TabTagType;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->setCurrentClusterType(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableEAM()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    :cond_1
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFirstMediaCheck:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdatePath:Z

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->getDefaultPath()Ljava/lang/String;

    move-result-object v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setEasyMode(Z)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-eqz v0, :cond_b

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z

    # invokes: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->setInitalLevel(ZI)I
    invoke-static {v0, v1, v7}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->access$5700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;ZI)I

    move-result v7

    invoke-static {v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;->getThumbSizeType(I)I

    move-result v10

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setInitThumbType(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gallery3d/app/GalleryApp;

    invoke-interface {v0, v3}, Lcom/sec/android/gallery3d/app/GalleryApp;->setIsPhotoPage(Z)V

    sget-object v0, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FAVORITES:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsPickerMode:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mNaviSpinner:Lcom/sec/samsung/gallery/drawer/NavigationSpinner;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/drawer/NavigationSpinner;->resume(Z)V

    :cond_4
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setLaunchMode()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v4, 0x1

    :goto_2
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z

    if-eqz v0, :cond_5

    or-int/lit16 v4, v4, 0x100

    :cond_5
    or-int/lit16 v4, v4, 0x80

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCodeForMediaItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v6

    if-ne v6, v2, :cond_6

    const-string/jumbo v0, "FavoriteViewState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialCode = -1!!, re-calculate initialCode with albumIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", itemIndex = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumItemIndex:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumIndex:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumItemIndex:I

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/util/GlIndex;->convertIndexToItemCode(II)I

    move-result v6

    :cond_6
    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    or-int/2addr v4, v0

    :goto_3
    if-ltz v6, :cond_7

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    :cond_7
    invoke-direct {p0, v7}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setFirstLoding(I)V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    invoke-direct/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;-><init>(Landroid/content/Context;ILcom/sec/android/gallery3d/data/MediaItem;ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1, p0}, Lcom/sec/android/gallery3d/glcore/GlRootView;->attachLayer(Lcom/sec/android/gallery3d/glcore/GlLayer;Lcom/sec/android/gallery3d/glcore/GlLayer$onLayerCallback;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->onResume()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mFavoriteViewMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumViewExitSelectionMediator:Lorg/puremvc/java/multicore/patterns/mediator/Mediator;

    invoke-virtual {v0, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->registerMediator(Lorg/puremvc/java/multicore/interfaces/IMediator;)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->setActivityTitle()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->onDirty()V

    invoke-super {p0}, Lcom/sec/android/gallery3d/app/ActivityState;->onResume()V

    const-string/jumbo v0, "Gallery_Performance"

    const-string/jumbo v1, "FavoriteViewState onResume End"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iput-object v9, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/DataManager;->getTopMediaSet()Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    :goto_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentTopSetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v8

    goto :goto_4

    :cond_a
    iput-boolean v7, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mUpdatePath:Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const-string/jumbo v1, "favoriteViewColCnt"

    invoke-static {v0, v1, v7}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->loadIntKey(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    goto/16 :goto_1

    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeViewConfig:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;

    iget v6, v0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mPrevCenterObject:I

    goto :goto_3
.end method

.method public onStateResult(IILandroid/content/Intent;)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v2, "START_ALBUM_OPERATIONS"

    invoke-virtual {v1, v2, v0}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xc00
        :pswitch_0
    .end packed-switch
.end method

.method public onViewInitialize()V
    .locals 4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const-string/jumbo v1, "FavoriteViewState"

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

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setAdapter(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$5;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$5;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$6;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$6;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$7;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$7;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$8;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$8;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$9;

    invoke-direct {v2, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$9;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$10;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$10;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$11;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$11;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$12;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$13;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$13;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$14;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$14;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnEnlargeAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnEnlargeAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$15;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnShrinkAnimListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnShrinkAnimListener;)V

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$16;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$16;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setOnNotificationClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnNotificationClickListener;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->isAvailableEAM()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->registerEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEnhancedAssistantMenu:Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEAMReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/common/EnhancedAssistantMenu;->unregisterEAM(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method public setPromptRequest(IILjava/lang/Object;)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    move-object v1, p3

    check-cast v1, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v3

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v3, v5, :cond_2

    if-eqz v1, :cond_2

    instance-of v3, v1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v3, :cond_2

    move-object v3, v1

    check-cast v3, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v3, v2}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v3, v5, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    if-ne p2, v6, :cond_3

    const/16 v3, 0x20

    :goto_2
    iput v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/glcore/GlRootView;->getBgColor()[F

    move-result-object v0

    iget v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    aget v4, v0, v4

    aget v5, v0, v6

    aget v6, v0, v7

    aget v7, v0, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_0
    return-void

    :cond_1
    move-object v3, v1

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_1

    :cond_3
    if-ne p2, v7, :cond_4

    const/16 v3, 0x10

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_2
.end method

.method public setPromptRequest(IILjava/lang/Object;II)V
    .locals 5

    const/4 v4, 0x3

    move-object v0, p3

    check-cast v0, Lcom/sec/android/gallery3d/data/MediaItem;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v2

    sget-object v3, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    instance-of v2, v0, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/LocalImage;->getFaceImagePath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v2

    :goto_0
    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    check-cast v2, Lcom/sec/android/gallery3d/data/MediaItem;

    iput-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    :goto_1
    iput p4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumIndex:I

    iput p5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mAlbumItemIndex:I

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCropCenterPanoramaThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    :goto_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_4

    const/16 v2, 0x20

    :goto_3
    iput v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mShrinkOption:I

    return-void

    :cond_1
    move-object v2, v0

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mCurrentMediaItem:Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->requestThumbnailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

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

.method public startExpandAction()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->needListViewExpand(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mData:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->startDualActivity(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    invoke-direct {p0, v3, v3, v3}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailViewInUIThread(IIZ)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v3, v3, v1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->startDetailViewInUIThread(IIZ)V

    goto :goto_0
.end method

.method public startShrinkAction()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isMainScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.subactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->getLocalBroadcastManager(Landroid/app/Activity;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    sput-object v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    sput-object v2, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusSetPath:Lcom/sec/android/gallery3d/data/Path;

    const/4 v1, 0x1

    return v1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "gallery.mainactivity.itemchanged"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 9

    const/4 v8, 0x7

    const/4 v7, 0x0

    const/4 v6, 0x1

    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/core/Event;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/core/Event;->getType()I

    move-result v1

    const-string/jumbo v3, "FavoriteViewState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Event update ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_REMOVE_FROM_FAVORITE:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0, v6}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showDeleteDialog(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SHOW_DELETE_DIALOG:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->showDeleteDialog()V

    goto :goto_0

    :cond_2
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_SELECT_ALL:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->selectAll()V

    goto :goto_0

    :cond_3
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_UNSELECT_ALL:I

    if-ne v1, v3, :cond_4

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->unselectAll()V

    goto :goto_0

    :cond_4
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_FILES:I

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v3, v2, v6, v6, v7}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_5
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_COPY_TO_ALBUM:I

    if-ne v1, v3, :cond_6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v6, v4, v7}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_6
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_MOVE_TO_ALBUM:I

    if-ne v1, v3, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/sec/android/gallery3d/data/DataManager;->getTopSetPath(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mEditModeHelper:Lcom/sec/samsung/gallery/view/utils/EditModeHelper;

    invoke-virtual {v3, v2, v6, v6, v7}, Lcom/sec/samsung/gallery/view/utils/EditModeHelper;->startAlbumChoiceActivity(Lcom/sec/android/gallery3d/data/MediaSet;ZILjava/lang/String;)V

    goto :goto_0

    :cond_7
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_CAMERA_MODE:I

    if-ne v1, v3, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v4, "START_CAMERA"

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3, v4, v5}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_8
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SELECTION_MODE:I

    if-ne v1, v3, :cond_9

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x5

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_9
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_GALLERY_SEARCH_MODE:I

    if-ne v1, v3, :cond_b

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseVisualSearch:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v3, v4, v7}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_a
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    const-class v4, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v3, v4, v7}, Lcom/sec/android/gallery3d/app/StateManager;->startState(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_b
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_ENTER_SHARE_MODE:I

    if-ne v1, v3, :cond_c

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    const/4 v4, 0x6

    iput v4, v3, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->enterSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_c
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_GIF:I

    if-ne v1, v3, :cond_e

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->enterSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsGifMode:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setGifMode(Z)V

    :cond_d
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

    goto/16 :goto_0

    :cond_e
    sget v3, Lcom/sec/samsung/gallery/core/Event;->EVENT_CREATE_COLLAGE:I

    if-ne v1, v3, :cond_0

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->scaleAnimationForSelectionMode()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->enterSelectionMode()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsCollageMode:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCollageMode(Z)V

    :cond_f
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->updateCountOnActionBar()V

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

    sput-object v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mDualScreenFocusPath:Lcom/sec/android/gallery3d/data/Path;

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->refreshDualScreenFocus()V

    return-void
.end method
