.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;
.super Landroid/view/ViewGroup;
.source "FlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private line_height:I

.field private mIsRTLMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;-><init>(IIZ)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getChildCount()I

    move-result v3

    sub-int v6, p4, p2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v7

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v9, :cond_0

    move v7, v6

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingTop()I

    move-result v8

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    invoke-virtual {p0, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    if-eq v9, v10, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v9, :cond_4

    sub-int v9, v7, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v10

    if-ge v9, v10, :cond_1

    move v7, v6

    iget v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->line_height:I

    add-int/2addr v8, v9

    :cond_1
    :goto_1
    iget-boolean v9, v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mIsAddBtn:Z

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v9, :cond_5

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v9

    add-int v7, v9, v2

    :cond_2
    :goto_2
    iget-boolean v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v9, :cond_6

    sub-int v9, v7, v2

    add-int v10, v8, v1

    invoke-virtual {v0, v9, v8, v7, v10}, Landroid/view/View;->layout(IIII)V

    iget v9, v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mHorizontal_spacing:I

    add-int/2addr v9, v2

    sub-int/2addr v7, v9

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    add-int v9, v7, v2

    if-le v9, v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v7

    iget v9, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->line_height:I

    add-int/2addr v8, v9

    goto :goto_1

    :cond_5
    sub-int v7, v6, v2

    goto :goto_2

    :cond_6
    add-int v9, v7, v2

    add-int v10, v8, v1

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    iget v9, v5, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mHorizontal_spacing:I

    add-int/2addr v9, v2

    add-int/2addr v7, v9

    goto :goto_3

    :cond_7
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingRight()I

    move-result v12

    sub-int v8, v11, v12

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingBottom()I

    move-result v12

    sub-int v4, v11, v12

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getChildCount()I

    move-result v3

    const/4 v6, 0x0

    sget-boolean v11, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->IS_LOCALE_RTL_MODE:Z

    iput-boolean v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v9

    iget-boolean v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v11, :cond_0

    move v9, v8

    :cond_0
    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingTop()I

    move-result v10

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_3

    const/high16 v11, -0x80000000

    invoke-static {v4, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    invoke-virtual {p0, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;

    const/high16 v11, -0x80000000

    invoke-static {v8, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    invoke-virtual {v0, v11, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    iget v12, v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mVertical_spacing:I

    add-int/2addr v11, v12

    invoke-static {v6, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    iget-boolean v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v11, :cond_4

    sub-int v11, v9, v2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v12

    if-ge v11, v12, :cond_1

    move v9, v8

    add-int/2addr v10, v6

    :cond_1
    :goto_2
    iget-boolean v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->mIsRTLMode:Z

    if-eqz v11, :cond_5

    iget v11, v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mHorizontal_spacing:I

    add-int/2addr v11, v2

    sub-int/2addr v9, v11

    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_4
    add-int v11, v9, v2

    if-le v11, v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v10, v6

    goto :goto_2

    :cond_5
    iget v11, v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout$LayoutParams;->mHorizontal_spacing:I

    add-int/2addr v11, v2

    add-int/2addr v9, v11

    goto :goto_3

    :cond_6
    iput v6, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->line_height:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    if-nez v11, :cond_8

    add-int v4, v10, v6

    :cond_7
    :goto_4
    invoke-virtual {p0, v8, v4}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/FlowLayout;->setMeasuredDimension(II)V

    return-void

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, -0x80000000

    if-ne v11, v12, :cond_7

    add-int v11, v10, v6

    if-ge v11, v4, :cond_7

    add-int v4, v10, v6

    goto :goto_4
.end method
