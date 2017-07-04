.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$OnViewVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public update(Z)V
    .locals 5

    const v0, 0x7f0b01d2

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisualSearchVisibleItemCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const-string/jumbo v2, ""

    const v3, 0x7f100001

    invoke-static {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Ljava/lang/String;II)V

    :goto_0
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$202(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->reloadView()V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$14;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const v2, 0x7f0a02d6

    const v3, 0x7f100183

    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5600()Z

    move-result v4

    if-eqz v4, :cond_2

    const v0, 0x7f0b0201

    :cond_2
    invoke-static {v1, v2, v3, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6400(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;III)V

    goto :goto_0
.end method
