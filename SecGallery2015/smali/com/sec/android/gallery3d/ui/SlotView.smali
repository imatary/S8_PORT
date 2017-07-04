.class public Lcom/sec/android/gallery3d/ui/SlotView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/ui/SlotView$IntegerAnimation;,
        Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;,
        Lcom/sec/android/gallery3d/ui/SlotView$Layout;,
        Lcom/sec/android/gallery3d/ui/SlotView$Spec;,
        Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;,
        Lcom/sec/android/gallery3d/ui/SlotView$SimpleListener;,
        Lcom/sec/android/gallery3d/ui/SlotView$Listener;
    }
.end annotation


# static fields
.field static final INDEX_NONE:I = -0x1

.field private static final OVERSCROLL_3D:I = 0x0

.field static final OVERSCROLL_NONE:I = 0x2

.field private static final OVERSCROLL_SYSTEM:I = 0x1

.field private static final RENDER_MORE_FRAME:I = 0x2

.field private static final RENDER_MORE_PASS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SlotView"


# instance fields
.field private final WIDE:Z

.field private mDownInScrolling:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private final mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

.field private final mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

.field private mListener:Lcom/sec/android/gallery3d/ui/SlotView$Listener;

.field private mMoreAnimation:Z

.field private mOverScrollEffect:I

.field private final mPaper:Lcom/sec/android/gallery3d/ui/Paper;

.field private mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

