.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;
.super Landroid/widget/RelativeLayout;
.source "AfView.java"


# static fields
.field private static CONTRAST_AF_HEIGHT:I = 0x0

.field private static CONTRAST_AF_WIDTH:I = 0x0

.field private static final MAX_SCALE_VALUE:F = 1.0f

.field private static final MIN_SCALE_VALUE:F = 0.9f

.field public static final MODE_FOCUS:I = 0x1

.field public static final MODE_NOTREADY:I = 0x0

.field private static PROVIDER_SURFACE_HEIGHT:I = 0x0

.field private static PROVIDER_SURFACE_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String;

.field private static final TOUCH_AF_VIEW_TIMER:I = 0x3e8

.field private static final TOUCH_AF_VI_DURATION:I = 0x96


# instance fields
.field private mAfBaseView:Landroid/widget/ImageView;

.field private mAfControlView:Landroid/widget/ImageView;

.field private mAfGroupPosX:I

.field private mAfGroupPosY:I

.field private mAfRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

.field private mContext:Landroid/content/Context;

.field private mGrowScaleAnimation:Landroid/view/animation/Animation;

.field private mMode:I

.field private mOldPosX:I

.field private mOldPosY:I

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

.field private mShrinkScaleAnimation:Landroid/view/animation/Animation;

.field private mTranslateGrowAnimation:Landroid/view/animation/Animation;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->TAG:Ljava/lang/String;

    sput v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_WIDTH:I

    sput v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_HEIGHT:I

    sput v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_WIDTH:I

    sput v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method


# virtual methods
.method public initialize(Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V
    .locals 3

    const v2, 0x3f99999a    # 1.2f

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->af_base:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$id;->af_control:I

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$dimen;->__cp__af_base_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$dimen;->__cp__af_base_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_HEIGHT:I

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_WIDTH:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosX:I

    sget v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosY:I

    return-void
.end method

.method public setTouchAfPosition(II)V
    .locals 13

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->TAG:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isPhaseAFSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationX(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x42b40000    # 90.0f

    const/4 v3, 0x0

    int-to-float v4, p1

    const/4 v5, 0x0

    int-to-float v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfRotateAnimation:Landroid/view/animation/RotateAnimation;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v9, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$drawable;->__cp__camera_caf_w:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfControlView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mCameraEngine:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->getCameraOrientation()I

    move-result v12

    const/16 v0, 0xb4

    if-eq v12, v0, :cond_2

    if-nez v12, :cond_8

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_HEIGHT:I

    :goto_1
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosX:I

    div-int/lit8 v0, v0, 0x2

    sub-int v10, p1, v0

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosY:I

    div-int/lit8 v0, v0, 0x2

    sub-int v11, p2, v0

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mOldPosX:I

    sub-int/2addr v0, v10

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mOldPosY:I

    sub-int/2addr v0, v11

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_4

    :cond_3
    iput v10, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mOldPosX:I

    iput v11, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mOldPosY:I

    int-to-float v0, v10

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setTranslationX(F)V

    int-to-float v0, v11

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setTranslationY(F)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const v2, 0x3f4ccccd    # 0.8f

    const v3, 0x3f8ccccd    # 1.1f

    const v4, 0x3f4ccccd    # 0.8f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosX:I

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosY:I

    sget v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_WIDTH:I

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mShrinkScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$2;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    iget v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosX:I

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfGroupPosY:I

    sget v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_WIDTH:I

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mGrowScaleAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$3;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_7

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    sget v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_WIDTH:I

    sget v2, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->CONTRAST_AF_HEIGHT:I

    sget v3, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_WIDTH:I

    sget v4, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_HEIGHT:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    new-instance v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView$4;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    :cond_7
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mAfBaseView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mTranslateGrowAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mMode:I

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_WIDTH:I

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/AfView;->PROVIDER_SURFACE_HEIGHT:I

    goto/16 :goto_1
.end method
