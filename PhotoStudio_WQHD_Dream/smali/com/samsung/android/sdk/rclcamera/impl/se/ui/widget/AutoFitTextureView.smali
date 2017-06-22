.class public Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;
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

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

.field private mViewHeight:I

.field private mViewWidth:I

.field public posX:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    iput-boolean v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAspectRatio()D
    .locals 4

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    if-nez v0, :cond_1

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    int-to-double v0, v0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

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

    iget-boolean v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

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
    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v2, v3

    :goto_1
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->getHeight()I

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v2, v4, v5

    goto :goto_1

    :cond_2
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    goto :goto_2
.end method

.method public initialize(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 0

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/view/TextureView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->setMeasuredDimension(II)V

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    iget v3, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v11, 0x1

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__af_base_width:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__af_base_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    div-int/lit8 v7, v2, 0x2

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v8

    float-to-int v8, v8

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getCameraUI()Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/layout/CameraMainUI;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v9, v1, 0x2

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

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

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v7

    float-to-int v7, v7

    invoke-static {v3, v0, v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->transformEventByScreenOrientation(Landroid/view/MotionEvent;III)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isPrepareRecording()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

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

    iget-object v8, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewWidth()F

    move-result v8

    float-to-int v8, v8

    div-int/lit8 v9, v2, 0x2

    sub-int/2addr v8, v9

    invoke-static {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    div-int/lit8 v8, v1, 0x2

    iget-object v9, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getTextureViewHeight()F

    move-result v9

    float-to-int v9, v9

    div-int/lit8 v10, v1, 0x2

    sub-int/2addr v9, v10

    invoke-static {v7, v8, v9}, Lcom/samsung/android/sdk/rclcamera/impl/se/util/ProviderUtil;->clamp(III)I

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
    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v6

    const-string v7, "auto"

    invoke-virtual {v6, v7}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->isFocusAvailable(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6, v4, v5}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->setTouchAfPosition(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v6

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->setTouchFocusPosition(II)V

    iget-object v6, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getEngine()Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;->START_AUTO_FOCUS:Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraEngine;->scheduleCameraCommand(Lcom/samsung/android/sdk/rclcamera/impl/se/engine/CameraCommand$COMMAND_TYPE;[Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAspectRatio(III)V
    .locals 22

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "Invalid ratio."

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    :cond_1
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewWidth:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mPreviewHeight:I

    const/16 v18, 0x5a

    move/from16 v0, p3

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x10e

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    :cond_2
    move/from16 v15, p1

    move/from16 p1, p2

    move/from16 p2, v15

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getMaximumContainerWidth()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getMaximumContainerHeight()I

    move-result v10

    const/4 v13, 0x0

    const/4 v12, 0x0

    mul-int v18, v10, p1

    div-int v18, v18, p2

    move/from16 v0, v18

    if-ge v11, v0, :cond_a

    move v13, v11

    mul-int v18, v11, p2

    div-int v12, v18, p1

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v13, v0, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v12, v0, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v19

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_9

    :cond_4
    sget-object v18, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Container size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v18, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Texture size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    move-object/from16 v0, p0

    iput v12, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    const-wide v4, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/samsung/android/sdk/rclcamera/impl/se/R$dimen;->__cp__preview_align_margin:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v8, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMultiwindowState()Z

    move-result v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getDexwindowState()Z

    move-result v18

    if-nez v18, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v17

    move/from16 v1, v16

    if-le v0, v1, :cond_b

    move/from16 v8, v17

    move/from16 v7, v16

    :goto_1
    sget-object v18, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Screen size = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "x"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewWidth:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getMaximumContainerWidth()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    const/4 v6, 0x1

    :cond_6
    :goto_2
    const-wide v18, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v20

    sub-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->abs(D)D

    move-result-wide v18

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v18, v18, v20

    if-gtz v18, :cond_7

    if-nez v6, :cond_d

    :cond_7
    sget-object v18, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Current ratio does not need margin: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", enough space for margin="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mOrientation:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMultiwindowState()Z

    move-result v18

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getDexwindowState()Z

    move-result v18

    if-nez v18, :cond_8

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v18

    const-wide v20, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v18, v18, v20

    if-nez v18, :cond_e

    sub-int v18, v8, v13

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    :cond_8
    :goto_4
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_5
    return-void

    :cond_a
    mul-int v18, v10, p1

    div-int v13, v18, p2

    move v12, v10

    goto/16 :goto_0

    :cond_b
    move/from16 v8, v16

    move/from16 v7, v17

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mViewHeight:I

    move/from16 v18, v0

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getMaximumContainerHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_6

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_d
    sget-object v18, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Apply preview align margin: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mHasMargin:Z

    goto/16 :goto_3

    :cond_e
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    goto :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getMultiwindowState()Z

    move-result v18

    if-nez v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;->getSetting()Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/rclcamera/impl/se/setting/CameraSetting;->getDexwindowState()Z

    move-result v18

    if-nez v18, :cond_10

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->getAspectRatio()D

    move-result-wide v18

    const-wide v20, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    cmpl-double v18, v18, v20

    if-nez v18, :cond_11

    sub-int v18, v8, v12

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->posX:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :cond_10
    :goto_6
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/samsung/android/sdk/rclcamera/impl/se/ui/widget/AutoFitTextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_11
    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_6
.end method
