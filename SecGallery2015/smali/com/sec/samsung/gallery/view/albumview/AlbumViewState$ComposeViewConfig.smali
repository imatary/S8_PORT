.class Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "AlbumViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseListAlbumView:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    # invokes: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isDesktopMode()Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13500(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mHideIconMinLevel:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMinLevel:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mTopGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mIsAlbumView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mIsCardTypeView:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->isTabEnabledActivityState()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mIncludeTabView:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v0, :cond_3

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mInitialLevel:I

    iput v4, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerListAlbum;

    aput-object v3, v0, v2

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    aput-object v3, v0, v1

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    aput-object v3, v0, v4

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    :goto_2
    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mTypeViewSwitchAnim:I

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$1700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mIsSocialCloudView:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$6200(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseChannelNoti:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iput v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mInitialLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    new-array v0, v4, [Ljava/lang/Object;

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    aput-object v3, v0, v2

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbum;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    goto :goto_2
.end method

.method static synthetic access$11600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->setInitalLevel(ZI)V

    return-void
.end method

.method private setInitalLevel(ZI)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v2, :cond_0

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mInitialLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMinLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    :goto_0
    iget v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMinLevel:I

    iget v3, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    if-eq v2, v3, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseLayoutChange:Z

    return-void

    :cond_0
    iput v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mInitialLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMinLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mInitialLevel:I

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13600(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMinLevel:I

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mUseListAlbumView:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13700(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;

    # getter for: Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;->access$13800(Lcom/sec/samsung/gallery/view/albumview/AlbumViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/view/albumview/AlbumViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
