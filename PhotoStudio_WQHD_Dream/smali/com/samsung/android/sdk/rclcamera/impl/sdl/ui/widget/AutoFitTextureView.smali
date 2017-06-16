.class public Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;
.super Landroid/view/TextureView;
.source "AutoFitTextureView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHasMargin:Z

.field private mOrientation:I

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method public getCropOffsetRatio()Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    if-nez v4, :cond_0

    new-instance v4, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v2, v3

    :goto_1
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    move v0, v3

    :goto_2
    new-instance v3, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    goto :goto_1

    :cond_2
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    goto :goto_2
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x1

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onTouchEvent:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$dimen;->__cp__af_base_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$dimen;->__cp__af_base_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v7, v2, 0x2

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v8

    float-to-int v8, v8

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/layout/CameraMainUI;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->clamp(III)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    :goto_0
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v3, v0, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isPrepareRecording()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    const-string v7, "isPrepareRecording, ignore onTouchEvent"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    :pswitch_0
    return v11

    :cond_1
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v7, v2, 0x2

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v8

    float-to-int v8, v8

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/util/ProviderUtil;->clamp(III)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v3, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->isFocusAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->setTouchAfPosition(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->setTouchFocusPosition(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;->START_AUTO_FOCUS:Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/sdl/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAspectRatio(III)V
    .locals 18

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "Invalid ratio."

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/16 v14, 0x5a

    move/from16 v0, p3

    if-eq v0, v14, :cond_2

    const/16 v14, 0x10e

    move/from16 v0, p3

    if-ne v0, v14, :cond_3

    :cond_2
    move/from16 v13, p1

    move/from16 p1, p2

    move/from16 p2, v13

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getMaximumContainerWidth()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getMaximumContainerHeight()I

    move-result v8

    const/4 v11, 0x0

    const/4 v10, 0x0

    mul-int v14, v8, p1

    div-int v14, v14, p2

    if-ge v9, v14, :cond_8

    move v11, v9

    mul-int v14, v9, p2

    div-int v10, v14, p1

    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    if-ne v11, v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    if-ne v10, v14, :cond_4

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    if-eq v14, v15, :cond_7

    :cond_4
    sget-object v14, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Container size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v14, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Texture size = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "x"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v11, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    move-object/from16 v0, p0

    iput v10, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    move-object/from16 v0, p0

    iput v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/samsung/android/sdk/rclcamera/impl/sdl/R$dimen;->__cp__preview_align_margin:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewWidth:I

    add-int/2addr v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getMaximumContainerWidth()I

    move-result v15

    if-gt v14, v15, :cond_5

    const/4 v6, 0x1

    :cond_5
    :goto_1
    const-wide v14, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v16

    sub-double v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v14, v14, v16

    if-gtz v14, :cond_6

    if-nez v6, :cond_a

    :cond_6
    sget-object v14, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Current ratio does not need margin: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", enough space for margin="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    :goto_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mOrientation:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, 0x0

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v14, 0x0

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    mul-int v14, v8, p1

    div-int v11, v14, p2

    move v10, v8

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mViewHeight:I

    add-int/2addr v14, v7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;

    invoke-virtual {v15}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/RclCameraFragmentImpl;->getMaximumContainerHeight()I

    move-result v15

    if-gt v14, v15, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_a
    sget-object v14, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Apply preview align margin: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->mHasMargin:Z

    goto :goto_2

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, 0x0

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v14, 0x0

    iput v14, v12, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/samsung/android/sdk/rclcamera/impl/sdl/ui/widget/AutoFitTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method
