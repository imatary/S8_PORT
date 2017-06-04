.class Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "FavoriteViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$1400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    sget v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->ENLARGE_ANIMATION_DURATION:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mEnlargeDuration:I

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_1

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mIsEasyMode:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$6200(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseLayoutChange:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mInitialLevel:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMinLevel:I

    iput v5, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMaxLevel:I

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$1400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mNoTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mTopGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseQuickScroll:Z

    iput v3, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mTypeViewSwitchAnim:I

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const-class v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v4, v1, v3

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v3, v1, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    new-instance v1, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DynamicScaleAnimConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mUseChannelNoti:Z

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method

.method static synthetic access$5700(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->setInitalLevel(ZI)I

    move-result v0

    return v0
.end method

.method private setInitalLevel(ZI)I
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mInitialLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMinLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMaxLevel:I

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mInitialLevel:I

    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$6400(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mInitialLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMinLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_1
    iput p2, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$6500(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMinLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;

    # getter for: Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;->access$6600(Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/favoriteview/FavoriteViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0
.end method
