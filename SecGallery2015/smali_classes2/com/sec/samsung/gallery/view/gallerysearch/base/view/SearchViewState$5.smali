.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;
.super Ljava/lang/Object;
.source "SearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->showNoResultView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

.field final synthetic val$show:Z


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iput-boolean p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->val$show:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const v5, 0x7f120236

    const v4, 0x7f120232

    const v3, 0x7f1200f1

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->val$show:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-boolean v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mCloseTipsButtonPressed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mNoItemView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
