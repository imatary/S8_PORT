.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;
.super Ljava/lang/Object;
.source "CardListViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->updateRecyclerView(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$CategoryListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mOnRefreshListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->mAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/RecyclerViewAdapter;->getIsExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->mOnRefreshListener:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder$2;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;

    iget-object v2, v2, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$HeaderViewHolder;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter$OnRefreshListener;->needToScroll(II)V

    :cond_0
    return-void
.end method