.field private final mRequestRenderSlots:[I

.field private final mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

.field private mStartIndex:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->WIDE:Z

    new-instance v0, Lcom/sec/android/gallery3d/ui/Paper;

    invoke-direct {v0}, Lcom/sec/android/gallery3d/ui/Paper;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    iput-boolean v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    new-instance v0, Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-direct {v0, p0, v3}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;-><init>(Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/SlotView$1;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mStartIndex:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mOverScrollEffect:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;

    invoke-direct {v2, p0, v3}, Lcom/sec/android/gallery3d/ui/SlotView$MyGestureListener;-><init>(Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/SlotView$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    new-instance v0, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;

    invoke-interface {p1}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getGLRoot()Lcom/sec/android/gallery3d/ui/GLRoot;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    iput-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Lcom/sec/android/gallery3d/ui/SlotView;->setSlotSpec(Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Listener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mListener:Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/ScrollerHelper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/UserInteractionListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/gallery3d/ui/SlotView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mOverScrollEffect:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/Paper;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/gallery3d/ui/SlotView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/gallery3d/ui/SlotView;)Lcom/sec/android/gallery3d/ui/SlotView$Layout;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    return-object v0
.end method

.method private static expandIntArray([II)[I
    .locals 1

    :goto_0
    array-length v0, p0

    if-ge v0, p1, :cond_0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array p0, v0, [I

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private onScrollPositionChanged(I)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mListener:Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v1, p1, v0}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onScrollPositionChanged(II)V

    return-void
.end method

.method private renderItem(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IZ)I
    .locals 6

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->save(I)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v2, p2, v3}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/sec/android/gallery3d/ui/SlotView$Layout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    iget v3, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Lcom/sec/android/gallery3d/ui/Paper;->getTransform(Landroid/graphics/Rect;F)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->multiplyMatrix([FI)V

    :goto_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-interface {v2, p1, p2, v3, v4}, Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;->renderSlot(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;III)I

    move-result v1

    invoke-interface {p1}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->restore()V

    return v1

    :cond_0
    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    goto :goto_0
.end method

.method private scrollTo(IZ)V
    .locals 9

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    invoke-interface {v4}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getResourceContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$1800(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v1

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-static {v4}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$1900(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v4

    add-int/2addr v4, v1

    mul-int/2addr v4, p1

    div-int/lit8 v5, v3, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    add-int v2, v4, v5

    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    iget-object v5, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v5

    sub-int v5, v2, v5

    neg-int v6, v3

    div-int/lit8 v6, v6, 0x2

    div-int/lit8 v7, v1, 0x2

    add-int/2addr v6, v7

    const v7, 0x7fffffff

    const/16 v8, 0x320

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->startScroll(IIII)I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v4, v2}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    goto :goto_0
.end method

.method private setCenterIndex(I)V
    .locals 5

    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-static {v3}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$200(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v2

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    iget-object v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v3, p1, v4}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/sec/android/gallery3d/ui/SlotView$Layout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x2

    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    goto :goto_0
.end method

.method private setScrollPosition(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v0

    invoke-static {p1, v1, v0}, Lcom/sec/android/gallery3d/common/Utils;->clamp(III)I

    move-result p1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->setPosition(I)V

    invoke-direct {p0, p1, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    return-void
.end method

.method private updateScrollPosition(IZ)V
    .locals 1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->setScrollPosition(I)V

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/ui/SlotView;->onScrollPositionChanged(I)V

    goto :goto_0
.end method


# virtual methods
.method public addComponent(Lcom/sec/android/gallery3d/ui/GLView;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getScrollX()I
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    return v0
.end method

.method public getSlotIndexByPosition(FF)I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getSlotIndexByPosition(FF)I

    move-result v0

    return v0
.end method

.method public getSlotRect(I)Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/sec/android/gallery3d/ui/SlotView$Layout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleEnd()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v0

    return v0
.end method

.method public getVisibleStart()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v0

    return v0
.end method

.method public makeSlotVisible(I)V
    .locals 9

    iget-object v7, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    iget-object v8, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mTempRect:Landroid/graphics/Rect;

    invoke-static {v7, p1, v8}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$300(Lcom/sec/android/gallery3d/ui/SlotView$Layout;ILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iget v4, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SlotView;->getWidth()I

    move-result v6

    add-int v5, v4, v6

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    move v0, v4

    sub-int v7, v3, v2

    if-ge v6, v7, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    return-void

    :cond_1
    if-ge v2, v4, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    if-le v3, v5, :cond_0

    sub-int v0, v3, v6

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getVisibleStart()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getVisibleEnd()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x2

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-static {v1, v2, v3}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$400(Lcom/sec/android/gallery3d/ui/SlotView$Layout;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/gallery3d/ui/SlotView;->makeSlotVisible(I)V

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mOverScrollEffect:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    sub-int v2, p4, p2

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/ui/Paper;->setSize(I)V

    goto :goto_0
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/UserInteractionListener;->onUserInteraction()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mDownInScrolling:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->forceFinished()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mListener:Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mListener:Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/ui/SlotView$Listener;->onUp()V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/ui/Paper;->onRelease()V

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 25

    invoke-super/range {p0 .. p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    move-object/from16 v22, v0

    if-nez v22, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/android/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->advanceAnimation()Z

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v6, v7}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$500(Lcom/sec/android/gallery3d/ui/SlotView$Layout;J)Z

    move-result v22

    or-int v10, v10, v22

    move-object/from16 v0, p0

    iget v14, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v22

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->getPosition()I

    move-result v16

    if-ltz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v16

    if-ge v0, v1, :cond_2

    :cond_1
    if-gez v16, :cond_a

    const/4 v4, 0x0

    :goto_1
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v4, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->updateScrollPosition(IZ)V

    :cond_2
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mOverScrollEffect:I

    move/from16 v22, v0

    if-nez v22, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v8

    if-lez v14, :cond_3

    if-eqz v13, :cond_4

    :cond_3
    if-ge v14, v8, :cond_6

    if-ne v13, v8, :cond_6

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->getCurrVelocity()F

    move-result v21

    if-ne v13, v8, :cond_5

    move/from16 v0, v21

    neg-float v0, v0

    move/from16 v21, v0

    :cond_5
    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->isNaN(F)Z

    move-result v22

    if-nez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/ui/Paper;->edgeReached(F)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mPaper:Lcom/sec/android/gallery3d/ui/Paper;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/Paper;->advanceAnimation()Z

    move-result v15

    :cond_7
    or-int/2addr v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollY:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mRequestRenderSlots:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$600(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$700(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v24

    sub-int v23, v23, v24

    invoke-static/range {v22 .. v23}, Lcom/sec/android/gallery3d/ui/SlotView;->expandIntArray([II)[I

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$600(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v22

    add-int/lit8 v5, v22, -0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->access$700(Lcom/sec/android/gallery3d/ui/SlotView$Layout;)I

    move-result v22

    move/from16 v0, v22

    if-lt v5, v0, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v15}, Lcom/sec/android/gallery3d/ui/SlotView;->renderItem(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IZ)I

    move-result v17

    and-int/lit8 v22, v17, 0x2

    if-eqz v22, :cond_8

    const/4 v10, 0x1

    :cond_8
    and-int/lit8 v22, v17, 0x1

    if-eqz v22, :cond_9

    add-int/lit8 v19, v18, 0x1

    aput v5, v20, v18

    move/from16 v18, v19

    :cond_9
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->getScrollLimit()I

    move-result v4

    goto/16 :goto_1

    :cond_b
    move/from16 v18, v12

    :cond_c
    if-eqz v18, :cond_e

    const/4 v11, 0x0

    const/4 v5, 0x0

    move v12, v11

    :goto_3
    move/from16 v0, v18

    if-ge v5, v0, :cond_b

    aget v22, v20, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2, v15}, Lcom/sec/android/gallery3d/ui/SlotView;->renderItem(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IZ)I

    move-result v17

    and-int/lit8 v22, v17, 0x2

    if-eqz v22, :cond_d

    const/4 v10, 0x1

    :cond_d
    and-int/lit8 v22, v17, 0x1

    if-eqz v22, :cond_11

    add-int/lit8 v11, v12, 0x1

    aput v5, v20, v12

    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v12, v11

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollY:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/glrenderer/GLCanvas;->translate(FF)V

    if-eqz v10, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/gallery3d/ui/SlotView;->invalidate()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    move/from16 v22, v0

    if-eqz v22, :cond_10

    if-nez v10, :cond_10

    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    new-instance v23, Lcom/sec/android/gallery3d/ui/SlotView$1;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v9}, Lcom/sec/android/gallery3d/ui/SlotView$1;-><init>(Lcom/sec/android/gallery3d/ui/SlotView;Lcom/sec/android/gallery3d/ui/UserInteractionListener;)V

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_10
    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/sec/android/gallery3d/ui/SlotView;->mMoreAnimation:Z

    goto/16 :goto_0

    :cond_11
    move v11, v12

    goto :goto_4
.end method

.method public scrollTo(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/ui/SlotView;->scrollTo(IZ)V

    return-void
.end method

.method public setListener(Lcom/sec/android/gallery3d/ui/SlotView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mListener:Lcom/sec/android/gallery3d/ui/SlotView$Listener;

    return-void
.end method

.method public setOverscrollEffect(I)V
    .locals 2

    const/4 v0, 0x1

    iput p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mOverScrollEffect:I

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScroller:Lcom/sec/android/gallery3d/ui/ScrollerHelper;

    if-ne p1, v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/gallery3d/ui/ScrollerHelper;->setOverfling(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSlotCount(I)Z
    .locals 3

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v1, p1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->setSlotCount(I)Z

    move-result v0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mStartIndex:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mStartIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setCenterIndex(I)V

    iput v2, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mStartIndex:I

    :cond_0
    iget v1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mScrollX:I

    invoke-direct {p0, v1}, Lcom/sec/android/gallery3d/ui/SlotView;->setScrollPosition(I)V

    return v0
.end method

.method public setSlotRenderer(Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mRenderer:Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibleStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/SlotView;->getVisibleEnd()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/android/gallery3d/ui/SlotView$SlotRenderer;->onVisibleRangeChanged(II)V

    :cond_0
    return-void
.end method

.method setSlotSpec(Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mLayout:Lcom/sec/android/gallery3d/ui/SlotView$Layout;

    invoke-virtual {v0, p1}, Lcom/sec/android/gallery3d/ui/SlotView$Layout;->setSlotSpec(Lcom/sec/android/gallery3d/ui/SlotView$Spec;)V

    return-void
.end method

.method public setStartIndex(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mStartIndex:I

    return-void
.end method

.method public setUserInteractionListener(Lcom/sec/android/gallery3d/ui/UserInteractionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/ui/SlotView;->mUIListener:Lcom/sec/android/gallery3d/ui/UserInteractionListener;

    return-void
.end method
