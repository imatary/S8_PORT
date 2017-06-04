.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils$VCServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 2

    const-string/jumbo v0, "VisualSearchViewState"

    const-string/jumbo v1, "vision cloud service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisionCloudUtils:Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/VisionCloudUtils;->setTranslatedMap()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->isDataLoaderRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v1, 0x1

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mIsNeedToReloadVisualSearchView:Z
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$202(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;Z)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mKeywordSuggestionListViewAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/KeywordSuggestionListViewAdapter;->loadData()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->mVisualSearchView:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->reloadView()V

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    const-string/jumbo v0, "VisualSearchViewState"

    const-string/jumbo v1, "vision cloud service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
