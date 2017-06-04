.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter$HistoryItemObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->initHistoryListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    const v3, 0x7f120233

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryListAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/history/HistoryViewAdapter;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f120231

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    iget-object v2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1200(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;
    invoke-static {v1, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1102(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;Landroid/view/View;)Landroid/view/View;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0398

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1100(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mHistoryView:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1300(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_4
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setHistoryViewTouchListener()V
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$1400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V

    goto :goto_1
.end method
