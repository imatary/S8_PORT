.class public Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;
.super Landroid/view/View;
.source "SpenColorGradationPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GradientView"
.end annotation


# instance fields
.field private mBorderPaint:Landroid/graphics/Paint;

.field private mCurX:F

.field private mCurY:F

.field private mCursorBitmap:Landroid/graphics/Bitmap;

.field private mCursorPaint:Landroid/graphics/Paint;

.field private mHueColors:[I

.field private mHuePaint:Landroid/graphics/Paint;

.field private mSaturationPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x1

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setDither(Z)V

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHueColors:[I

    new-instance v7, Landroid/graphics/SweepGradient;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHueColors:[I

    const/4 v4, 0x0

    invoke-direct {v7, v1, v2, v3, v4}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHuePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/RadialGradient;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    int-to-float v1, v1

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v9}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mSaturationPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    const v2, -0x727273

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-result-object v1

    const-string v2, "color_picker_point_circle"

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE_DP:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$200()I

    move-result v3

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE_DP:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$200()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->setDrawableImg(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorBitmap:Landroid/graphics/Bitmap;

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v8, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v8}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHueColors:[I

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHuePaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mSaturationPaint:Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mUtilImage:Lcom/samsung/android/sdk/pen/util/SPenUtilImage;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Lcom/samsung/android/sdk/pen/util/SPenUtilImage;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/pen/util/SPenUtilImage;->unbindDrawables(Landroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mSaturationPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurX:F

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$500()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurY:F

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->PORTRAIT_POINT_SIZE:I
    invoke-static {}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$500()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCursorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v1}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v3, 0x6

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorGradationContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$600(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    move v1, v7

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/SeekBar;

    move-result-object v2

    const/16 v4, 0xff

    invoke-virtual {v2, v4}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v2

    const/4 v4, 0x2

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v6, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-gtz v2, :cond_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurY:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurX:F

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    div-float/2addr v4, v6

    add-float/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurY:F

    :cond_5
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurY:F

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v8

    int-to-float v8, v8

    iget v9, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurX:F

    sub-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    const-wide v8, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v4, v8

    double-to-float v4, v4

    const/high16 v5, 0x43340000    # 180.0f

    add-float/2addr v4, v5

    aput v4, v2, v1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v4

    int-to-float v4, v4

    div-float v4, v6, v4

    aput v4, v2, v7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v2, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$802(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;I)I

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v4

    aput v4, v2, v7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->SDK_VERSION:I
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v2

    const/16 v4, 0x10

    if-ge v2, v4, :cond_7

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # invokes: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->initProgressDrawable()Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1200(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    # setter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v2, v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1102(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;Landroid/graphics/drawable/GradientDrawable;)Landroid/graphics/drawable/GradientDrawable;

    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    new-array v2, v7, [Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-direct {v0, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    move v2, v1

    move v4, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mCurrentColor:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$800(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickedColorView:Landroid/view/View;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1300(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->pickerRound:Landroid/widget/RelativeLayout;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->playSoundEffect(I)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->invalidate()V

    move v1, v7

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/GradientDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColors:[I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$900(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mColorSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$700(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/widget/SeekBar;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->progressDrawable:Landroid/graphics/drawable/GradientDrawable;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$1100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method protected updateCursorPosition()V
    .locals 10

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->ORBITAL_RADIUS:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$100(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v4

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float v2, v3, v4

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mHsv:[F
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$400(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)[F

    move-result-object v3

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-double v4, v3

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v0, v4, v6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v3

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurX:F

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->this$0:Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;

    # getter for: Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->mRadius:I
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;->access$000(Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup;)I

    move-result v3

    int-to-double v4, v3

    float-to-double v6, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-int v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->mCurY:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/settingui/SpenColorGradationPopup$GradientView;->invalidate()V

    return-void
.end method
