.class Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;
.super Ljava/lang/Object;
.source "GlPenSelectionBox.java"


# static fields
.field private static final BORDER_COLOR:I = -0x852e21

.field private static final BORDER_WIDTH:I = 0x2

.field private static final DEF_DISTANCE:F = 800.0f

.field private static final FILL_COLOR:I = 0x7fb2ebf2

.field private static final PEN_SELECTION_END_EVT:I = 0x3

.field private static final PEN_SELECTION_START_ANIM:I = 0x2

.field private static final PEN_SELECTION_START_REQ:I = 0x1

.field private static final PEN_SELECTION_STATE_DESTROYING:I = 0x3

.field private static final PEN_SELECTION_STATE_IDLE:I = 0x0

.field private static final PEN_SELECTION_STATE_STARTED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "GlPenSelectionBox"


# instance fields
.field private mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

.field private mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

.field private mHeight:I

.field private final mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

.field private mPenSelectionState:I

.field private mRatioHeight:F

.field private mRatioWidth:F

.field private mRect:Landroid/graphics/Rect;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mPenSelectionState:I

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->initAttribute()V

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->createObjects()V

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/glcore/GlLayer;->getGlRoot()Lcom/sec/android/gallery3d/glcore/GlRootView;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$1;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;Lcom/sec/android/gallery3d/glcore/GlRootView;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->prepareItemAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->startShowAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->removePenSelectionView()V

    return-void
.end method

.method private convX(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRatioWidth:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private convY(I)F
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRatioHeight:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private convertWindowCoordsToOpenGLCoords(II)Landroid/graphics/PointF;
    .locals 5

    const/high16 v4, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v2, v2, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v3, p2

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRatioHeight:F

    mul-float v1, v2, v3

    int-to-float v2, p1

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v3, v3, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRatioWidth:F

    mul-float v0, v2, v3

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private createObjects()V
    .locals 2

    new-instance v0, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    invoke-direct {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;-><init>(Lcom/sec/android/gallery3d/glcore/GlLayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setUseTouchEvent(Z)V

    return-void
.end method

.method private prepareItemAnimation()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->removePenSelectionView()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mPenSelectionState:I

    return-void
.end method

.method private removePenSelectionView()V
    .locals 2

    iget v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mPenSelectionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mPenSelectionState:I

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->removePenSelectionViewInter()V

    goto :goto_0
.end method

.method private declared-synchronized removePenSelectionViewInter()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mPenSelectionState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setBackgroundObject(II)V
    .locals 6

    const/4 v5, 0x1

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->convX(I)F

    move-result v1

    invoke-direct {p0, p2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->convY(I)F

    move-result v0

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v1, v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/android/gallery3d/glcore/GlCanvas;

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget-object v4, v4, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->mGlRoot:Lcom/sec/android/gallery3d/glcore/GlRootView;

    invoke-direct {v3, v4, p1, p2}, Lcom/sec/android/gallery3d/glcore/GlCanvas;-><init>(Lcom/sec/android/gallery3d/glcore/GlRootView;II)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setCanvas(Lcom/sec/android/gallery3d/glcore/GlCanvas;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    new-instance v3, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$2;

    invoke-direct {v3, p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox$2;-><init>(Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;)V

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setView(Lcom/sec/android/gallery3d/glcore/GlView;)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const v3, 0x7fb2ebf2

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFillColor(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setEmptyFill(Z)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const v3, -0x852e21

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderColor(I)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderWidth(F)V

    iget-object v2, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v2, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setBorderVisible(Z)V

    goto :goto_0
.end method

.method private startShowAnimation()V
    .locals 7

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    div-int/lit8 v2, v3, 0x2

    invoke-direct {p0, v1, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->convertWindowCoordsToOpenGLCoords(II)Landroid/graphics/PointF;

    move-result-object v0

    iget v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mWidth:I

    iget v4, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHeight:I

    invoke-direct {p0, v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->setBackgroundObject(II)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    const/high16 v6, -0x3bb80000    # -800.0f

    invoke-virtual {v3, v4, v5, v6}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setAlpha(F)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->moveToLast()V

    return-void
.end method


# virtual methods
.method public changeBackgroundSize(Landroid/graphics/Rect;)V
    .locals 11

    iget v7, p1, Landroid/graphics/Rect;->right:I

    iget v8, p1, Landroid/graphics/Rect;->left:I

    sub-int v5, v7, v8

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int v2, v7, v8

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    div-int/lit8 v0, v7, 0x2

    iget v7, p1, Landroid/graphics/Rect;->top:I

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v8

    div-int/lit8 v1, v7, 0x2

    invoke-direct {p0, v5}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->convX(I)F

    move-result v6

    invoke-direct {p0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->convY(I)F

    move-result v3

    invoke-direct {p0, v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->convertWindowCoordsToOpenGLCoords(II)Landroid/graphics/PointF;

    move-result-object v4

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v7, v6, v3}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setSize(FF)V

    iget-object v7, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iget v8, v4, Landroid/graphics/PointF;->x:F

    iget v9, v4, Landroid/graphics/PointF;->y:F

    const/high16 v10, -0x3bb80000    # -800.0f

    invoke-virtual {v7, v8, v9, v10}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->setPos(FFF)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->removePenSelectionViewInter()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;->remove()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mBackground:Lcom/sec/samsung/gallery/glview/composeView/GlComposeObject;

    iput-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    return-void
.end method

.method public exitFromPenSelectionView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/glcore/GlHandler;->removeAllMessage()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2, v2, v2}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    return-void
.end method

.method public initAttribute()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidthSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRatioWidth:F

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v0, v0, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeightSpace:F

    iget-object v1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mLayer:Lcom/sec/android/gallery3d/glcore/GlLayer;

    iget v1, v1, Lcom/sec/android/gallery3d/glcore/GlLayer;->mHeight:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRatioHeight:F

    return-void
.end method

.method public requestStart(Landroid/graphics/Rect;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mRect:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mWidth:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHeight:I

    iget-object v0, p0, Lcom/sec/samsung/gallery/glview/composeView/GlPenSelectionBox;->mHandler:Lcom/sec/android/gallery3d/glcore/GlHandler;

    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/sec/android/gallery3d/glcore/GlHandler;->sendMessage(IIII)V

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    goto :goto_1
.end method
