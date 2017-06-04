.class public Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;
.super Landroid/view/View;
.source "FilterEdgeView.java"


# instance fields
.field private final mEdge:Landroid/widget/EdgeEffect;

.field private mIsTop:Z

.field private mPrevDisplacement:F

.field private mPrevDistance:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    return-void
.end method


# virtual methods
.method public drawEdge(FFZ)V
    .locals 1

    iput-boolean p3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mIsTop:Z

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mPrevDistance:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mPrevDisplacement:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1, p2}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mPrevDistance:F

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mPrevDisplacement:F

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->invalidate()V

    goto :goto_0
.end method

.method public finishEdge()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->finish()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    iget-boolean v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mIsTop:Z

    if-nez v4, :cond_0

    const/high16 v4, 0x43340000    # 180.0f

    div-int/lit8 v5, v3, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v0}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f100111

    invoke-static {v5, v6}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EdgeEffect;->setColor(I)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v1

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public releaseEdge()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->mEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterEdgeView;->invalidate()V

    return-void
.end method
