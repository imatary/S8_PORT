.class Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;
.super Landroid/database/ContentObserver;
.source "VisualSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->init(Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x1

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TAG_UPDATE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "daycluster"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "force_reload"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsDirty:Z
    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$202(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;Z)Z

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$300(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v1

    const/4 v0, -0x1

    instance-of v3, v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->getCurrentState()I

    move-result v0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mIsReadyToUpdate:Z
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->isDataLoaderRunning()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->mCardAdapter:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/ui/CardListViewAdapter;->reloadData(Z)V

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView$2;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->updateCategoryItems()V
    invoke-static {v3}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->access$500(Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;)V

    :cond_3
    return-void
.end method
