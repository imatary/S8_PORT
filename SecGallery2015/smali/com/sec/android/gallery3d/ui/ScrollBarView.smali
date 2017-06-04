.class public Lcom/sec/android/gallery3d/ui/ScrollBarView;
.super Lcom/sec/android/gallery3d/ui/GLView;
.source "ScrollBarView.java"


# instance fields
.field private mBarHeight:I

.field private mContentPosition:I

.field private mContentTotal:I

.field private mGivenGripWidth:I

.field private final mGripHeight:I

.field private mGripPosition:I

.field private mGripWidth:I

.field private final mScrollBarTexture:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

.field private mScrollBarVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/ui/GLView;-><init>()V

    iput-boolean v4, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mScrollBarVisible:Z

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010064

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-instance v1, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    const v2, 0x7f02034d

    invoke-direct {v1, p1, v2}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    iput v4, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    iput p3, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripHeight:I

    return-void
.end method


# virtual methods
.method public hideScrollBar()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mScrollBarVisible:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v0, p5, p3

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mBarHeight:I

    goto :goto_0
.end method

.method public render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/sec/android/gallery3d/ui/GLView;->render(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mScrollBarVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mBarHeight:I

    iget v1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripHeight:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    iget-object v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mScrollBarTexture:Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    iget v4, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    iget v5, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripHeight:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/glrenderer/NinePatchTexture;->draw(Lcom/sec/android/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public setContentPosition(II)V
    .locals 4

    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentPosition:I

    if-ne p1, v2, :cond_0

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    if-ne p2, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->invalidate()V

    iput p1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentPosition:I

    iput p2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    if-gtz v2, :cond_1

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    iput v1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    iput v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/ui/ScrollBarView;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentTotal:I

    int-to-float v3, v3

    div-float v0, v2, v3

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mContentPosition:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    iget v2, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    if-gez v2, :cond_2

    :goto_1
    iput v1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripPosition:I

    goto :goto_1
.end method

.method public setGripWidth(I)V
    .locals 1

    iput p1, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    iget v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGivenGripWidth:I

    iput v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mGripWidth:I

    return-void
.end method

.method public showScrollBar()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/ui/ScrollBarView;->mScrollBarVisible:Z

    return-void
.end method
