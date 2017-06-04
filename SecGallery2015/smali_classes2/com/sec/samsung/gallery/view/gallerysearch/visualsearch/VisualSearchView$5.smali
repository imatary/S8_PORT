.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;
.super Ljava/lang/Object;
.source "VisualSearchView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->initVisualSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needToScroll(II)V
    .locals 4

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    add-int v2, p1, p2

    sub-int v0, v2, v1

    if-lez v0, :cond_1

    if-le v0, p1, :cond_0

    move v0, p1

    :cond_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/support/v7/widget/RecyclerView;->smoothScrollBy(II)V

    :cond_1
    return-void
.end method

.method public refresh(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->isFirstLoadingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardListView:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mOnViewVisibilityListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mOnViewVisibilityListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$800(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;->update(Z)V

    :cond_1
    return-void
.end method
