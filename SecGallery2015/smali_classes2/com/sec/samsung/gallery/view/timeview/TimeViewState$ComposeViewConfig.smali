.class Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "TimeViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/timeview/TimeViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComposeViewConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)V
    .locals 7

    const/4 v6, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseEnlargeAnim:Z

    sget v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->ENLARGE_ANIMATION_DURATION:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mEnlargeDuration:I

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseLayoutChange:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGroupSelect:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_PICK:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v5, :cond_1

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseGroupSelect:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseItemSelect:Z

    invoke-static {}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15500()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v5, :cond_2

    move v0, v3

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMinLevel:I

    invoke-static {}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15500()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v5, :cond_3

    move v0, v4

    :goto_3
    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMaxLevel:I

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->isTabEnabledActivityState()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mIncludeTabView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseGroupTitle:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mTopGroupTitle:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseQuickScroll:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseFastScrollPopup:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToTopButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseGoToTopButton:Z

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mTypeViewSwitchAnim:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseTimeLineSplit:Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15400(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mSuggestionPickerMode:Z

    invoke-static {}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15500()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v5, :cond_7

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mSuggestionPickerMode:Z

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseNewChannelNotification:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_TIMELINE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v5, :cond_8

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseChannelNoti:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UsePeopleViewAsCategoryType:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v5, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_FACE:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v0, v5, :cond_9

    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mIsPeopleView:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v2

    :goto_a
    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mTabPos:I

    invoke-direct {p0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->isTipCardAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseTipCard:Z

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_b

    new-array v0, v6, [Ljava/lang/Object;

    const-class v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v5, v0, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v2, v0, v1

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v3

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    new-instance v0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DynamicScaleAnimConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;Lcom/sec/samsung/gallery/view/timeview/TimeViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    :goto_b
    invoke-static {p1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15700(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mIsDexMode:Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move v0, v2

    goto/16 :goto_1

    :cond_2
    move v0, v1

    goto/16 :goto_2

    :cond_3
    move v0, v3

    goto/16 :goto_3

    :cond_4
    move v0, v2

    goto/16 :goto_4

    :cond_5
    move v0, v2

    goto/16 :goto_5

    :cond_6
    move v0, v2

    goto/16 :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :cond_a
    const/4 v0, -0x1

    goto :goto_a

    :cond_b
    new-array v0, v6, [Ljava/lang/Object;

    const-class v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v5, v0, v2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v2, v0, v1

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v3

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    goto :goto_b
.end method

.method static synthetic access$13900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;ZI)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->setInitialLevel(ZI)I

    move-result v0

    return v0
.end method

.method private isTipCardAvailable()Z
    .locals 2

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUPSM:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiPickMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentLaunchMode()Lcom/sec/samsung/gallery/core/LaunchModeType;

    move-result-object v0

    sget-object v1, Lcom/sec/samsung/gallery/core/LaunchModeType;->ACTION_ENTER_SELECTION_MODE:Lcom/sec/samsung/gallery/core/LaunchModeType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setInitialLevel(ZI)I
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMinLevel:I

    iput v2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMaxLevel:I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerGrid;

    aput-object v1, v0, v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseLayoutChange:Z

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$10200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/GalleryAppImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryAppImpl;->isFestivalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMinLevel:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMaxLevel:I

    goto :goto_0

    :cond_2
    iput p2, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15800(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$15900(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMinLevel:I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$16100(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMaxLevel:I

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMinLevel:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMinLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMaxLevel:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mMaxLevel:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    iget v1, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mInitialLevel:I

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$6802(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;I)I

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mUseSmartClustering:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mPosCtrl:[Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerRealRatio;

    aput-object v1, v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$16000(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mIsPeopleView:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->mSuggestionPickerMode:Z

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$16200(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/timeview/TimeViewState$ComposeViewConfig;->this$0:Lcom/sec/samsung/gallery/view/timeview/TimeViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/timeview/TimeViewState;->access$16300(Lcom/sec/samsung/gallery/view/timeview/TimeViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_3

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_1
.end method
