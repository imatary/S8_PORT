.class Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;
.super Ljava/lang/Object;
.source "SearchViewState.java"

# interfaces
.implements Lcom/sec/android/gallery3d/app/LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished(Z)V
    .locals 2

    const-string/jumbo v0, "SearchViewState"

    const-string/jumbo v1, "SearchViewState:onLoadingFinished()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->checkSearchResult()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->checkSearchConditionChange()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->mSearchTagController:Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/SearchTagController;->resetSearchConditionChange()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState$1;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;

    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;->access$000(Lcom/sec/samsung/gallery/view/gallerysearch/base/view/SearchViewState;)V

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    const-string/jumbo v0, "SearchViewState"

    const-string/jumbo v1, "SearchViewState:onLoadingStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
