.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->getMainView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mContainer:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;

    iget-object v1, v1, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$21;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16400(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
