.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$16800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$16900(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$17000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$17200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$17100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$17300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mRecommendView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$17400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$28;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    return-void
.end method
