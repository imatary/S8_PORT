.class public Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;
.super Landroid/widget/FrameLayout;
.source "BlurView.java"


# instance fields
.field private mBitmapBg:Landroid/graphics/Bitmap;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    iput v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->init()V

    return-void
.end method

.method private calculateMatrix()V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    int-to-float v7, v7

    iget v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    int-to-float v8, v8

    div-float v0, v7, v8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    cmpg-float v7, v0, v4

    if-gtz v7, :cond_1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v2, v7, v1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    int-to-float v7, v7

    sub-float/2addr v7, v2

    div-float v6, v7, v9

    :goto_0
    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_0
    return-void

    :cond_1
    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float v1, v7, v8

    iget-object v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v3, v7, v1

    iget v7, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float v5, v7, v9

    goto :goto_0
.end method

.method private init()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method private releaseBackground()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-string v0, "#66000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowHeight:I

    invoke-virtual {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/mimage/photoretouching/lpe/util/Utils;->getWindowWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mWindowWidth:I

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->calculateMatrix()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setBitmapBackground(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->mBitmapBg:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->calculateMatrix()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/mimage/photoretouching/lpe/view/BlurView;->releaseBackground()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
