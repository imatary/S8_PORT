.class public Lcom/samsung/android/sdk/pen/pen/preload/RedPen;
.super Ljava/lang/Object;
.source "RedPen.java"

# interfaces
.implements Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    iput v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mX:F

    iput v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mY:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 8

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v6, v6, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "SAMSUNG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAMSUNG ggg = x = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "y = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "pressure = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SAMSUNG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAMSUNG JAVA MotionEvent size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mY:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mY:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mX:F

    iget v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mX:F

    add-float/2addr v3, v4

    div-float/2addr v3, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mY:F

    add-float/2addr v4, v5

    div-float/2addr v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mY:F

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, p2, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getAdvancedSetting()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getColor()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMaxSettingValue()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMinSettingValue()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNativeHandle()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPenAttribute(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPrivateKeyHint()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getProperty(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public getSize()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getStrokeRect([Landroid/graphics/PointF;[F[IFZLjava/lang/String;)Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hideAdvancedSetting()V
    .locals 0

    return-void
.end method

.method public isCurveEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onLoad(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public onUnload()V
    .locals 0

    return-void
.end method

.method public redrawPen(Landroid/view/MotionEvent;Landroid/graphics/RectF;)V
    .locals 0

    return-void
.end method

.method public setAdvancedSetting(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/pen/preload/RedPen;->canvas:Landroid/graphics/Canvas;

    const-string v0, "SAMSUNG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAMSUNG JAVA SetBitmap width ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setColor(I)V
    .locals 3

    const-string v0, "SAMSUNG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SAMSUNG JAVA SetColor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setCurveEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setProperty(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public setReferenceBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public setScreenResolution(II)V
    .locals 0

    return-void
.end method

.method public setSize(F)V
    .locals 0

    return-void
.end method

.method public showAdvancedSetting(Landroid/content/Context;Lcom/samsung/android/sdk/pen/plugin/interfaces/SpenPenInterface$ChangeListener;Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public unlock(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
