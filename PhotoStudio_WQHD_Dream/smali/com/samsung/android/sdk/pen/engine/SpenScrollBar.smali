.class Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;
.super Landroid/view/View;
.source "SpenScrollBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;,
        Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;,
        Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;
    }
.end annotation


# static fields
.field private static final SCROLL_BAR_MARGIN:I = 0xa

.field private static final SCROLL_BAR_THICK:I = 0xa

.field private static final SCROLL_OFFSET:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SpenScrollBar"


# instance fields
.field public directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field public directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

.field private mDeltaScrollY:F

.field private mDeltaX:F

.field private mDeltaY:F

.field private mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

.field private mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

.field private mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

.field private mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

.field private mFrameStartX:I

.field private mFrameStartY:I

.field private mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

.field private mHorizontalScrollEnable:Z

.field private mMaxDeltaX:F

.field private mMaxDeltaY:F

.field private mPaint:Landroid/graphics/Paint;

.field private mRectLR:Landroid/graphics/Rect;

.field private mRectTB:Landroid/graphics/Rect;

.field private mRtoCvsItstFrmHeight:I

.field private mRtoCvsItstFrmWidth:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollBarEnable:Z

.field private mScrollShow:Z

.field private mToolAndActionMap:Landroid/util/SparseIntArray;

.field private final mUnofficialWaterMarkEnable:Z

.field private mVerticalScrollEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mUnofficialWaterMarkEnable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mUnofficialWaterMarkEnable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mUnofficialWaterMarkEnable:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    return p1
.end method

.method private drawPost()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->postInvalidateOnAnimation()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->postInvalidate()V

    goto :goto_0
.end method

.method private drawUnofficialWaterMark(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x10000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v5

    iget v3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    div-float/2addr v3, v5

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x42340000    # 45.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p1, p2, v4, v4, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    const/4 v2, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    iput-boolean v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    iput-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    const v1, -0x7f5e5c5b

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;-><init>(Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->close()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iput-object v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    :cond_1
    return-void
.end method

.method public enableHorizontalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    return-void
.end method

.method public enableScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    return-void
.end method

.method public enableVerticalScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    return-void
.end method

.method public isHorizontalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    return v0
.end method

.method public isScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    return v0
.end method

.method public isVerticalScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    return v0
.end method

.method public isWorking()Z
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->isScroll()Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    and-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHorizontalScrollEnable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v6, 0x1

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mVerticalScrollEnable:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    cmpl-float v0, v0, v8

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v6, 0x1

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43870000    # 270.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_4
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_6
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_8
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_a
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_b
    if-eqz v6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    const/4 v8, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v0, v4, 0xff

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    if-ne v3, v6, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-le v4, v6, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-ne v4, v6, :cond_5

    :cond_0
    if-eqz v0, :cond_1

    if-eq v0, v6, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_8

    :cond_1
    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_5
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->drawPost()V

    :cond_7
    return-void

    :cond_8
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v5, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    if-ne v4, v5, :cond_9

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iput v1, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iput v1, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    :cond_9
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_c

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->LEFT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    :goto_1
    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$1;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenScrollBar$Direction:[I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :cond_a
    :goto_2
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    sget-object v5, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iput v2, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iput v2, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    :cond_b
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_e

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->TOP:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    :goto_3
    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$1;->$SwitchMap$com$samsung$android$sdk$pen$engine$SpenScrollBar$Direction:[I

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    invoke-virtual {v5}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget v5, v5, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    sub-float v5, v2, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto/16 :goto_0

    :cond_c
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_d

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->RIGHT:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_1

    :cond_d
    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionLR:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget v5, v5, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    sub-float v5, v1, v5

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_2

    :pswitch_2
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget v5, v5, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    sub-float/2addr v5, v1

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto :goto_2

    :cond_e
    iget v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    float-to-double v4, v4

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_f

    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->BOTTOM:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_3

    :cond_f
    sget-object v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;->NONE:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    iput-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->directionTB:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$Direction;

    goto :goto_3

    :pswitch_3
    iget-object v4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v4, v4, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget-object v5, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget v5, v5, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->start:F

    sub-float/2addr v5, v2

    iget v6, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->onPull(F)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setDeltaValue(FFFFII)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-string v10, "SpenScrollBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setDeltaValue deltaX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", deltaY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " maxDeltaX="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", maxDeltaY="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    move/from16 v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    move/from16 v0, p3

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    move/from16 v0, p4

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaScrollY:F

    sub-float v10, v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a00000    # 20.0f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move/from16 v0, p2

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaScrollY:F

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_2

    if-lez p5, :cond_2

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    mul-int/2addr v10, v11

    div-int v7, v10, p5

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    sub-int/2addr v10, v7

    add-int/lit8 v3, v10, 0x1

    int-to-float v10, v3

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaX:F

    div-float v5, v10, v11

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaX:F

    mul-float/2addr v10, v5

    float-to-int v8, v10

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectLR:Landroid/graphics/Rect;

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    add-int/lit8 v11, v11, -0xa

    add-int/lit8 v11, v11, -0xa

    add-int v12, v8, v7

    iget v13, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    add-int/lit8 v13, v13, -0xa

    invoke-virtual {v10, v8, v11, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    :cond_2
    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_3

    if-lez p6, :cond_3

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    mul-int/2addr v10, v11

    div-int v6, v10, p6

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    sub-int/2addr v10, v6

    add-int/lit8 v2, v10, 0x1

    int-to-float v10, v2

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mMaxDeltaY:F

    div-float v4, v10, v11

    iget v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mDeltaY:F

    mul-float/2addr v10, v4

    float-to-int v9, v10

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRectTB:Landroid/graphics/Rect;

    iget v11, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    add-int/lit8 v11, v11, -0xa

    add-int/lit8 v11, v11, -0xa

    iget v12, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    add-int/lit8 v12, v12, -0xa

    add-int v13, v9, v6

    invoke-virtual {v10, v11, v9, v12, v13}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    :cond_3
    iget-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollBarEnable:Z

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScrollShow:Z

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->sendEmptyMessage(I)Z

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->removeMessages(I)V

    iget-object v10, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mHandler:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;

    const/4 v11, 0x0

    const-wide/16 v12, 0x12c

    invoke-virtual {v10, v11, v12, v13}, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$UpdateHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0
.end method

.method public setScreenInfo(IIII)V
    .locals 3

    const-string v0, "SpenScrollBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenInfo width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startX="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    iput p3, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartX:I

    iput p4, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mFrameStartY:I

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeLeft:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeRight:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeTop:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mEdgeBottom:Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;

    iget-object v0, v0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar$ScrollEdgeEffect;->effect:Landroid/widget/EdgeEffect;

    iget v1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmWidth:I

    iget v2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mRtoCvsItstFrmHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    return-void
.end method

.method public setScreenSize(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenWidth:I

    iput p2, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mScreenHeight:I

    return-void
.end method

.method public setToolTypeAction(II)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/pen/engine/SpenScrollBar;->mToolAndActionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method
