.class Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "ChannelPhotoViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    sget v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->ENLARGE_ANIMATION_DURATION:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mEnlargeDuration:I

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mIsEasyMode:Z
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21400(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseLayoutChange:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseItemSelect:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMinLevel:I

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMaxLevel:I

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMaxLevel:I

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mInitialLevel:I

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2300(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v0

    if-eqz v0, :cond_0

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mTopGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mIsChannelPhotoView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUsePhotoCover:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mTypeViewSwitchAnim:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseQuickScroll:Z

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseFastScrollPopup:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mRemoveFastScrollShadow:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToTopButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mUseGoToTopButton:Z

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mCheckBoxExpansionAlwaysVisible:Z

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v0

    if-eqz v0, :cond_7

    new-array v0, v4, [Ljava/lang/Object;

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatioStoryDetail;

    aput-object v3, v0, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerSocialStoryDetail;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    :goto_4
    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2

    :cond_6
    move v0, v2

    goto :goto_3

    :cond_7
    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-class v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v5, v0, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v2, v0, v1

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v1, v0, v4

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;

    aput-object v1, v0, v3

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    goto :goto_4

    :cond_8
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const-class v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v5, v0, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v2, v0, v1

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v1, v0, v4

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v1, v0, v3

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerChannelPhoto;

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    goto :goto_4
.end method

.method static synthetic access$17600(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->setInitialLevel(ZI)I

    move-result v0

    return v0
.end method

.method private setInitialLevel(ZI)I
    .locals 3

    const/4 v2, 0x4

    const/4 v0, 0x2

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_DREAM_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21500()Z

    move-result v1

    if-eqz v1, :cond_0

    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mInitialLevel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMinLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMaxLevel:I

    :goto_0
    iget v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mInitialLevel:I

    return v0

    :cond_0
    if-eqz p1, :cond_1

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mInitialLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMinLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mGalleryApp:Lcom/sec/android/gallery3d/app/GalleryAppImpl;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$2700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mInitialLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMinLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mInitialLevel:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$21700(Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMinLevel:I

    # getter for: Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->USE_GRACE_LAYOUT:Z
    invoke-static {}, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState;->access$800()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    :cond_3
    iput v0, p0, Lcom/sec/samsung/gallery/view/channelphotoview/ChannelPhotoViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0
.end method
