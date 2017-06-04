.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;
.super Ljava/lang/Object;
.source "PhotoSplitViewEventHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewMultiPick;,
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewPick;,
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;,
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoViewEventHandle"


# instance fields
.field private final mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

.field private final mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

.field private mCancelOperation:Z

.field private final mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

.field private final mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

.field private final mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

.field private mIsSightMode:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

.field private mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

.field private mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

.field final mOnComposeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

.field final mOnComposeAlbumLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

.field private final mOnComposeItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

.field private final mOnComposeItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

.field private final mOnComposeKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

.field private final mOnComposeStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

.field private final mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

.field final mOnGenericMotionListenerSplit:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

.field private final mOnHoverClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

.field private final mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

.field private final mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

.field private mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

.field private final mPhotoViewMultiPick:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewMultiPick;

.field private final mPhotoViewNormal:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;

.field private final mPhotoViewPick:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewPick;

.field private final mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

.field private final mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

.field private mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mCancelOperation:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mIsSightMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeAlbumClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$2;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$3;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeAlbumLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$4;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$5;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$6;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnHoverClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$7;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$8;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnGenericMotionListenerSplit:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$9;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$10;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$11;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, p2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMainHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v0}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    iget-boolean v0, p2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsSightMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mIsSightMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewNormal:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewPick;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewPick:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewPick;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewMultiPick;

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewMultiPick;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewMultiPick:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewMultiPick;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->selectItem(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/ActionBarManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mCancelOperation:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mCancelOperation:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->startAlbumChoiceActivity(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;Lcom/sec/android/gallery3d/data/MediaItem;I)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->exitSearchMode()V

    return-void
.end method

.method static synthetic access$2000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/ui/SelectionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onAlbumClick(IZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onPhotoItemClick(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->isUnsupportedGatherVI()Z

    move-result v0

    return v0
.end method

.method private exitSearchMode()V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchMode(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v3, v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v2, "PhotoViewEventHandle"

    const-string/jumbo v3, "curMediaSet is null! exitSearchMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-object v1, v2, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;I)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMainHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private getCollageModeToastTitle(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;
    .locals 6

    const/4 v5, 0x6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v1

    if-lt v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a7

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    instance-of v1, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a049e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getGifModeToastTitle(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;
    .locals 7

    const v6, 0x7f0a049e

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v2

    sget v3, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a01e3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v2, :cond_2

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v2, :cond_5

    :cond_2
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2, p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    instance-of v2, p1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v2, :cond_6

    instance-of v2, p1, Lcom/sec/android/gallery3d/data/UnionVideo;

    if-eqz v2, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getSupportedOperations()J

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :cond_8
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleSelectItem(Lcom/sec/android/gallery3d/data/MediaItem;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->handleSelectItem(Lcom/sec/android/gallery3d/data/MediaItem;Z)I

    move-result v0

    return v0
.end method

.method private handleSelectItem(Lcom/sec/android/gallery3d/data/MediaItem;Z)I
    .locals 18

    const/4 v10, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v13, "PhotoViewEventHandle"

    const-string/jumbo v14, "selectItem media null "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v13, v10

    :goto_0
    return v13

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v4, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v5, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-static {v13}, Lcom/sec/android/gallery3d/data/LogicalBucketList;->isLogicalAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v13

    if-eqz v13, :cond_1

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnionCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "/union/all"

    invoke-static {v13}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getBucketId()I

    move-result v13

    invoke-virtual {v8, v13}, Lcom/sec/android/gallery3d/data/Path;->getChild(I)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v13, v8}, Lcom/sec/android/gallery3d/data/DataManager;->peekMediaSet(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v11

    if-eqz v11, :cond_1

    move-object v4, v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v13, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v3

    if-ltz v3, :cond_1

    move v5, v3

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v13, v13, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_4

    sget-object v13, Lcom/sec/samsung/gallery/features/FeatureNames;->UseUnlimitedShare:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v13}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mIsSightMode:Z

    if-eqz v13, :cond_3

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v13

    if-lt v13, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v13, v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateMaximumSelectionNumberExceeded(I)V

    move v13, v10

    goto/16 :goto_0

    :cond_2
    const-string/jumbo v13, "/local/all"

    invoke-static {v13}, Lcom/sec/android/gallery3d/data/Path;->fromString(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/Path;

    move-result-object v8

    goto :goto_1

    :cond_3
    const/16 v6, 0x1f4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v13, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getParentSetPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    invoke-virtual {v13, v9}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaObject(Lcom/sec/android/gallery3d/data/Path;)Lcom/sec/android/gallery3d/data/MediaObject;

    move-result-object v7

    check-cast v7, Lcom/sec/android/gallery3d/data/MediaSet;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v13, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v2

    if-ltz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v13, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v7

    :cond_5
    const-string/jumbo v13, "PhotoViewEventHandle"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "selectItem albumIndex "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPenSelect:Z

    if-nez v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v7, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    :cond_6
    const/4 v10, 0x2

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v13}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v14}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v14

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v13 .. v16}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableCount(IZZ)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v14, v14, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v13, v14}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->forceReload()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->redrawNewAlbumImage()V

    :cond_9
    if-nez p2, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v13}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v14}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_a
    move v13, v10

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v15, 0x7f0a040f

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v16

    invoke-virtual/range {v13 .. v17}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->removeLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v13, :cond_c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v13, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateFolderItem(I)V

    :cond_c
    const/4 v10, 0x2

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->isAvailableSelect(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-nez v13, :cond_e

    move v13, v10

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->misFilteredForStoryAlbum:Z

    if-eqz v13, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v13

    const/4 v14, 0x4

    if-eq v13, v14, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isGolf()Z

    move-result v13

    if-nez v13, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v13

    if-nez v13, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a049e

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v13, v10

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v13, v13, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v14, 0x6

    if-ne v13, v14, :cond_12

    invoke-static/range {p1 .. p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSupportedShareDrm(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v13

    if-nez v13, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v14, 0x7f0a049e

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    move v13, v10

    goto/16 :goto_0

    :cond_12
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsGifMode:Z

    if-eqz v13, :cond_14

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->getGifModeToastTitle(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;

    move-result-object v12

    :cond_13
    :goto_4
    if-eqz v12, :cond_15

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_0

    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v13, v13, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsCollageMode:Z

    if-eqz v13, :cond_13

    invoke-direct/range {p0 .. p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->getCollageModeToastTitle(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_4

    :cond_15
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v15, 0x7f0a040e

    invoke-virtual/range {p1 .. p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v16

    invoke-virtual/range {v13 .. v17}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v4, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/sec/android/gallery3d/ui/SelectionManager;->addLogical(Lcom/sec/android/gallery3d/data/MediaItem;)V

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v13, v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateFolderItem(I)V

    goto/16 :goto_3
.end method

.method private isUnsupportedGatherVI()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_MULTIPLE_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inNewAlbumMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inCollageSelectionMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inGifSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onAlbumClick(IZ)V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->isDragAnimRunning()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getCount()I

    move-result v5

    if-le p1, v5, :cond_2

    const-string/jumbo v5, "PhotoViewEventHandle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAlbumClick increase : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;-><init>()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v5, v1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getCurrentInfo(Lcom/sec/android/gallery3d/app/MediaSetInterfaceInfo;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5, v8, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->pushPreviousInfo(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setMediaSetFromAlbumViewState()V

    :cond_2
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v5, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    if-nez v2, :cond_3

    const-string/jumbo v5, "PhotoViewEventHandle"

    const-string/jumbo v6, "onAlbumClick: mediaSet is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsEnabledWeChatVideoShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_5

    instance-of v5, v2, Lcom/sec/android/gallery3d/data/LocalMergeAlbum;

    if-eqz v5, :cond_d

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isWeChatSightPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isSDCardWeChatSightPath(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_4
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_SIGHTMODE:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    :cond_5
    :goto_1
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-boolean v8, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5, v2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setSource(Lcom/sec/android/gallery3d/data/MediaSet;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    if-eq v5, p1, :cond_c

    :cond_6
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->invalidateOptionsMenu()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-object v2, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput p1, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/data/MediaSet;->getPath()Lcom/sec/android/gallery3d/data/Path;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/Path;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getScrollBar()Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeScrollBar;->hideNow()V

    :cond_7
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->getGoToTopBtn()Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeGoToTopButton;->hideNow()V

    :cond_8
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v5, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->selectAlbum(IZ)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v5, v2, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setLatestSelectedAlbumInfo(Lcom/sec/android/gallery3d/data/MediaSet;I)Z

    move-result v3

    :cond_9
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    instance-of v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->selectAlbum(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_a
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v5, v8}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstIndex(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getFirstLoadingCount()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->setFirstLoadingCount(I)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->postUpdateAlbumNameOfActionBar()V

    if-eqz v3, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v5, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->refreshItem(I)V

    :cond_b
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setRemoveCheckAnim()V

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setRemoveDeleteAnim()V

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {}, Lcom/sec/samsung/gallery/view/utils/SDualScreenUtil;->isDualScreenMode()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v5}, Lcom/sec/samsung/gallery/core/GalleryFacade;->getInstance(Landroid/content/Context;)Lorg/puremvc/java/multicore/patterns/facade/Facade;

    move-result-object v5

    const-string/jumbo v6, "VIEW_MODE_SWITCH"

    const/16 v7, 0x201

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    const-string/jumbo v5, "PhotoViewEventHandle"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAlbumClick: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v7, v7, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "-th album selected"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsPickMode:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    invoke-virtual {v5, v6}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setCurrentTabTagType(Lcom/sec/samsung/gallery/core/TabTagType;)V

    goto/16 :goto_1
.end method

.method private onPhotoItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->onPhotoItemClick(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput p1, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaItemIndex:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onItemClick(I)V

    return-void
.end method

.method private selectItem(I)I
    .locals 4

    const-string/jumbo v1, "PhotoViewEventHandle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "selectItem position "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->handleSelectItem(Lcom/sec/android/gallery3d/data/MediaItem;)I

    move-result v1

    return v1
.end method

.method private selectItemForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)I
    .locals 5

    const-string/jumbo v2, "PhotoViewEventHandle"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "selectItemForBixby position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->handleSelectItem(Lcom/sec/android/gallery3d/data/MediaItem;Z)I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    return v1
.end method

.method private startAlbumChoiceActivity(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-array v0, v3, [Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v2, p1}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v2

    aput-object v2, v0, v4

    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    aput-object v2, v1, v4

    aput-object v6, v1, v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object v6, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryFacade:Lorg/puremvc/java/multicore/patterns/facade/Facade;

    const-string/jumbo v3, "START_ALBUM_CHOICE_ACTIVITY"

    invoke-virtual {v2, v3, v1}, Lorg/puremvc/java/multicore/patterns/facade/Facade;->sendNotification(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method checkAlbumState()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount(I)I

    move-result v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getCount()I

    move-result v1

    if-nez v3, :cond_3

    if-nez v1, :cond_3

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->exitSelectionMode()V

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v4

    instance-of v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "PhotoViewEventHandle"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->hasSelectedNewItems()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iput-boolean v7, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mIsNewAlbumHeaderSelected:Z

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->setNewAlbumUnfocused()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->updateNewAlbumActionBar()V

    :cond_4
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getAlbumIndexFromMediaSet(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v4, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    if-lt v4, v1, :cond_6

    add-int/lit8 v0, v1, -0x1

    :goto_1
    const-string/jumbo v4, "PhotoViewEventHandle"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "checkAlbumState -1 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-direct {p0, v0, v7}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->onAlbumClick(IZ)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget v0, v4, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mCurrentMediaSetIndex:I

    goto :goto_1
.end method

.method initializeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;->initializeView()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;->onBackPressed()V

    :cond_0
    return-void
.end method

.method onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method onItemClickForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;->onItemClickForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBasicReferences()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeAlbumPhotoView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mSplitMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewComponent;->getMediaSetAdapter()Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaSetAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewState:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-void
.end method

.method public setEnvGLViewInitialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnComposeKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnHoverClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseDirectCopyFromSideSync:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_ALBUM:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    new-instance v1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$12;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnDragDropListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnDragDropListener;)V

    :cond_1
    return-void
.end method

.method setMode(Lcom/sec/samsung/gallery/core/LaunchModeType;)V
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$13;->$SwitchMap$com$sec$samsung$gallery$core$LaunchModeType:[I

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/core/LaunchModeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewNormal:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewNormal;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewPick:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mPhotoViewMultiPick:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$PhotoViewMultiPick;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewEventHandle$IPhotoViewMode;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
