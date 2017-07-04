.class public Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;
.super Ljava/lang/Object;
.source "SeHorizontalListViewSelectionBuffer.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/HorizontalListViewSelectionBufferInterface;


# instance fields
.field private final mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-direct {v4, p1}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    const v5, 0x7f120008

    invoke-virtual {v4, v5}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setId(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0366

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0364

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v4, 0x7f0202aa

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v4, v0}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v4, v7, v2, v7, v1}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setPaddingRelative(IIII)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setFocusable(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v4, v8}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setFocusableInTouchMode(Z)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v4, v3}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/widget/RelativeLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->removeAllViewsInLayout()V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setDelete(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->setDelete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setInsert(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    invoke-virtual {v0, p1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->setInsert(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setOnAddDeleteListener(Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    iget-object v0, v0, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->mAddDeleteListAnimator:Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;

    new-instance v1, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer$1;-><init>(Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;Lcom/sec/samsung/gallery/lib/libinterface/OnAddDeleteListener;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator;->setOnAddDeleteListener(Lcom/samsung/android/animation/SemAddDeleteHorizontalListAnimator$OnAddDeleteListener;)V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeHorizontalListViewSelectionBuffer;->mSelectionBufferListView:Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;

    invoke-virtual {v0, p1}, Lcom/sec/samsung/gallery/lib/se/SelectionBufferHorizontalListView;->setSelection(I)V

    return-void
.end method
