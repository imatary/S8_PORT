.class public Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;
.super Lcom/sec/android/gallery3d/glcore/GlAnimationBase;
.source "GlShrinkAnimation.java"


# static fields
.field private static final EVT_ANIMATION_CANCEL:I = 0x1

.field private static final FEATURE_USE_TAB_UI:Z

.field private static final MSG_SET_BG_COLOR:I = 0x1

.field private static final MSG_SET_ORIGINAL:I = 0x2

.field private static final SCALE_DELTA:F = 0.6f

.field private static final SCALE_LIMIT:F = 10.0f

.field private static final SCALE_MIN:F = 0.39999998f

.field public static final SHRINK_ANIMATION_DURATION_SHORT:I = 0x190

.field public static final SHRINK_OPTION_AUTO:I = 0x1

.field public static final SHRINK_OPTION_MANUAL:I = 0x2

.field public static final SHRINK_OPTION_NO:I = 0x0

.field public static final SHRINK_TYPE_SCREENNAIL:I = 0x0

.field public static final SHRINK_TYPE_THUMBNAIL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlShrinkAnimation "

.field public static final TOUCHABLE_THRESHOLD_RATIO:F = 0.65f


# instance fields
.field private inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

.field private mActionCurrentColor:I

.field private mActionFromColor:I

.field private mActionToColor:I

.field public mActive:Z

.field public mAnimForward:Z

.field public final mAutoAnimation:Z

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mBgOriginalDrawableId:I

.field private final mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

.field private mCropRect:Landroid/graphics/Rect;

.field private mCurrentColor:I

.field private mCurrentScale:F

.field private mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

.field private mFadeInObjs:Ljava/util/ArrayList;
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

.field private mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private final mMainHandler:Landroid/os/Handler;

.field public mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

.field private mManual:Z

.field private mMessageSent:Z

.field private mOrigX:F

.field private mOrigY:F

.field private mOrigZ:F

.field private mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mRatioRange:F

.field private final mRotateListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

.field private mRotation:I

.field private mSrcImgH:I

.field private mSrcImgW:I

