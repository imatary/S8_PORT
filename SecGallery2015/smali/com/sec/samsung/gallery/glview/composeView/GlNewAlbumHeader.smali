.class Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;
.super Ljava/lang/Object;
.source "GlNewAlbumHeader.java"


# static fields
.field private static final DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "GlNewAlbumHeader"


# instance fields
.field private mActive:Z

.field private mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mBgRect:Landroid/graphics/RectF;

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private final mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

.field private mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private final mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

.field private mOccupationHeight:F

.field private final mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

.field private mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mSeperatorHeight:I

.field private mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mActive:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeperatorHeight:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getDimensionUtil()Lcom/sec/samsung/gallery/util/DimensionUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    return-void
.end method

.method private animateAppear()V
    .locals 7

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->resetTransformAnimation()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableScaleAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEnableAlphaAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSourceAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetScale(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTargetAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    const-wide/16 v2, 0x190

    const-wide/16 v4, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mInterpolator:Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-virtual/range {v0 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->startTransAnim(Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;JJLcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mActive:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mActive:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    goto :goto_0
.end method

.method getBackObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public getHeight()F
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mActive:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mOccupationHeight:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getSeparatorObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public initialize(Z)V
    .locals 8

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mActive:Z

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFill(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFill(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v4, 0x7f100203

    invoke-static {v3, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFillColor(I)V

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v6, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsW:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsH:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v2, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v7}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean v6, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mUseParentThumbTouchAnim:Z

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    new-instance v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-direct {v2, v3, v6, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;II)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-direct {v3, v4, v5, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeperatorHeight:I

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlImageView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const v3, 0x7f02026d

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/glcore/GlImageView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->resetLayout()V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->animateAppear()V

    :cond_0
    return-void
.end method

.method public resetLayout()V
    .locals 14

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mActive:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumHeaderPaddingTop()F

    move-result v4

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewNewAlbumHeaderPaddingLeft()F

    move-result v3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->getNewAlbumHeaderRect(Landroid/graphics/RectF;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    iput v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mOccupationHeight:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iget v8, v9, Landroid/graphics/RectF;->left:F

    sget-boolean v9, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    if-eqz v9, :cond_2

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v8, v9

    :cond_2
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    const/high16 v11, -0x3bb80000    # -800.0f

    invoke-virtual {v9, v8, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTouchLayerObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBgRect:Landroid/graphics/RectF;

    iget v0, v9, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v7, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemW:F

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v2, v9, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mItemH:F

    sub-float v9, v0, v2

    const/high16 v10, 0x40000000    # 2.0f

    div-float v6, v9, v10

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mDimensionUtil:Lcom/sec/samsung/gallery/util/DimensionUtil;

    invoke-virtual {v9}, Lcom/sec/samsung/gallery/util/DimensionUtil;->getThumbnailViewSplitAlbumSeparatorRatioDividerHeight()F

    move-result v5

    sget-object v9, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTablet:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v9}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    invoke-virtual {v12, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvX(F)I

    move-result v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    invoke-virtual {v13, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvY(F)I

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :goto_1
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    sub-float v10, v6, v4

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v7, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v9, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v10, -0x1

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsW:I

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v13, v13, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleCanvsH:I

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v9, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v10, -0x2

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v9, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v10, 0x40000000    # 2.0f

    div-float v10, v0, v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleTextMarginTop:F

    sub-float/2addr v10, v11

    sub-float/2addr v10, v2

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v11, v11, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    sub-float/2addr v10, v11

    sub-float/2addr v10, v4

    const/4 v11, 0x0

    invoke-virtual {v9, v3, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->mTitleH:F

    invoke-virtual {v9, v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v10

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v12, v12, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mHeight:F

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    sub-float/2addr v11, v12

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mBackObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeparatorObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mSeperatorHeight:I

    invoke-virtual {v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->convY(I)F

    move-result v10

    mul-float/2addr v10, v5

    invoke-virtual {v9, v7, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v9, v9, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mWideMode:Z

    if-nez v9, :cond_4

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->resetAttributes(Z)V

    goto/16 :goto_0

    :cond_3
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v10, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v11, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    invoke-virtual {v12, v7}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvX(F)I

    move-result v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mPosCtrl:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;

    invoke-virtual {v13, v2}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerAlbumPhoto;->rConvY(F)I

    move-result v13

    invoke-direct {v10, v11, v12, v13}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    goto/16 :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setClickListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlClickListener;)V

    return-void
.end method

.method public updateBitmapFromAdapter(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V
    .locals 5

    const-string/jumbo v2, "GlNewAlbumHeader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBitmapFromAdapter : bitmap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->isBroken()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/util/ResourceManager;->getInstance()Lcom/sec/android/gallery3d/util/ResourceManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/sec/android/gallery3d/util/ResourceManager;->getBrokenPictureThumbnail(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->setHeaderItem(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public updateHeaderImage()V
    .locals 5

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    if-nez v1, :cond_2

    :cond_0
    const-string/jumbo v1, "GlNewAlbumHeader"

    const-string/jumbo v2, "mComposeView is null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mHeaderObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    check-cast v1, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getView()Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/samsung/gallery/view/adapter/ComposePhotoViewAlbumSetAdapter;->getViewExt(ILcom/sec/android/gallery3d/glcore/GlView;Lcom/sec/android/gallery3d/glcore/GlObject;)Lcom/sec/android/gallery3d/glcore/GlView;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlNewAlbumHeader;->mTitleObject:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    goto :goto_0
.end method
