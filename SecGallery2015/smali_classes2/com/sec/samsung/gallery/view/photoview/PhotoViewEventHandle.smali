.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;
.super Ljava/lang/Object;
.source "PhotoViewEventHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;,
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;,
        Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PhotoViewEventHandle"


# instance fields
.field private final data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

.field private mFadeAnimation:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

.field private mIsSightMode:Z

.field private mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

.field private final mOnComposeItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

.field private final mOnComposeItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

.field private final mOnComposeKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

.field private final mOnComposeStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

.field private final mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

.field private final mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

.field private final mOnHoverClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

.field private final mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

.field private final mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

.field private final mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

.field private final mPhotoViewNormal:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mIsSightMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$1;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$2;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$3;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$4;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$4;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnHoverClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$5;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$5;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$6;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$6;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$7;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$7;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$8;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$9;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$9;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$10;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$10;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iput-object p1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iput-object p2, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMainHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMainHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mRootView:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getActionBarManager()Lcom/sec/samsung/gallery/view/ActionBarManager;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDataManager()Lcom/sec/android/gallery3d/data/DataManager;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-direct {v1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;)V

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mLayoutConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v0, p2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsSightMode:Z

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mIsSightMode:Z

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mPhotoViewNormal:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->onPhotoItemClick(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;Lcom/sec/android/gallery3d/data/MediaItem;IZ)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(Lcom/sec/android/gallery3d/data/MediaItem;IZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->exitSearchMode()V

    return-void
.end method

.method private exitSearchMode()V
    .locals 8

    const/4 v7, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->getAction()Lcom/sec/samsung/gallery/view/AbstractActionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/AbstractActionBar;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v2, v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->setSearchMode(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/view/ActionBarManager;->onPause()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoViewConfig:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;

    iget-boolean v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePhotoCover:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_0

    :goto_0
    invoke-direct {v3, v4, v7, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    :goto_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActionBarManager:Lcom/sec/samsung/gallery/view/ActionBarManager;

    new-instance v3, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    sget-object v5, Lcom/sec/samsung/gallery/features/FeatureNames;->UseMtpView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v5}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v5

    sget-object v6, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v5, v6, :cond_2

    move v1, v0

    :cond_2
    invoke-direct {v3, v4, v0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoActionBarForNormal;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IZ)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/view/ActionBarManager;->setAction(Lcom/sec/samsung/gallery/view/AbstractActionBar;)V

    goto :goto_1
.end method

.method private onPhotoItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput p1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaItemIndex:I

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->onItemClick(I)V

    return-void
.end method

.method private selectItem(I)I
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->selectItem(Lcom/sec/android/gallery3d/data/MediaItem;IZ)I

    move-result v0

    return v0
.end method

.method private selectItem(Lcom/sec/android/gallery3d/data/MediaItem;IZ)I
    .locals 12

    const-string/jumbo v6, "PhotoViewEventHandle"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "selectItem position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    move-object v1, p1

    :goto_0
    if-nez v1, :cond_1

    const-string/jumbo v6, "PhotoViewEventHandle"

    const-string/jumbo v7, "selectItem media null "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_1
    return v4

    :cond_0
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, p2}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget v6, v6, Lcom/sec/android/gallery3d/ui/SelectionManager;->mSelectionMode:I

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    iget-boolean v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mIsSightMode:Z

    if-eqz v6, :cond_2

    const/4 v0, 0x1

    :goto_2
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    if-lt v6, v0, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v6, v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateMaximumSelectionNumberExceeded(I)V

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    const/16 v0, 0x1f4

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-static {v7, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isAvailableDrm(Landroid/content/Context;Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isDrm()Z

    move-result v6

    if-nez v6, :cond_5

    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v7, 0x7f0a049e

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->isSelected(Lcom/sec/android/gallery3d/data/MediaObject;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v8, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a040f

    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->remove(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v4, 0x2

    :goto_3
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isAvailableCount(IZ)Z

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->updateActionBarSelectionMode(Lcom/sec/android/gallery3d/data/MediaSet;)V

    :cond_6
    if-nez p3, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v6}, Lcom/samsung/android/devicecog/gallery/DCUtils;->isExecuteFromBixby(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCHandler()Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getDCScreenStateId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Lcom/samsung/android/devicecog/gallery/viewstatehandler/ActivityStateDCHandler;->sendDCResponseForSelectContentType(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    const/4 v7, 0x0

    invoke-virtual {v6, v3, v7}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->logDCSelectedView(Ljava/lang/String;Z)V

    goto/16 :goto_1

    :cond_8
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsGifMode:Z

    if-eqz v6, :cond_f

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    sget v7, Lcom/sec/samsung/gallery/view/utils/MenuHelper;->AGIF_MAX_ITEM_LIMIT:I

    if-lt v6, v7, :cond_a

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    move-result-object v5

    :cond_9
    :goto_4
    if-eqz v5, :cond_14

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_a
    instance-of v6, v1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v6, :cond_b

    instance-of v6, v1, Lcom/sec/android/gallery3d/data/UnionLocalImage;

    if-eqz v6, :cond_c

    :cond_b
    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a049e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_c
    instance-of v6, v1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v6, :cond_d

    instance-of v6, v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v6, :cond_e

    :cond_d
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a01e0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_e
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_9

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a049e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_f
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsCollageMode:Z

    if-eqz v6, :cond_14

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/ui/SelectionManager;->getNumberOfMarkedAsSelected()I

    move-result v6

    const/4 v7, 0x6

    if-lt v6, v7, :cond_11

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

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

    move-result-object v5

    :cond_10
    :goto_5
    if-eqz v5, :cond_14

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_11
    instance-of v6, v1, Lcom/sec/android/gallery3d/data/LocalVideo;

    if-nez v6, :cond_12

    instance-of v6, v1, Lcom/sec/android/gallery3d/data/UnionLocalVideo;

    if-eqz v6, :cond_13

    :cond_12
    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a00a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_13
    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaObject;->getSupportedOperations()J

    move-result-wide v6

    const-wide v8, 0x2000000000L

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a049e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_14
    invoke-static {}, Lcom/sec/samsung/gallery/util/TTSUtil;->getInstance()Lcom/sec/samsung/gallery/util/TTSUtil;

    move-result-object v7

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v8, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    const v9, 0x7f0a040e

    move-object v6, v1

    check-cast v6, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/util/TTSUtil;->speak(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;IJ)V

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v6, v6, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    iget-object v7, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v7, v7, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v6, v7, v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->add(Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/MediaObject;)V

    const/4 v4, 0x1

    goto/16 :goto_3
.end method


# virtual methods
.method checkAlbumState(I)V
    .locals 6

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->isTabEnabledActivityState()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentViewMode()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :try_start_0
    iget-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mIsSightMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mSelectionModeProxy:Lcom/sec/android/gallery3d/ui/SelectionManager;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->exitSelectionMode()V

    :cond_3
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/app/StateManager;->finishState(Lcom/sec/android/gallery3d/app/ActivityState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v3, "PhotoViewEventHandle"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/EmptySetDrawer;->removeNoItemLayout(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mDataProxy:Lcom/sec/android/gallery3d/data/DataManager;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v5, v5, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentTopMediaSetPath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/data/DataManager;->getMediaSet(Ljava/lang/String;)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    :cond_5
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mTopMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget v4, v4, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/data/MediaSet;->getSubMediaSet(I)Lcom/sec/android/gallery3d/data/MediaSet;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSet:Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v3

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/data/MediaSet;->getBucketId()I

    move-result v4

    if-eq v3, v4, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v3, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iput p1, v3, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mCurrentMediaSetIndex:I

    goto/16 :goto_0
.end method

.method initializeView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;->initializeView()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    invoke-interface {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;->onBackPressed()V

    :cond_0
    return-void
.end method

.method onItemClick(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;->onItemClick(I)V

    :cond_0
    return-void
.end method

.method onItemSelectForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    invoke-interface {v0, p1, p2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;->onItemSelectForBixby(Lcom/sec/android/gallery3d/data/MediaItem;I)V

    :cond_0
    return-void
.end method

.method public setBasicReferences()V
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->getGlComposeView()Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iput-object v0, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    iput-object v1, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mMediaItemAdapter:Lcom/sec/samsung/gallery/view/adapter/ComposeMediaItemAdapter;

    return-void
.end method

.method public setEnvGLViewInitialize()V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeItemClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnItemClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeItemLongClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnItemLongClickListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeStatusChangedListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnStatusChangedListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnStatusChangedListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnComposeKeyListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnKeyListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnKeyListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnHoverClickListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnHoverListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnHoverListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnGenericMotionListenerPhoto:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnGenericMotionListener(ILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnGenericMotionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnSwitchViewListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnSwitchViewListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchViewListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnPenSelectionListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnPenSelectionListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnPenSelectionListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnCoverScrollListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnCoverScrollListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnCoverScrollListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mPhotoView:Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mOnSwitchStateListener:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposePhotoView;->setOnSwitchStateListener(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSwitchStateListener;)V

    :cond_0
    return-void
.end method

.method setMode()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mPhotoViewNormal:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$PhotoViewNormal;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mMode:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$IPhotoViewMode;

    return-void
.end method

.method public setonEvtResume()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle;->mFadeAnimation:Lcom/sec/samsung/gallery/view/photoview/PhotoViewEventHandle$FadeAnimation;

    return-void
.end method
