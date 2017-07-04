.class public Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;
.super Landroid/view/ViewGroup;
.source "ExpandableLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mLayoutParam:Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

.field private final mLineHeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLineHeights:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLineHeights:Ljava/util/List;

    sget-object v1, Lcom/sec/android/gallery3d/R$styleable;->expandable:[I

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;-><init>(IIILcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$1;)V

    iput-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLayoutParam:Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLayoutParam:Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 13

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getChildCount()I

    move-result v3

    sub-int v8, p4, p2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingTop()I

    move-result v10

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, v4

    :goto_0
    if-ge v6, v3, :cond_0

    invoke-virtual {p0, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I

    move-result v1

    add-int v11, v9, v2

    if-le v11, v8, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingLeft()I

    move-result v9

    iget-object v11, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLineHeights:Ljava/util/List;

    add-int/lit8 v4, v5, 0x1

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/2addr v10, v11

    :goto_1
    add-int v11, v9, v2

    add-int v12, v10, v1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    invoke-static {v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I

    move-result v11

    add-int/2addr v11, v2

    add-int/2addr v9, v11

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move v5, v4

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v5

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 15

    sget-boolean v13, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->$assertionsDisabled:Z

    if-nez v13, :cond_0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    if-nez v13, :cond_0

    new-instance v13, Ljava/lang/AssertionError;

    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    throw v13

    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingLeft()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingRight()I

    move-result v14

    sub-int v9, v13, v14

    const/4 v10, 0x0

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingTop()I

    move-result v14

    sub-int/2addr v13, v14

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingBottom()I

    move-result v14

    sub-int v6, v13, v14

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getChildCount()I

    move-result v3

    const/4 v5, 0x0

    const/4 v4, 0x0

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLineHeights:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingTop()I

    move-result v12

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_2

    const/high16 v13, -0x80000000

    invoke-static {v6, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    :goto_0
    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_4

    invoke-virtual {p0, v7}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    const/high16 v13, -0x80000000

    invoke-static {v9, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-virtual {v0, v13, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->access$100(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I

    move-result v13

    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->access$200(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I

    move-result v14

    add-int/2addr v13, v14

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v13, v11, v2

    if-le v13, v9, :cond_3

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->getPaddingLeft()I

    move-result v11

    add-int/2addr v12, v5

    iget-object v13, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLineHeights:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v4

    :goto_2
    invoke-static {v8}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->access$300(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;)I

    move-result v13

    add-int/2addr v13, v2

    add-int/2addr v11, v13

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_0

    :cond_3
    add-int v13, v11, v2

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v5, v4

    goto :goto_2

    :cond_4
    iget-object v13, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLineHeights:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    if-nez v13, :cond_7

    add-int v6, v12, v5

    :cond_5
    :goto_3
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/high16 v14, 0x40000000    # 2.0f

    if-ne v13, v14, :cond_6

    move v10, v9

    :cond_6
    invoke-virtual {p0, v10, v6}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->setMeasuredDimension(II)V

    return-void

    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    const/high16 v14, -0x80000000

    if-ne v13, v14, :cond_5

    add-int v13, v12, v5

    if-ge v13, v6, :cond_5

    add-int v6, v12, v5

    goto :goto_3
.end method

.method public setItemHeight(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout;->mLayoutParam:Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;

    invoke-static {v0, p1}, Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;->access$102(Lcom/sec/samsung/gallery/view/detailview/moreinfo/ExpandableLayout$LayoutParams;I)I

    return-void
.end method
