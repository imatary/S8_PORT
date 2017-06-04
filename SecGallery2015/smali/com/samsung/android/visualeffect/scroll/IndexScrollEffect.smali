.class public Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;
.super Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;
.source "IndexScrollEffect.java"


# instance fields
.field private bigTextAlphaWhenOpen:[I

.field private bigTextPaint:Landroid/graphics/Paint;

.field private bigTextXOffsetWhenOpen:[F

.field private circleCenterX:F

.field private circleCenterY:F

.field private circleRadius:F

.field private handleMode:I

.field private rightMargin:F

.field private scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

.field private shownFrameWhenOpen:I

.field private smallTextPaint:Landroid/graphics/Paint;

.field private smallTextY:F

.field private targetBigText:Ljava/lang/String;

.field private targetSmallText:Ljava/lang/String;


# direct methods
.method private drawLastFrameCircle(Landroid/graphics/Canvas;F)V
    .locals 8

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    sub-float/2addr v0, v5

    sub-float v1, v0, p2

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    sub-float v2, v0, v5

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    add-float v3, v0, v5

    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    add-float v4, v0, v5

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget v6, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    iget v5, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    iget v6, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleRadius:F

    iget-object v7, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->close()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentWidthOffset:F

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x40000000    # 2.0f

    const/4 v10, 0x0

    invoke-super {p0, p1}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->onDraw(Landroid/graphics/Canvas;)V

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    invoke-virtual {v8, v9}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPath(I)Landroid/graphics/Path;

    move-result-object v3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_2

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-nez v8, :cond_3

    :cond_2
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-ne v8, v12, :cond_5

    :cond_3
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationTotalFrame:I

    add-int/lit8 v9, v9, -0x1

    if-ne v8, v9, :cond_4

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentWidthOffset:F

    invoke-direct {p0, p1, v8}, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->drawLastFrameCircle(Landroid/graphics/Canvas;F)V

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v9}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v9

    iget v10, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->shownFrameWhenOpen:I

    sub-int/2addr v9, v10

    if-lt v8, v9, :cond_0

    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v8}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v8

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    sub-int/2addr v8, v9

    add-int/lit8 v6, v8, -0x1

    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextXOffsetWhenOpen:[F

    aget v2, v8, v6

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetWidthOffset:F

    div-float/2addr v8, v11

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterX:F

    sub-float/2addr v8, v9

    sub-float v7, v8, v2

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_a

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    sub-float v7, v8, v7

    move v0, v7

    :goto_2
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->circleCenterY:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float v1, v8, v9

    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextAlphaWhenOpen:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetBigText:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v0, v1, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->animationCurrentFrame:I

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->scrollPath:Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;

    invoke-virtual {v9}, Lcom/samsung/android/visualeffect/scroll/common/IndexScrollPath;->getPathTotal()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-lt v8, v9, :cond_0

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_d

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    sub-float v4, v8, v9

    :goto_3
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextY:F

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9}, Landroid/graphics/Paint;->descent()F

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v10}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    add-float/2addr v9, v10

    div-float/2addr v9, v11

    sub-float v5, v8, v9

    iget-object v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->targetSmallText:Ljava/lang/String;

    iget-object v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v4, v5, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_5
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-gez v8, :cond_6

    iget-boolean v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->isLTR:Z

    if-eqz v8, :cond_7

    :cond_6
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-nez v8, :cond_8

    :cond_7
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->currentY:F

    invoke-virtual {p1, v10, v8}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v8, 0x43340000    # 180.0f

    invoke-virtual {p1, v8, v10, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_1

    :cond_8
    const-string/jumbo v8, "visualeffectScroll"

    const-string/jumbo v9, "handleMode Parameter Error"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    move v0, v7

    goto :goto_2

    :cond_a
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-ne v8, v12, :cond_b

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    sub-float v7, v8, v7

    move v0, v7

    goto/16 :goto_2

    :cond_b
    move v0, v7

    goto/16 :goto_2

    :cond_c
    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    goto :goto_3

    :cond_d
    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->handleMode:I

    if-ne v8, v12, :cond_e

    iget v8, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->viewWidth:F

    iget v9, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    sub-float v4, v8, v9

    goto :goto_3

    :cond_e
    iget v4, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->rightMargin:F

    goto :goto_3
.end method

.method public setBigTextColor(I)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBigTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setBigTextSize(F)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBigTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->bigTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setSmallTextColor(I)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmallTextColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSmallTextSize(F)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSmallTextSize : textSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/IndexScrollEffect;->smallTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
