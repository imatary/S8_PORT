.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;
.super Landroid/database/DataSetObserver;
.source "FilterSelectedItemListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 15

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v11

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getCount()I

    move-result v7

    if-nez v7, :cond_1

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->removeAllViews()V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v11, v7, :cond_4

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->removeAllViews()V

    const/4 v5, 0x0

    :goto_1
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getCount()I

    move-result v12

    if-ge v5, v12, :cond_2

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v5, v13, v14}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Landroid/view/View$OnKeyListener;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$1;

    invoke-direct {v12, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$2;

    invoke-direct {v12, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$2;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12, v1, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->addView(Landroid/view/View;I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setEnabled(Z)V

    :cond_3
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->requestLayout()V

    goto :goto_0

    :cond_4
    if-le v11, v7, :cond_6

    move v2, v11

    :goto_2
    if-le v11, v7, :cond_7

    const/4 v10, 0x1

    :goto_3
    if-eqz v10, :cond_a

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v2, :cond_5

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ge v5, v7, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    invoke-virtual {v12, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchTagData;

    if-eqz v9, :cond_9

    invoke-virtual {v9, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_9

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->removeViewAt(I)V

    :cond_5
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getChildCount()I

    move-result v12

    if-lez v12, :cond_0

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v2, v7

    goto :goto_2

    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    :cond_8
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->removeViewAt(I)V

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    sub-int v6, v7, v11

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v6, :cond_5

    add-int v4, v11, v5

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v4, v13, v14}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;

    move-result-object v12

    invoke-virtual {v12, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mOnKeyListener:Landroid/view/View$OnKeyListener;
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)Landroid/view/View$OnKeyListener;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$3;

    invoke-direct {v12, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$3;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    new-instance v12, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$4;

    invoke-direct {v12, p0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1$4;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;)V

    invoke-virtual {v1, v12}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-lez v4, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v8, :cond_b

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x1

    invoke-direct {v8, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    :cond_b
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->mHorizontalSpacing:I
    invoke-static {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;)I

    move-result v12

    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v1, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12, v1, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->addView(Landroid/view/View;I)V

    iget-object v12, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;

    invoke-virtual {v12}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/FilterSelectedItemListView;->getContext()Landroid/content/Context;

    move-result-object v12

    const v13, 0x7f050038

    invoke-static {v12, v13}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5
.end method
