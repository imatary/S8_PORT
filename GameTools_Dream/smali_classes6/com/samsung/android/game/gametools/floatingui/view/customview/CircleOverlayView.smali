.class public Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;
.super Landroid/widget/FrameLayout;
.source "CircleOverlayView.java"


# instance fields
.field private mBgPaint:Landroid/graphics/Paint;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected createWindowFrame()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->drawBackGround()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->createWindowFrame()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawBackGround()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public drawTransparentCircle(FFFI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public isInEditMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/view/customview/CircleOverlayView;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
