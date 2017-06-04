.class Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;
.super Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;
.source "TitleWithLocationDecorator.java"


# static fields
.field private static final IS_KNOX:Z

.field private static final LOCATION_ALPHA_DEFAULT_MODE:F = 1.0f

.field private static final LOCATION_ALPHA_SELECTION_MODE:F = 0.37f

.field private static final MASS_LOCATION_CONCEPT:Z


# instance fields
.field private final mLocationEndMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->IS_KNOX:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSLocation:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCMH:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->MASS_LOCATION_CONCEPT:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;-><init>(Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mResource:Landroid/content/res/Resources;

    const v1, 0x7f0b038d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mLocationEndMargin:I

    return-void
.end method

.method private hasLocationNameInAlbum(I)Z
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v1, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getMediaSetLocation(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private supportMassLocationWithOnlyGPSInfo(I)Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->MASS_LOCATION_CONCEPT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getMediaSetHasLatLng(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLocation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 13

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->findChildByObjective(I)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->hasLocationNameInAlbum(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->supportMassLocationWithOnlyGPSInfo(I)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_0
    if-nez v5, :cond_1

    new-instance v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setObjective(I)V

    iget v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    iput v0, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportButtonShape(Z)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setReuseObj(Z)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSupportRtl(Z)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerLocationClick:Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mListenerGenericMotion:Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setGenericMotionListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlGenericMotionListener;)V

    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchRippleEvent(Z)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v2, -0x5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getView(IILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlLayer;Ljava/lang/Object;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->IS_KNOX:Z

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v7}, Lcom/sec/android/gallery3d/glcore/GlView;->getWidth()I

    move-result v10

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    invoke-virtual {v0, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v8

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v6, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v11

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mLocationEndMargin:I

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v9

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleCanvsH:I

    invoke-virtual {v5, v10, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->updateCanvas(II)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleW:F

    sub-float/2addr v0, v8

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v0, v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mGroupCheckBoxVisible:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeft:F

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mGrpCheckHMargin:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    :goto_1
    sub-float v0, v2, v0

    sub-float v12, v0, v9

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mPosCtrlCom:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$PositionControllerCom;->mPortraitMode:Z

    if-nez v0, :cond_4

    invoke-virtual {v6}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDesktopModeInterface()Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/samsung/gallery/lib/libinterface/DesktopModeInterface;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mSoftKeyHeightPixel:I

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->convX(I)F

    move-result v0

    sub-float/2addr v12, v0

    :cond_4
    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {v5, v12, v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleH:F

    invoke-virtual {v5, v8, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    invoke-static {v11, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dimLocationObj(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    invoke-static {v11, v6}, Lcom/sec/android/gallery3d/util/GalleryUtils;->dimLocationObj(Lcom/sec/android/gallery3d/ui/SelectionManager;Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x3ebd70a4    # 0.37f

    :goto_3
    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mTitleTextMarginLeft:F

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/TitleDecorator;->updateTitle(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/TitleWithLocationDecorator;->updateLocation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;)V

    :cond_0
    return-void
.end method