.field private mToColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->UseTabUI:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->FEATURE_USE_TAB_UI:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;Z)V
    .locals 3

    const/16 v2, 0xfa

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase;-><init>()V

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf2

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mToColor:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentColor:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRotateListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAutoAnimation:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    iput-boolean v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mManual:Z

    new-instance v0, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;

    const/16 v1, 0x68

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/utils/PathInterpolatorUtils;->getInterpolator(I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/glcore/glparts/GlInterpolatorPreset;-><init>(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setInterpolator(Lcom/sec/android/gallery3d/glcore/GlInterpolator;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-static {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlAnimUtil;->getBackgroundColorForAnim(Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;)I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->removeAlphaToInt(I)I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mToColor:I

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    return-void

    :cond_0
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->FEATURE_USE_TAB_UI:Z

    return v0
.end method

.method static synthetic access$300(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;)I
    .locals 1

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mBgOriginalDrawableId:I

    return v0
.end method

.method private applyTransformBG(F)V
    .locals 10

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v8, 0x437f0000    # 255.0f

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v0, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v1, v4

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentColor:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mIsSearchView:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

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

    invoke-virtual {v4, v5, v6, v7, v9}, Lcom/sec/android/gallery3d/glcore/GlRootView;->setGlBackgroundColor(FFFF)V

    :cond_0
    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v0, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v3, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v2, v4

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    iget v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionToColor:I

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    sub-float/2addr v4, v5

    float-to-int v1, v4

    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionCurrentColor:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    cmpg-float v4, p1, v9

    if-gez v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionCurrentColor:I

    const/4 v8, 0x0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v4, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    const/4 v4, 0x2

    goto :goto_0
.end method

.method private applyTransformInter(F)V
    .locals 12

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v7, v9, p1

    sub-float v8, v9, p1

    mul-float/2addr v7, v8

    sub-float v1, v9, v7

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mManual:Z

    if-eqz v7, :cond_1

    move v4, p1

    :goto_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgW:I

    int-to-float v7, v7

    sub-float v8, v9, v4

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCropRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgH:I

    int-to-float v7, v7

    sub-float v8, v9, v4

    mul-float/2addr v7, v8

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCropRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    mul-float/2addr v8, v4

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mManual:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mSrcRoll:F

    sub-float/2addr v9, v1

    mul-float/2addr v8, v9

    invoke-virtual {v7, v8}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRoll(F)V

    :cond_0
    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v7, v7, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mTransAnim:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;

    invoke-virtual {v7, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject$TranformAnimation;->applyTransform(F)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    int-to-float v8, v2

    int-to-float v9, v6

    int-to-float v10, v5

    int-to-float v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTexCoords(FFFF)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFadeInObjs:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    goto :goto_1

    :cond_1
    iget-boolean v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    if-eqz v7, :cond_2

    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRatioRange:F

    iget v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRatioRange:F

    sub-float v8, v9, v8

    mul-float/2addr v8, v1

    add-float v4, v7, v8

    goto :goto_0

    :cond_2
    iget v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRatioRange:F

    sub-float v8, v9, v1

    mul-float v4, v7, v8

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getPreviousBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-object v0, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mBitmap:Landroid/graphics/Bitmap;

    :cond_1
    return-object v0
.end method

.method private getCropRect(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;
    .locals 9

    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v3, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v2, v4

    sget-object v4, Lcom/sec/samsung/gallery/features/FeatureNames;->UseFaceThumbnail:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v4}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v4

    if-eqz v4, :cond_4

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-nez v4, :cond_3

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/UnionImage;

    if-eqz v4, :cond_4

    :cond_3
    invoke-static {p1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isPanorama(Lcom/sec/android/gallery3d/data/MediaItem;)Z

    move-result v4

    if-nez v4, :cond_4

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/LocalImage;

    if-eqz v4, :cond_6

    check-cast p1, Lcom/sec/android/gallery3d/data/LocalImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/LocalImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    float-to-int v4, v3

    float-to-int v5, v2

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static {v4, v5, v1, v6}, Lcom/sec/samsung/gallery/util/FaceUtil;->calcFaceCropRect(IILandroid/graphics/RectF;I)Landroid/graphics/Rect;

    move-result-object v0

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v6, v6, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v7, v7, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v8, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v8, v8, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/sec/android/gallery3d/common/BitmapUtils;->calcCenterCropRect(FFFFI)Landroid/graphics/Rect;

    move-result-object v0

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-object v0, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mCropRect:Landroid/graphics/Rect;

    goto :goto_0

    :cond_6
    check-cast p1, Lcom/sec/android/gallery3d/data/UnionImage;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/UnionImage;->getRectOfAllFaces()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_1
.end method

.method private initializeAcionbarColor()V
    .locals 5

    const v2, 0x7f100014

    const v3, 0x106000d

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mViewConfig:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;

    iget-boolean v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$ViewConfig;->mUsePhotoCover:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->isCoverScrollUp()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v4, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sec/samsung/gallery/features/FeatureNames;->IsNOS:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v1}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionCurrentColor:I

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionToColor:I

    :goto_2
    if-eqz v0, :cond_3

    const v1, 0x7f020051

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mBgOriginalDrawableId:I

    :goto_3
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionToColor:I

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    iget-object v1, v1, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getActionBarBackgroundRscID(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)I

    move-result v1

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mBgOriginalDrawableId:I

    goto :goto_3
.end method

.method private setObjectRect()V
    .locals 15

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v10, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget v10, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v9, v10

    iget v10, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v8, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRotation:I

    if-eqz v10, :cond_0

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRotation:I

    const/16 v11, 0xb4

    if-ne v10, v11, :cond_2

    :cond_0
    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgW:I

    int-to-float v6, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgH:I

    int-to-float v5, v10

    :goto_0
    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v11, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getWidth(Z)F

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getHeight(Z)F

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsX()F

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsY()F

    move-result v12

    iget-object v13, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTargetPos(FFF)V

    mul-float v10, v9, v5

    mul-float v11, v8, v6

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    div-float v2, v8, v5

    :goto_1
    const/high16 v10, 0x41200000    # 10.0f

    cmpl-float v10, v2, v10

    if-lez v10, :cond_1

    const/high16 v2, 0x41200000    # 10.0f

    :cond_1
    div-float v1, v3, v9

    mul-float v10, v6, v2

    mul-float v7, v10, v1

    mul-float v10, v5, v2

    mul-float v4, v10, v1

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v10, v7, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourceSize(FF)V

    iget-object v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v11, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getAbsZ()F

    move-result v11

    invoke-virtual {v10, v14, v14, v11}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setSourcePos(FFF)V

    return-void

    :cond_2
    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgH:I

    int-to-float v6, v10

    iget v10, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgW:I

    int-to-float v5, v10

    goto :goto_0

    :cond_3
    div-float v2, v9, v6

    goto :goto_1
.end method

.method private setOriginalPos(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mOrigX:F

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mOrigY:F

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mOrigZ:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setPos(FFF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getX()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mOrigX:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getY()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mOrigY:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getZ()F

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mOrigZ:F

    goto :goto_0
.end method


# virtual methods
.method public addFadeInObj(Lcom/sec/android/gallery3d/glcore/GlObject;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFadeInObjs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransform(F)V

    goto :goto_0
.end method

.method public addFadeInObjs(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<+",
            "Lcom/sec/android/gallery3d/glcore/GlObject;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/gallery3d/glcore/GlObject;

    invoke-virtual {v2, v5}, Lcom/sec/android/gallery3d/glcore/GlObject;->setAlpha(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFadeInObjs:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransform(F)V

    goto :goto_0
.end method

.method protected applyTransform(F)V
    .locals 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransformInter(F)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransformBG(F)V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->initializeAcionbarColor()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransformBG(F)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "GlShrinkAnimation "

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransformBG(F)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransformBG(F)V

    throw v1
.end method

.method protected onCancel()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransform(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentColor:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFromColor:I

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionCurrentColor:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActionFromColor:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    return-void
.end method

.method protected onStop()V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getLastRatio()F

    move-result v0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->initializeAcionbarColor()V

    invoke-virtual {p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransform(F)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    if-nez v0, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setTexCoords(FFFF)V

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setOriginalPos(Z)V

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, v4}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRotationGesture(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->removeAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    iput-boolean v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setClickEnabled(Z)V

    goto :goto_0
.end method

.method public prepareAnimation(Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;Z)Z
    .locals 12

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->initializeAcionbarColor()V

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string/jumbo v0, "GlShrinkAnimation "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareAnimation adapter == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " or object == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransform(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    move-object v0, p2

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->getParent()Lcom/sec/android/gallery3d/glcore/GlObject;

    move-result-object v0

    check-cast v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mParentObj:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getGroupIndex(I)I

    move-result v1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mIndex:I

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GlIndex;->getItemIndex(I)I

    move-result v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mFadeInObjs:Ljava/util/ArrayList;

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getWidth(Z)F

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v3, 0x1

    invoke-virtual {p2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->getHeight(Z)F

    move-result v3

    iput v3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mObjHeight:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iput-boolean p3, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mIsDynamicLayout:Z

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getViewInfo(IIILcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;Z)Z

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {p1, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter;->getItem(II)Lcom/sec/android/gallery3d/data/MediaItem;

    move-result-object v11

    invoke-direct {p0, v11, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->getCropRect(Lcom/sec/android/gallery3d/data/MediaItem;Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCropRect:Landroid/graphics/Rect;

    if-eqz v10, :cond_3

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCropRect:Landroid/graphics/Rect;

    if-nez v0, :cond_5

    :cond_3
    const-string/jumbo v0, "GlShrinkAnimation "

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "prepareAnimation bitmap = null or recycled : skipped !!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransformBG(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mListener:Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;

    invoke-interface {v0, p0}, Lcom/sec/android/gallery3d/glcore/GlAnimationBase$GlAnimationListener;->onAnimationEnd(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mActive:Z

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgW:I

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mSrcImgH:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mRotation:I

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRotation:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->inter:Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseAdapter$AdapterInterface;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mDecorView:Lcom/sec/android/gallery3d/glcore/GlView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setOriginalPos(Z)V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setObjectRect()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v0, v0, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    iget-object v0, v0, Lcom/sec/android/gallery3d/glcore/GlRootView;->mRootObject:Lcom/sec/android/gallery3d/glcore/GlObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, v3}, Lcom/sec/android/gallery3d/glcore/GlObject;->addChild(Lcom/sec/android/gallery3d/glcore/GlObject;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v3, v4, v10}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEmptyFill(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setDecorState(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRotation:I

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setVertexRotation(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->moveToLast()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setEnableRollAnim(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRotationGesture(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRotateListener:Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;

    invoke-virtual {v0, v3}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setRotationListener(Lcom/sec/android/gallery3d/glcore/GlObject$GlRotateListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRatioRange:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$3;

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    iget-object v3, v3, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v0, p0, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation$3;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAutoAnimation:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMessageSent:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v4, 0x190

    invoke-virtual {p0, v4, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->start()V

    :goto_1
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMessageSent:Z

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsDualScreen:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x3e8

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->NeedMoreDelayForShrink:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0xfa

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x64

    invoke-virtual/range {v3 .. v9}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessageDelayed(IIIIJ)V

    goto :goto_1
.end method

.method public requestComplete()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mManual:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    sub-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRatioRange:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->start()V

    return-void
.end method

.method public requestCompleteForward(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    const-string/jumbo v0, "GlShrinkAnimation "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " force: false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mManual:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    sub-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mRatioRange:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimForward:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMainObj:Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;

    invoke-virtual {v0, p0}, Lcom/sec/samsung/gallery/glview/composeView/PositionControllerBase$ThumbObject;->setAnimation(Lcom/sec/android/gallery3d/glcore/GlAnimationBase;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->setDuration(J)V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->start()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mAnimState:I

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->stop()V

    goto :goto_0
.end method

.method public setScale(F)V
    .locals 3

    const v2, 0x3ecccccc    # 0.39999998f

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMessageSent:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mMessageSent:Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    :cond_0
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mManual:Z

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iput v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iput v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->mCurrentScale:F

    sub-float v0, v1, v0

    const v1, 0x3f19999a    # 0.6f

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlShrinkAnimation;->applyTransform(F)V

    goto :goto_0
.end method
