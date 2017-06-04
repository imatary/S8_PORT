.class public Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlEnlargeAnimation.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/IGlViewSwitchAnimation;


# static fields
.field private static final ANIM_STATE_ACTIVE:I = 0x2

.field private static final ANIM_STATE_IDLE:I = 0x0

.field private static final ANIM_STATE_READY:I = 0x1

.field private static final ANIM_STATE_RUNNING:I = 0x3

.field private static final FEATURE_IS_NOS:Z

.field private static final FEATURE_SHOW_STATUS_BAR:Z

.field private static final FEATURE_USE_TAB_UI:Z

.field private static final FULLVIEW_CHANGE_RATIO:F = 0.0f

.field private static final MSG_REMOVE_OTHER_THUMBNAILS:I = 0x4

.field private static final MSG_SET_ANIMATION_ENABLED:I = 0x2

.field private static final MSG_SET_ANIMATION_REVERTED:I = 0x3

.field private static final MSG_SET_BG_COLOR:I = 0x1

.field private static final MSG_SET_FULL_VIEW:I = 0x5

.field private static final SCALE_DELTA:F = 0.6f

.field private static final SCALE_LIMIT:F = 10.0f

.field private static final SCALE_MATCH_WIDTH_THRESHOLD:F = 6.0E-4f

.field private static final SCALE_MAX:F = 1.6f

.field private static final TAG:Ljava/lang/String; = "GlEnlargeAnimation"

.field private static final mToColor:I


# instance fields
.field private final REAL_SCREEN_RATIO:F

.field private final inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

.field private mActionCurrentColor:I

.field private mActionFromColor:I

.field private mActionToColor:I

.field private mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

.field public mAnimForward:Z

.field private mAutoAnimation:Z

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mCropRectPro:Landroid/graphics/Rect;

.field private final mCropRectSrc:Landroid/graphics/Rect;

.field private mCurrentColor:I

.field private mCurrentScale:F

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

.field private mFromColor:I

.field private final mHandler:Landroid/os/Handler;

.field private mIdxAlb:I

.field private mIdxThm:I

.field private mIsFullView:Z

.field private mIsStartAnimationNow:Z

.field private mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mManual:Z

.field private mOrgAbsX:F

.field private mOrgAbsY:F

.field private mOrgAbsZ:F

.field private mOrigX:F

.field private mOrigY:F

.field private mOrigZ:F

.field private mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

.field private mRatioRange:F

.field private final mRotateListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

.field private mRotation:I

.field public mRotationOnly:Z

.field private mSrcBitmap:Landroid/graphics/Bitmap;

.field private mSrcH:F

.field private mSrcW:F

.field private mState:I

.field private mStretchOption:I

.field private mTgtImgH:I

