.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->showKeywordSuggestionView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

.field final synthetic val$isVisible:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->val$isVisible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->val$isVisible:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$600(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$3;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method