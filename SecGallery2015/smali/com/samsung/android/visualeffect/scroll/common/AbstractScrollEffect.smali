.class public Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;
.super Landroid/view/View;
.source "AbstractScrollEffect.java"


# instance fields
.field protected animationCurrentFrame:I

.field protected animationTotalFrame:I

.field protected currentWidthOffset:F

.field protected currentY:F

.field protected isFrameMoving:Z

.field protected isLTR:Z

.field protected isLoop:Z

.field protected isOpen:Z

.field protected isWidthMoving:Z

.field protected isYMoving:Z

.field protected mHandler:Landroid/os/Handler;

.field protected shapePaint:Landroid/graphics/Paint;

.field protected targetWidthOffset:F

.field protected viewWidth:F


# virtual methods
.method public clearEffect()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "visualeffectScroll"

    const-string/jumbo v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->animationCurrentFrame:I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isYMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->stopAnimation()V

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->invalidate()V

    return-void
.end method

.method public close()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "visualeffectScroll"

    const-string/jumbo v1, "close"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isOpen:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isFrameMoving:Z

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isWidthMoving:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->startAnimation()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged : LayoutDirection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->clearEffect()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->setIsLTR(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setColor : color = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->shapePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected setIsLTR(Z)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIsLTR : isLTR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLTR:Z

    return-void
.end method

.method public setLayout(IIII)V
    .locals 3

    const-string/jumbo v0, "visualeffectScroll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLayout : l = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", t = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", r = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", b = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->layout(IIII)V

    return-void
.end method

.method protected startAnimation()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method protected stopAnimation()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/scroll/common/AbstractScrollEffect;->isLoop:Z

    return-void
.end method
