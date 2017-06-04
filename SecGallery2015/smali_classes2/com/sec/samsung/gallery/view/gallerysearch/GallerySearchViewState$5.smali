.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Lcom/sec/samsung/gallery/glview/composeView/GlComposeBaseView$OnSearchScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->onViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(F)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v0

    new-instance v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5$1;-><init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;F)V

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMoved()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsUSAModel:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->minimizeSoftInput()V

    :goto_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$6600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getReachedBoundary()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$6700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSearchViewAnimating(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showSearchFilterView(Z)V
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$6800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method public onPull(FF)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isScrollable()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->drawEdge(FF)V

    :cond_0
    return-void
.end method

.method public onReleased(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->isScrollable()Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->finishEdge()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$5;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->releaseEdge()V

    goto :goto_0
.end method
