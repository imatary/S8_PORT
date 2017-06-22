.class public Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;
.super Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.source "SpenControlStroke.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->setSmartGuideEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected UpdateObjectRect(Landroid/graphics/RectF;Z)V
    .locals 4

    if-nez p1, :cond_0

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->getTouchState()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setRect(Landroid/graphics/RectF;Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setRect(Landroid/graphics/RectF;Z)V

    goto :goto_0
.end method

.method public getObject()Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->getObjectBase()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->isDimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->getObjectBase()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->drawHighlightStroke(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->getObjectBase()Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->drawHighlightStroke(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public setObject(Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlStroke;->setObjectBase(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0
.end method