.field private mTgtImgW:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0xfa

    const/4 v1, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_USE_TAB_UI:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->ShowStatusBar:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_SHOW_STATUS_BAR:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_IS_NOS:Z

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_IS_NOS:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf2

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :goto_0
    sput v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mToColor:I

    return-void

    :cond_0
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mStretchOption:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$2;

    invoke-direct {v1, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotateListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setMaxIntRatio(F)V

    new-instance v1, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v2, 0x68

    invoke-static {v2}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getRealScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->REAL_SCREEN_RATIO:F

    new-instance v1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_USE_TAB_UI:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_SHOW_STATUS_BAR:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method private applyMainAnim(F)V
    .locals 14

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, p1

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, p1

    mul-float/2addr v10, v11

    sub-float v3, v9, v10

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mManual:Z

    if-eqz v9, :cond_2

    move v6, p1

    :goto_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v6

    mul-float/2addr v9, v10

    float-to-int v4, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v7, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v6

    mul-float/2addr v9, v10

    float-to-int v8, v9

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v9

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v9, v10

    float-to-int v0, v9

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mManual:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, v10, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v3

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    :cond_0
    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    int-to-float v10, v4

    int-to-float v11, v8

    int-to-float v12, v7

    int-to-float v13, v0

    invoke-virtual {v9, v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTexCoords(FFFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsX:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsX:F

    mul-float/2addr v11, v6

    sub-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsY:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsY:F

    mul-float/2addr v12, v6

    sub-float/2addr v11, v12

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsZ:F

    invoke-virtual {v9, v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcW:F

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mDstW:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcW:F

    sub-float/2addr v11, v12

    mul-float/2addr v11, v6

    add-float/2addr v10, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcH:F

    iget v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mDstH:F

    iget v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcH:F

    sub-float/2addr v12, v13

    mul-float/2addr v12, v6

    add-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_5

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/gallery3d/glcore/GlObject;

    if-eqz v5, :cond_1

    iget-object v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v5, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-eqz v9, :cond_3

    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRatioRange:F

    const/high16 v10, 0x3f800000    # 1.0f

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRatioRange:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float v6, v9, v10

    goto/16 :goto_0

    :cond_3
    iget v9, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRatioRange:F

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float/2addr v10, v3

    mul-float v6, v9, v10

    goto/16 :goto_0

    :cond_4
    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    invoke-virtual {v5, v9}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method private applyRotateAnim(F)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, p1

    sub-float v2, v3, p1

    mul-float/2addr v1, v2

    sub-float v0, v3, v1

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    sub-float/2addr v3, v0

    mul-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    return-void
.end method

.method private applyTransformBG(F)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v8, 0x437f0000    # 255.0f

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v0, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sget v6, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v1, v4

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGlRootView()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v4

    int-to-float v5, v3

    div-float/2addr v5, v8

    int-to-float v6, v2

    div-float/2addr v6, v8

    int-to-float v7, v1

    div-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7, v10}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v0, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v1, v4

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionCurrentColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionCurrentColor:I

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    cmpl-float v4, p1, v10

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method private initializeAcionbarColor()V
    .locals 4

    const v2, 0x106000d

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCoverScrollUp()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    move v0, v2

    :goto_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    iput v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionCurrentColor:I

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionToColor:I

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f100014

    goto :goto_1
.end method

.method private isMatchWidth()Z
    .locals 5

    const/4 v3, 0x0

    sget-boolean v2, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_IS_NOS:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v2}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotation:I

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotation:I

    const/16 v4, 0xb4

    if-ne v2, v4, :cond_3

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    int-to-float v2, v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    int-to-float v4, v4

    div-float v1, v2, v4

    :goto_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->REAL_SCREEN_RATIO:F

    sub-float v0, v2, v1

    const/4 v2, 0x0

    cmpg-float v2, v2, v0

    if-gez v2, :cond_4

    const v2, 0x3a1d4952    # 6.0E-4f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    move v3, v2

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    int-to-float v2, v2

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    int-to-float v4, v4

    div-float v1, v2, v4

    goto :goto_1

    :cond_4
    move v2, v3

    goto :goto_2
.end method

.method private requestCompleteInter()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mManual:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationGesture(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->start()V

    return-void
.end method

.method private resetToOrigin()V
    .locals 10

    const/4 v9, 0x1

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTexCoords(FFFF)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v5, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v3, v9}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorVisibility(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v4, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-direct {p0, v9}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setOriginalPos(Z)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

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
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v5, 0x106000d

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    :goto_2
    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v4}, Lcom/sec/samsung/gallery/glview/composeView/GlAnimUtil;->getBackgroundColorForAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransformBG(F)V

    return-void

    :cond_3
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    const v5, 0x7f100014

    invoke-static {v4, v5}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    goto :goto_2
.end method

.method private setObjectRect()V
    .locals 13

    const/4 v3, 0x0

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, v11, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v6, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v11, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v10, v11

    iget v11, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v9, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotation:I

    if-eqz v11, :cond_0

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotation:I

    const/16 v12, 0xb4

    if-ne v11, v12, :cond_4

    :cond_0
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    int-to-float v8, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    int-to-float v7, v11

    :goto_0
    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcW:F

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v11, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v11

    iput v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcH:F

    mul-float v11, v10, v7

    mul-float v12, v9, v8

    cmpg-float v11, v11, v12

    if-gez v11, :cond_1

    const/4 v3, 0x1

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->isMatchWidth()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_5

    div-float v5, v10, v8

    :goto_1
    const/high16 v11, 0x41200000    # 10.0f

    cmpl-float v11, v5, v11

    if-lez v11, :cond_3

    const/high16 v5, 0x41200000    # 10.0f

    :cond_3
    div-float v4, v6, v10

    mul-float v11, v8, v5

    mul-float v1, v11, v4

    mul-float v11, v7, v5

    mul-float v0, v11, v4

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mDstW:F

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mDstH:F

    return-void

    :cond_4
    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    int-to-float v8, v11

    iget v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    int-to-float v7, v11

    goto :goto_0

    :cond_5
    div-float v5, v9, v7

    goto :goto_1
.end method

.method private setOriginalPos(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrigX:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrigY:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrigZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcW:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcH:F

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrigX:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrigY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrigZ:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsX:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getAbsZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsZ:F

    goto :goto_0
.end method


# virtual methods
.method public addFadeOutObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

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

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected applyTransform(F)V
    .locals 4

    :try_start_0
    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyRotateAnim(F)V

    :goto_0
    sget-boolean v1, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->FEATURE_SHOW_STATUS_BAR:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsFullView:Z

    if-nez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransformBG(F)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyMainAnim(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "GlEnlargeAnimation"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransformBG(F)V

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransformBG(F)V

    throw v1
.end method

.method public cancel()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSwitchViewState(I)V

    :cond_0
    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimState:I

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mManual:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    iput-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->resetToOrigin()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationGesture(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransformBG(F)V

    return-void
.end method

.method public getObject()Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    return-object v0
.end method

.method public isActive()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

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

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    return v0
.end method

.method public isAutoAnimation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAutoAnimation:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

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

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

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

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    return v0
.end method

.method protected onCancel()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/sec/samsung/gallery/util/DNIeModeHelper;->enableDNIeMode(Landroid/content/Context;ZI)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/util/BrightnessModeHelper;->setBrightnessControl(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2, v1}, Lcom/sec/samsung/gallery/util/DNIeModeHelper;->enableDNIeMode(Landroid/content/Context;ZI)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v2, "onStop !!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransform(F)V

    :cond_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->resetToOrigin()V

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    if-ne v0, v4, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSwitchViewState(I)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void

    :cond_4
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z
    .locals 10

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->initializeAcionbarColor()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mStretchOption:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAnimUtil;->getBackgroundColorForAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentColor:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iput-object p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAutoAnimation:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxAlb:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxThm:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFadeOutObjs:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxAlb:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxThm:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxAlb:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxThm:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v8

    if-nez v8, :cond_2

    const-string/jumbo v0, "GlEnlargeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareAnimation is canceled : mediaItem is null!!, index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    if-nez v6, :cond_3

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAutoAnimation:Z

    if-nez v0, :cond_3

    const-string/jumbo v0, "GlEnlargeAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prepareAnimation is canceled : bitmap is null = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v9, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-eqz v9, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectSrc:Landroid/graphics/Rect;

    invoke-virtual {v0, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    instance-of v0, v8, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    if-eqz v0, :cond_7

    check-cast v8, Lcom/sec/android/gallery3d/data/LocalFaceImage;

    invoke-virtual {v8}, Lcom/sec/android/gallery3d/data/LocalFaceImage;->getLocalImage()Lcom/sec/android/gallery3d/data/LocalImage;

    move-result-object v8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    :goto_1
    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    if-nez v0, :cond_5

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mStretchOption:I

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseLimitCountForScroll:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mStretchOption:I

    invoke-virtual {v0, v8, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->requestThumbnailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    :cond_5
    :goto_2
    if-eqz v6, :cond_f

    :try_start_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mSrcBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotateListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    instance-of v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setStroke(Z)V

    :cond_6
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mSrcRoll:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mRotation:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotation:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRatioRange:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mManual:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    instance-of v0, v8, Lcom/sec/android/gallery3d/remote/RemoteMediaItem;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-byte v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseCropCenterPanoramaThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_a

    :cond_9
    if-nez p3, :cond_b

    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->mDataLoader:Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;

    iget-byte v0, v0, Lcom/sec/samsung/gallery/glview/composeView/ComposeViewDataLoader;->mLevel:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    invoke-static {v8}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanoramaImage(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    goto/16 :goto_1

    :cond_e
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mStretchOption:I

    invoke-virtual {v0, v8, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->requestScreenNailUrgent(Lcom/sec/android/gallery3d/data/MediaItem;I)Z

    goto/16 :goto_2

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_3

    :catch_0
    move-exception v7

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "OutOfMemoryError occured at prepareAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->gc()V

    goto/16 :goto_4

    :catch_1
    move-exception v7

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "RuntimeException occured at prepareAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public requestComplete()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    if-ne v2, v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationGesture(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRoll(F)V

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v2, v3

    const v3, 0x3f19999a    # 0.6f

    div-float/2addr v2, v3

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRatioRange:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    const v3, 0x3f933333    # 1.15f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->requestCompleteInter()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public setScale(F)I
    .locals 7

    const/4 v0, -0x1

    const v6, 0x3fcccccd    # 1.6f

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    mul-float/2addr v2, p1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mManual:Z

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_2

    iput v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransform(F)V

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->requestCompleteInter()V

    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    iput-boolean v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotationOnly:Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->resetToOrigin()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->requestCompleteInter()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentScale:F

    sub-float/2addr v0, v4

    const v2, 0x3f19999a    # 0.6f

    div-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->applyTransform(F)V

    move v0, v1

    goto :goto_0
.end method

.method public setStartAnimationNow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIsStartAnimationNow:Z

    return-void
.end method

.method public start()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;->start()V

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCurrentColor:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mFromColor:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionCurrentColor:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mActionFromColor:I

    return-void
.end method

.method public startAnimation()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    if-nez v0, :cond_0

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation mMainObj.mGlRoot = null skipped !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    :goto_0
    return v5

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mParentObj:Lcom/sec/android/gallery3d/glcore/GlObject;

    if-nez v0, :cond_1

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation parentObj = null skipped !!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v1, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v1

    iput v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isDynamicLayout()Z

    move-result v1

    iput-boolean v1, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAdapter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxAlb:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mIdxThm:I

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mStretchOption:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v6, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_2

    const-string/jumbo v0, "GlEnlargeAnimation"

    const-string/jumbo v1, "startAnimation bitmap = null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    iput v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mRotation:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgW:I

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mTgtImgH:I

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_1
    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setOriginalPos(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setObjectRect()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v7, v5}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorVisibility(Z)V

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mExpansionObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mCheckObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsX:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsY:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mOrgAbsZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v8}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setRotationGesture(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v1, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v2, v2, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v1, v2, v6}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFill(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mCropRectPro:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setTexCoords(FFFF)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAutoAnimation:Z

    if-eqz v0, :cond_5

    iput-boolean v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mAnimForward:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->setShowHideAnimationEnabled(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mEnlargeDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mDimEffectObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setVisibility(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->start()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v5, v8

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlEnlargeAnimation;->mState:I

    move v5, v8

    goto/16 :goto_0
.end method
