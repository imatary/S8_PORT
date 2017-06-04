.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->hideSearchFilterView()V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17300(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSearchViewAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16802(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V
    invoke-static {v0, v2}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$4000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getInputMethodHeight()I
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    move-result v1

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSearchViewAnimating(Z)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$22;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$16700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f120233

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
