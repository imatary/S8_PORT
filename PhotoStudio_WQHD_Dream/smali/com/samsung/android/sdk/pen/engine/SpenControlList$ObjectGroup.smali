.class Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.source "SpenControlList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/pen/engine/SpenControlList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObjectGroup"
.end annotation


# instance fields
.field private mBoundRectHeight:F

.field private mBoundRectWidth:F

.field private final mDeltaPoint:Landroid/graphics/PointF;

.field private mIsFirstTimeSelectListObj:Z

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field private mRotation:F

.field private final mUnionRect:Landroid/graphics/RectF;

.field final synthetic this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/pen/engine/SpenControlList;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    iput v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mIsFirstTimeSelectListObj:Z

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F

    return v0
.end method


# virtual methods
.method public clearChangedFlag()V
    .locals 0

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 0

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoundRectHeight()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    return v0
.end method

.method public getBoundRectWidth()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    return v0
.end method

.method public getDeltaPoint()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getDrawnRect()Landroid/graphics/RectF;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinHeight()F
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMinHeight()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    cmpg-float v4, v1, v0

    if-gez v4, :cond_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public getMinWidth()F
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isVisible()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getMinWidth()F

    move-result v0

    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_1

    cmpg-float v4, v1, v0

    if-gez v4, :cond_0

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    return v1
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

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-boolean v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mIsFirstTimeSelectListObj:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getTouchState()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_3

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F

    sub-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x38d1b717    # 1.0E-4f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_3

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v7, v9, v9, v9, v9}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v1

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v8, v3, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getBoundBoxObject(Landroid/graphics/RectF;F)Landroid/graphics/RectF;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iput-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mIsFirstTimeSelectListObj:Z

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v8

    invoke-virtual {v7, v6, v5, v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v8

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->x:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    iget v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    iget v9, v9, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    iget v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v8

    iget v8, v8, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    :cond_3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    iget-object v8, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v9

    invoke-virtual {v7, v0, v8, v9}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    return-object v0
.end method

.method public getResizeOption()I
    .locals 4

    const/4 v3, 0x2

    invoke-super {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getRotation()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F

    return v0
.end method

.method public getRuntimeHandle()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSorDataInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public getSorDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSorInfo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSorPackageLink()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSorDataInt(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasSorDataString(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public isChanged()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMovable()Z
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isMovable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isOutOfViewEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isRecorded()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRotatable()Z
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->isRotatable()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public isSelectable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeSorDataInt(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public removeSorDataString(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 0

    return-void
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMovable(Z)V
    .locals 0

    return-void
.end method

.method public setObjectList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    return-void
.end method

.method public setOutOfViewEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setRecorded(Z)V
    .locals 0

    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 30

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->resetCoordinateInfo()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->getRect()Landroid/graphics/RectF;

    move-result-object v5

    new-instance v16, Landroid/graphics/RectF;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v5, v2}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    new-instance v4, Landroid/graphics/RectF;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v13, v4, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717    # 1.0E-4f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717    # 1.0E-4f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717    # 1.0E-4f

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717    # 1.0E-4f

    cmpg-float v26, v26, v27

    if-ltz v26, :cond_0

    :cond_2
    const/4 v11, 0x0

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v26

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->width()F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717    # 1.0E-4f

    cmpl-float v26, v26, v27

    if-gtz v26, :cond_3

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v26

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/RectF;->height()F

    move-result v27

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    const v27, 0x38d1b717    # 1.0E-4f

    cmpl-float v26, v26, v27

    if-lez v26, :cond_4

    :cond_3
    const/4 v11, 0x1

    :cond_4
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_5

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v0, v20

    iput v0, v13, Landroid/graphics/RectF;->right:F

    const/4 v7, 0x1

    :cond_5
    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_6

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v20, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v0, v20

    iput v0, v13, Landroid/graphics/RectF;->bottom:F

    const/4 v8, 0x1

    :cond_6
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_7

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-nez v26, :cond_7

    if-nez v7, :cond_7

    if-eqz v8, :cond_0

    :cond_7
    if-nez p2, :cond_14

    const/16 v18, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_8

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    div-float v18, v26, v27

    :cond_8
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpl-float v26, v26, v27

    if-eqz v26, :cond_9

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    div-float v17, v26, v27

    :cond_9
    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/4 v10, 0x0

    :goto_1
    move/from16 v0, v19

    if-ge v10, v0, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v15, v6, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v24, v26, v27

    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v25, v26, v27

    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v23, v26, v27

    iget v0, v15, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v9, v26, v27

    mul-float v24, v24, v18

    mul-float v25, v25, v17

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getResizeOption()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    mul-float v23, v23, v18

    mul-float v9, v9, v17

    :cond_a
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_b

    iget v0, v13, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    sub-float v26, v26, v24

    sub-float v24, v26, v23

    :cond_b
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_c

    iget v0, v13, Landroid/graphics/RectF;->bottom:F

    move/from16 v26, v0

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    sub-float v26, v26, v25

    sub-float v25, v26, v9

    :cond_c
    iget v0, v13, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v24

    move/from16 v0, v26

    iput v0, v15, Landroid/graphics/RectF;->left:F

    iget v0, v13, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v25

    move/from16 v0, v26

    iput v0, v15, Landroid/graphics/RectF;->top:F

    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    add-float v26, v26, v23

    move/from16 v0, v26

    iput v0, v15, Landroid/graphics/RectF;->right:F

    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    add-float v26, v26, v9

    move/from16 v0, v26

    iput v0, v15, Landroid/graphics/RectF;->bottom:F

    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v8, v0, :cond_d

    iget v0, v15, Landroid/graphics/RectF;->bottom:F

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v15, Landroid/graphics/RectF;->bottom:F

    move/from16 v0, v20

    iput v0, v15, Landroid/graphics/RectF;->top:F

    :cond_d
    const/16 v26, 0x1

    move/from16 v0, v26

    if-ne v7, v0, :cond_e

    iget v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v20, v0

    iget v0, v15, Landroid/graphics/RectF;->left:F

    move/from16 v26, v0

    move/from16 v0, v26

    iput v0, v15, Landroid/graphics/RectF;->right:F

    move/from16 v0, v20

    iput v0, v15, Landroid/graphics/RectF;->left:F

    :cond_e
    new-instance v12, Landroid/graphics/RectF;

    invoke-direct {v12}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v0, v12, v15, v1}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x7

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_f

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_10

    :cond_f
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->setConnectionMode(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    :cond_10
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v12, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_11
    const/4 v10, 0x0

    :goto_2
    move/from16 v0, v19

    if-ge v10, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x8

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x7

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    invoke-virtual {v14}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v26

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_13

    :cond_12
    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-static {v14, v0}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->setConnectionMode(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    :cond_13
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    if-eqz v11, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual/range {v26 .. v26}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v21

    new-instance v22, Landroid/graphics/RectF;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->centerX()F

    move-result v27

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerX()F

    move-result v28

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->centerY()F

    move-result v27

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/RectF;->centerY()F

    move-result v28

    sub-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v28, v0

    div-float v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->height()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-super {v0, v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    goto/16 :goto_0
.end method

.method public setResizeOption(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setResizeOption(I)V

    return-void
.end method

.method public setRotatable(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRotatable(Z)V

    return-void
.end method

.method public setRotation(F)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F

    sub-float v13, p1, v2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v6, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v3, v6

    if-gez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->resetCoordinateInfo()V

    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    new-instance v15, Landroid/graphics/RectF;

    invoke-direct {v15}, Landroid/graphics/RectF;-><init>()V

    new-instance v17, Landroid/graphics/RectF;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRotation()F

    move-result v19

    add-float v16, v19, v13

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v6

    invoke-virtual {v3, v10, v9, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    new-instance v14, Landroid/graphics/PointF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-direct {v14, v3, v6}, Landroid/graphics/PointF;-><init>(FF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    float-to-double v6, v13

    new-instance v8, Landroid/graphics/PointF;

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-direct {v8, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->rotatePoint(FFDLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v14

    iget v3, v14, Landroid/graphics/PointF;->x:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    sub-float v11, v3, v6

    iget v3, v14, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    sub-float v12, v3, v6

    iget v3, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v11

    iget v6, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v12

    iget v7, v10, Landroid/graphics/RectF;->right:F

    add-float/2addr v7, v11

    iget v8, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v8, v12

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v3, v15, v0, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->absoluteCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/16 v6, 0x8

    if-eq v3, v6, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v6, 0x7

    if-eq v3, v6, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v6, 0x2

    if-eq v3, v6, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_3

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->setConnectionMode(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRotation(F)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_6

    invoke-virtual/range {v18 .. v18}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_5

    :cond_6
    const/4 v6, 0x1

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/samsung/android/sdk/pen/util/SpenControlUtil;->setConnectionMode(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;Z)V

    goto :goto_2

    :cond_7
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mRotation:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->getRect()Landroid/graphics/RectF;

    move-result-object v20

    new-instance v21, Landroid/graphics/RectF;

    invoke-direct/range {v21 .. v21}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v6

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v3, v0, v1, v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->relativeCoordinate(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result v6

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result v6

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    sub-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mDeltaPoint:Landroid/graphics/PointF;

    iget v6, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v7}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v7

    iget v7, v7, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v6, v7

    iput v6, v3, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mUnionRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectWidth:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->this$0:Lcom/samsung/android/sdk/pen/engine/SpenControlList;

    invoke-virtual {v6}, Lcom/samsung/android/sdk/pen/engine/SpenControlList;->getCoodinateInfo()Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;

    move-result-object v6

    iget v6, v6, Lcom/samsung/android/sdk/pen/engine/SpenControlBase$CoordinateInfo;->zoomRatio:F

    div-float/2addr v3, v6

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/sdk/pen/engine/SpenControlList$ObjectGroup;->mBoundRectHeight:F

    goto/16 :goto_0
.end method

.method public setSelectable(Z)V
    .locals 0

    return-void
.end method

.method public setSorDataInt(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public setSorDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSorInfo(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setSorPackageLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setVisibility(Z)V
    .locals 0

    return-void
.end method
