.class public Lcom/samsung/android/sdk/pen/engine/SpenControlList;
.super Lcom/samsung/android/sdk/pen/engine/SpenControlBase;
.source "SpenControlList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SpenControlList"


# instance fields
.field private mDrawingBitmap:Landroid/graphics/Bitmap;

.field private mIsGrouped:Z

.field private mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mIsGrouped:Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->setSmartGuideEnabled(Z)V

    return-void
.end method

.method private drawHighlightLine(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 14

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->isObjectOutlineEnabled()Z

    move-result v11

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getLinePath(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v10, Landroid/graphics/PathMeasure;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 v11, 0x2

    new-array v1, v11, [F

    fill-array-data v1, :array_0

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v11

    float-to-int v7, v11

    if-eqz v7, :cond_0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    int-to-float v11, v7

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-array v6, v7, [Landroid/graphics/PointF;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_2

    int-to-float v11, v4

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v1, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    new-instance v11, Landroid/graphics/PointF;

    invoke-direct {v11}, Landroid/graphics/PointF;-><init>()V

    aput-object v11, v6, v4

    aget-object v11, v6, v4

    const/4 v12, 0x0

    aget v12, v1, v12

    iput v12, v11, Landroid/graphics/PointF;->x:F

    aget-object v11, v6, v4

    const/4 v12, 0x1

    aget v12, v1, v12

    iput v12, v11, Landroid/graphics/PointF;->y:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v2

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->getLineWidth(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)F

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getControlPaint()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    move-result-object v11

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v8

    iget v11, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v11, v3

    float-to-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v8, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getControlPaint()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    move-result-object v11

    const/16 v12, 0xf

    invoke-virtual {v11, v12}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v9

    iget v11, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v11, v3

    const/high16 v12, 0x40800000    # 4.0f

    div-float/2addr v11, v12

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v5, Landroid/graphics/Path;

    invoke-direct {v5}, Landroid/graphics/Path;-><init>()V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_3

    aget-object v11, v6, v4

    aget-object v12, v6, v4

    iget v12, v12, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v13

    iget-object v13, v13, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v13

    iget v13, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v12, v13

    iget-object v13, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->x:F

    aget-object v11, v6, v4

    aget-object v12, v6, v4

    iget v12, v12, Landroid/graphics/PointF;->y:F

    iget-object v13, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->pan:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    iget v13, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v12, v13

    iget-object v13, v2, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->frameRect:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    add-float/2addr v12, v13

    iput v12, v11, Landroid/graphics/PointF;->y:F

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    aget-object v11, v6, v11

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    aget-object v12, v6, v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->setLastPoint(FF)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v7, :cond_4

    aget-object v11, v6, v4

    iget v11, v11, Landroid/graphics/PointF;->x:F

    aget-object v12, v6, v4

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v5, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v5, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private drawListHighlight(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->isDimEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F
    invoke-static {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)F

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;
    invoke-static {v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Landroid/graphics/RectF;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getControlPaint()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlPaint;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->drawHighlightStroke(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->drawHighlightLine(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->drawHighlightObject(Landroid/graphics/Canvas;Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->recycleDrawingBitmap()V

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->close()V

    return-void
.end method

.method protected drawDimmingWindow(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method public fit()V
    .locals 6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getObjectList()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getObjectList()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    if-nez v4, :cond_2

    :cond_0
    const-string v4, "SpenControlList"

    const-string v5, "fit() : Already deleted object (getRect() is null)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->close()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->fit(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Landroid/graphics/RectF;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->fit()V

    goto :goto_1
.end method

.method protected getBoundBoxObject(Landroid/graphics/RectF;F)Landroid/graphics/RectF;
    .locals 17

    new-instance v14, Landroid/graphics/RectF;

    invoke-direct {v14}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v14, v1, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x3a83126f    # 0.001f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    :goto_0
    return-object v14

    :cond_0
    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    const/4 v3, 0x4

    new-array v13, v3, [Landroid/graphics/PointF;

    const/4 v15, 0x0

    move/from16 v0, p2

    float-to-double v6, v0

    new-instance v8, Landroid/graphics/PointF;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v13, v15

    const/4 v15, 0x1

    move/from16 v0, p2

    float-to-double v6, v0

    new-instance v8, Landroid/graphics/PointF;

    iget v3, v14, Landroid/graphics/RectF;->right:F

    iget v0, v14, Landroid/graphics/RectF;->top:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v13, v15

    const/4 v15, 0x2

    move/from16 v0, p2

    float-to-double v6, v0

    new-instance v8, Landroid/graphics/PointF;

    iget v3, v14, Landroid/graphics/RectF;->left:F

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v13, v15

    const/4 v15, 0x3

    move/from16 v0, p2

    float-to-double v6, v0

    new-instance v8, Landroid/graphics/PointF;

    iget v3, v14, Landroid/graphics/RectF;->right:F

    iget v0, v14, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-direct {v8, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    aput-object v3, v13, v15

    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget v10, v3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget v12, v3, Landroid/graphics/PointF;->y:F

    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget v9, v3, Landroid/graphics/PointF;->x:F

    const/4 v3, 0x0

    aget-object v3, v13, v3

    iget v11, v3, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x1

    :goto_1
    array-length v3, v13

    if-ge v2, v3, :cond_5

    aget-object v3, v13, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v10, v3

    if-ltz v3, :cond_1

    aget-object v3, v13, v2

    iget v10, v3, Landroid/graphics/PointF;->x:F

    :cond_1
    aget-object v3, v13, v2

    iget v3, v3, Landroid/graphics/PointF;->x:F

    cmpg-float v3, v9, v3

    if-gtz v3, :cond_2

    aget-object v3, v13, v2

    iget v9, v3, Landroid/graphics/PointF;->x:F

    :cond_2
    aget-object v3, v13, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v12, v3

    if-ltz v3, :cond_3

    aget-object v3, v13, v2

    iget v12, v3, Landroid/graphics/PointF;->y:F

    :cond_3
    aget-object v3, v13, v2

    iget v3, v3, Landroid/graphics/PointF;->y:F

    cmpg-float v3, v11, v3

    if-gtz v3, :cond_4

    aget-object v3, v13, v2

    iget v11, v3, Landroid/graphics/PointF;->y:F

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v14, v10, v12, v9, v11}, Landroid/graphics/RectF;->set(FFFF)V

    goto/16 :goto_0
.end method

.method public getObject()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getObjectList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->resetCoordinateInfo()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    goto :goto_0
.end method

.method protected handleTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->handleTouchUpEvent(Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;Landroid/graphics/PointF;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ControlTouchManager$TouchZone;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->handleTouchUpEvent(Ljava/util/ArrayList;I)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    return-void
.end method

.method public isGroup()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mIsGrouped:Z

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getStyle()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->drawListHighlight(Landroid/graphics/Canvas;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onObjectChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->recycleDrawingBitmap()V

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onObjectChanged()V

    return-void
.end method

.method protected onObjectChanged(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getListener()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getListener()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$ActionListener;->onObjectChanged(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->recycleDrawingBitmap()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->resetCoordinateInfo()V

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v8

    invoke-virtual {p0, v2, v1, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getDeltaPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v10

    iget v10, v10, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getDeltaPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v10

    iget v10, v10, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v9, v10

    add-float v5, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectWidth()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    sub-float v3, v4, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    add-float v6, v3, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectHeight()F

    move-result v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    sub-float v7, v5, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectHeight()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    add-float v0, v7, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v3, v7, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->fit()V

    goto/16 :goto_0
.end method

.method protected onZoom()V
    .locals 12

    const/high16 v11, 0x40000000    # 2.0f

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v8

    invoke-virtual {p0, v2, v1, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getDeltaPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v10

    iget v10, v10, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v9, v10

    add-float v4, v8, v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getDeltaPoint()Landroid/graphics/PointF;

    move-result-object v9

    iget v9, v9, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v10

    iget v10, v10, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v9, v10

    add-float v5, v8, v9

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectWidth()F

    move-result v8

    div-float/2addr v8, v11

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    sub-float v3, v4, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectWidth()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    add-float v6, v3, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectHeight()F

    move-result v8

    div-float/2addr v8, v11

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    sub-float v7, v5, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getBoundRectHeight()F

    move-result v8

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    mul-float/2addr v8, v9

    add-float v0, v7, v8

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    # getter for: Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;
    invoke-static {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v8, v3, v7, v6, v0}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->recycleDrawingBitmap()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->fit()V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->invalidate()V

    goto/16 :goto_0
.end method

.method protected recycleDrawingBitmap()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mDrawingBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method public setDimEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setDimEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->recycleDrawingBitmap()V

    return-void
.end method

.method public setGroup(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mIsGrouped:Z

    return-void
.end method

.method public setObject(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    const/4 v6, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    if-nez v5, :cond_1

    new-instance v5, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-direct {v5, p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenControlList;)V

    iput-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v5, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->setObjectList(Ljava/util/ArrayList;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v5

    if-ne v5, v6, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    :cond_3
    if-ne v2, v6, :cond_6

    if-nez v3, :cond_6

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v5, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->setRotatable(Z)V

    if-ne v2, v6, :cond_5

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {v5, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->setResizeOption(I)V

    :cond_5
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->setRotateAngle(F)V

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->mObject:Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;

    invoke-virtual {p0, v5}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->setObjectBase(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setObjectOutlineEnabled(Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->recycleDrawingBitmap()V

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenControlBase;->setObjectOutlineEnabled(Z)V

    return-void
.end method
