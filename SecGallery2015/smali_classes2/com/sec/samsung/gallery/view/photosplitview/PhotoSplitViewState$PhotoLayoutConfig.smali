.class Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;
.super Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;
.source "PhotoSplitViewState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhotoLayoutConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig$DynamicScaleAnimConfig;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)V
    .locals 5

    const/4 v4, 0x3

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;-><init>()V

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUsePenSelectInPickMode:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseEnlargeAnim:Z

    sget v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->ENLARGE_ANIMATION_DURATION:I

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mEnlargeDuration:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseLayoutChange:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseGroupSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseGroupTitle:Z

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseItemSelect:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mAlbumList:Z

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mLandRatio:F

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)F

    move-result v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mPortRatio:F

    iput v1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mItemSizeScale:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mNewAlbumHeaderFocused:Z

    iput v4, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mInitialLevel:I

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3500(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMinLevel:I

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3600(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    iput-boolean v3, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mTopGroupTitle:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFastScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseQuickScroll:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseGoToTopButton:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mUseGoToTopButton:Z

    iget-object v0, p1, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getCurrentTabTagType()Lcom/sec/samsung/gallery/core/TabTagType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mViewTabType:Lcom/sec/samsung/gallery/core/TabTagType;

    iput v2, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mTypeViewSwitchAnim:I

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v1, v0, v2

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v2, v0, v1

    const-class v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mPosCtrl:[Ljava/lang/Object;

    new-instance v0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig$DynamicScaleAnimConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig$DynamicScaleAnimConfig;-><init>(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$1;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mScaleAniConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ScaleAniConfig;

    invoke-static {p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsDexMode:Z

    return-void
.end method

.method static synthetic access$800(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->setModeLevel(I)V

    return-void
.end method

.method private setModeLevel(I)V
    .locals 3

    const v2, 0x7f0e001a

    invoke-static {}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isEasyOrEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$3900(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMinLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$4000(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mIsDexMode:Z

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$4100(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMinLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$4200(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mInitialLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$4300(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMinLevel:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->this$0:Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;->access$4400(Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/view/photosplitview/PhotoSplitViewState$PhotoLayoutConfig;->mMaxLevel:I

    goto :goto_0
.end method
