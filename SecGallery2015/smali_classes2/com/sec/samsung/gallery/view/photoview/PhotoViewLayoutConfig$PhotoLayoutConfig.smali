.class Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "PhotoViewLayoutConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoLayoutConfig"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseEnlargeAnim:Z

    sget v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->ENLARGE_ANIMATION_DURATION:I

    iput v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mEnlargeDuration:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseLayoutChange:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseGroupSelect:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseGroupTitle:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseItemSelect:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mAlbumList:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mItemSizeScale:F

    iput v5, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mInitialLevel:I

    iput v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMinLevel:I

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0e001a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMaxLevel:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mTopGroupTitle:Z

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_MTP:Lcom/sec/samsung/gallery/core/TabTagType;

    if-ne v1, v4, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIncludeTabView:Z

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIsRecycleBinView:Z

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIncludeTabView:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsRecycleBinView:Z

    if-eqz v1, :cond_3

    :cond_0
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTimeLineQuickScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseQuickScroll:Z

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsFromShortcut:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIsRecycleBinView:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIncludeTabView:Z

    if-nez v1, :cond_1

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;->mIsScloudView:Z

    if-eqz v1, :cond_4

    :cond_1
    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToTopButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUseGoToTopButton:Z

    iput v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mTypeViewSwitchAnim:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    sget-object v4, Lcom/sec/samsung/gallery/core/TabTagType;->TAB_TAG_EVENT:Lcom/sec/samsung/gallery/core/TabTagType;

    if-eq v1, v4, :cond_5

    iget-object v1, p1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->photoViewState:Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;

    :goto_3
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-class v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;

    aput-object v4, v1, v3

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;

    aput-object v3, v1, v2

    const/4 v3, 0x2

    aput-object v0, v1, v3

    const-class v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;

    aput-object v3, v1, v5

    const/4 v3, 0x4

    const-class v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerPhoto;

    aput-object v4, v1, v3

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mPosCtrl:[Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mIsSplitViewExpanded:Z

    new-instance v1, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    return-void

    :cond_2
    move v1, v3

    goto/16 :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    const-class v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerDynamic;

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mTopGroupTitle:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mUsePhotoCover:Z

    goto :goto_3
.end method


# virtual methods
.method public setModeLevel(I)V
    .locals 3

    const v2, 0x7f0e001a

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    # getter for: Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->mIsEasyMode:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->access$100(Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMinLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMaxLevel:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMinLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig;->data:Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewData;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewLayoutConfig$PhotoLayoutConfig;->mMaxLevel:I

    goto :goto_0
.end method
