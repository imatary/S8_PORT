.class Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;
.super Ljava/lang/Object;
.source "GlSelectionArea.java"


# static fields
.field private static final CENTER:I = 0x0

.field private static final DOWNWARD:I = 0x2

.field private static final MIN_MOVE_GAP:I = 0x64

.field private static final UPWARD:I = 0x1


# instance fields
.field private extensionDirection:I

.field private mScreenWidthPx:F

.field private final rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->mScreenWidthPx:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->extensionDirection:I

    return-void
.end method

.method private updateExtensionDir(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->extensionDirection:I

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p2, Landroid/graphics/PointF;->y:F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->extensionDirection:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->extensionDirection:I

    goto :goto_0
.end method

.method private updateRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p2, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method


# virtual methods
.method public getRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->rect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public isExtendingUpward()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->extensionDirection:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setScreenSize(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->mScreenWidthPx:F

    return-void
.end method

.method public update(Landroid/graphics/PointF;Landroid/graphics/PointF;Z)V
    .locals 4

    if-nez p3, :cond_0

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->mScreenWidthPx:F

    iget v3, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->updateRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->updateExtensionDir(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlSelectionArea;->updateRect(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    goto :goto_0
.end method
