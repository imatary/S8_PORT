.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->onChangedY(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;F)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iput p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->val$y:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isHistoryViewVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->val$y:F

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->moveSearchFilter(F)V

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$7900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->val$y:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6$1;->this$1:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;

    iget-object v0, v0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$6;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$8000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method
