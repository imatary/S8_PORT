.class public Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlCoverViewSwitchAnimation.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;


# static fields
.field private static final ANIM_STATE_ACTIVE:I = 0x2

.field private static final ANIM_STATE_IDLE:I = 0x0

.field private static final ANIM_STATE_READY:I = 0x1

.field private static final ANIM_STATE_RUNNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "GlEnlargeAnimation"


# instance fields
.field private final inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

.field private mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field private mAnimForward:Z

.field private mAutoAnimation:Z

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private final mContext:Landroid/content/Context;

.field private final mCropRectSrc:Landroid/graphics/Rect;

.field private mDstH:F

.field private mDstW:F

.field private mFadeOutObjs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;"
        }
    .end annotation
.end field

.field private mIdxAlb:I

.field private mIdxThm:I

.field private mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mOrgAbsX:F

.field private mOrgAbsY:F

.field private mOrgAbsZ:F

.field private mOrigX:F

.field private mOrigY:F

.field private mOrigZ:F

.field private mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mRatioRange:F

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mSrcH:F

.field private mSrcW:F

.field private mState:I

.field private mTgtAbsX:F

.field private mTgtAbsY:F

.field private mTgtImgH:I

.field private mTgtImgW:I


# direct methods
.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getCoverBitmpa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v0, p2

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, p1

    goto :goto_0
.end method

.method private getCropRect()Landroid/graphics/Rect;
    .locals 10

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxAlb:I

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxThm:I

    invoke-virtual {v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v3

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstH:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstW:F

    div-float v4, v6, v7

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    int-to-float v6, v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    int-to-float v7, v7

    div-float v2, v6, v7

    cmpl-float v6, v4, v2

    if-ltz v6, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    float-to-int v1, v6

    :goto_0
    new-instance v5, Landroid/graphics/Rect;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    sub-int/2addr v7, v0

    div-int/lit8 v7, v7, 0x2

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    sub-int/2addr v8, v1

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v1

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    sub-int/2addr v9, v0

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v5, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->getFaceCropRect(Landroid/graphics/Rect;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Rect;

    move-result-object v5

    return-object v5

    :cond_0
    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v0, v6

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    goto :goto_0
.end method

.method private getFaceCropRect(Landroid/graphics/Rect;Lcom/sec/android/gallery3d/data/MediaItem;)Landroid/graphics/Rect;
    .locals 7

    if-nez p2, :cond_0

    move-object v6, p1

    :goto_0
    return-object v6

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {p2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v5, v5, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRotation:I

    invoke-static/range {v0 .. v5}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;FFI)Landroid/graphics/Rect;

    move-result-object p1

    :cond_2
    move-object v6, p1

    goto :goto_0

    :cond_3
    check-cast p2, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p2}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v2

    goto :goto_1
.end method

.method private resetToOrigin()V
    .locals 10

    const/4 v9, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTexCoords(FFFF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorVisibility(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->setOriginalPos(Z)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v2, :cond_1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setObjectRect()V
    .locals 8

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v4, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v3, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v6, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v5, v6

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getPhotoCoverHeight()I

    move-result v0

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcW:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v6

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcH:F

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstW:F

    int-to-float v6, v2

    mul-float/2addr v6, v3

    div-float/2addr v6, v5

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstH:F

    const/4 v6, 0x0

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtAbsX:F

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v6, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstH:F

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtAbsY:F

    return-void
.end method

.method private setOriginalPos(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrigX:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrigY:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrigZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcH:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrigX:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrigY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrigZ:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsX:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsZ:F

    goto :goto_0
.end method


# virtual methods
.method public addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addFadeOutObjs(Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected applyTransform(F)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v5, v10, p1

    sub-float v6, v10, p1

    mul-float/2addr v5, v6

    sub-float v2, v10, v5

    iget-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimForward:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mRatioRange:F

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mRatioRange:F

    sub-float v6, v10, v6

    mul-float/2addr v6, v2

    add-float v4, v5, v6

    :goto_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsX:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtAbsX:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsX:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsY:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtAbsY:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsY:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsZ:F

    invoke-virtual {v5, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcW:F

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstW:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcW:F

    sub-float/2addr v7, v8

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcH:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mDstH:F

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcH:F

    sub-float/2addr v8, v9

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v1, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v3, :cond_1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mRatioRange:F

    sub-float v6, v10, v2

    mul-float v4, v5, v6

    goto :goto_0

    :cond_1
    sub-float v5, v10, v4

    invoke-virtual {v3, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public cancel()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSwitchViewState(I)V

    :cond_0
    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimState:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimForward:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->resetToOrigin()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    return-void
.end method

.method public getObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAnimForword()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimForward:Z

    return v0
.end method

.method public isAutoAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAutoAnimation:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStartAnimationNow()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onStop()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "onStop !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->applyTransform(F)V

    :cond_0
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimForward:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->resetToOrigin()V

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimForward:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSwitchViewState(I)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    return-void

    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z
    .locals 15

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v9

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mMode:I

    if-nez v1, :cond_0

    if-eqz v9, :cond_1

    invoke-virtual {v9}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isPickMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    move/from16 v0, p3

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAutoAnimation:Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxAlb:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxThm:I

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v2

    iput v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v2

    iput-boolean v2, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxAlb:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxThm:I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v7, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxAlb:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxThm:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v12

    if-nez v12, :cond_2

    const-string/jumbo v1, "GlEnlargeAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareAnimation is canceled : mediaItem is null!!, index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_2
    if-nez v7, :cond_3

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAutoAnimation:Z

    if-nez v1, :cond_3

    const-string/jumbo v1, "GlEnlargeAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "prepareAnimation is canceled : bitmap is null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v13, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v13, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v1, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    instance-of v1, v12, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v1, :cond_5

    check-cast v12, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v12

    :cond_5
    if-eqz v7, :cond_6

    :try_start_0
    invoke-static {v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    const/4 v2, 0x2

    invoke-virtual {v1, v12, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mRatioRange:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    array-length v14, v1

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_8

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mChild:[Lcom/sec/android/gallery3d/glcore/GlObject;

    aget-object v8, v1, v11

    if-nez v8, :cond_7

    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v10

    const-string/jumbo v1, "GlEnlargeAnimation"

    const-string/jumbo v2, "OutOfMemoryError occured at prepareAnimation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setVisibility(Z)V

    goto :goto_4

    :cond_8
    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorSqr;-><init>()V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public requestComplete()V
    .locals 0

    return-void
.end method

.method public setScale(F)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public setStartAnimationNow(Z)V
    .locals 0

    return-void
.end method

.method public startAnimation()Z
    .locals 10

    const/4 v3, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation mMainObj.mGlRoot = null skipped !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation parentObj = null skipped !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxAlb:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mIdxThm:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation bitmap = null skipped !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRotation:I

    invoke-direct {p0, v6, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->getCoverBitmpa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation getCoverBitmpa bitmap = null skipped !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgW:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mTgtImgH:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVertexRotation(I)V

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->setOriginalPos(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->setObjectRect()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->removeChild(Lcom/sec/android/gallery3d/glcore/GlObject;)Z

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v8, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorVisibility(Z)V

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsX:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsY:F

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mOrgAbsZ:F

    invoke-virtual {v0, v1, v2, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFill(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->getCropRect()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, v7, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v7, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v4, v7, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTexCoords(FFFF)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAutoAnimation:Z

    if-eqz v0, :cond_4

    iput-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mAnimForward:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->start()V

    move v5, v9

    goto/16 :goto_0

    :cond_4
    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlCoverViewSwitchAnimation;->mState:I

    move v5, v9

    goto/16 :goto_0
.end method
