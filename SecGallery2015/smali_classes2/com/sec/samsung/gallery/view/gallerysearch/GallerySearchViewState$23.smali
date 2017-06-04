.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->showSearchFilterView(Z)V
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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$18100(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSearchViewAnimating(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mIsTranslateAnimating:Z
    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17402(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # setter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterHidden:Z
    invoke-static {v5, v7}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$3902(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)Z

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getTagFilterHeight()I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$1000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17500(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->getActionBarHeight()I

    move-result v0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->getInputMethodHeight()I
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mGalleryCurrentStatus:Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17800(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int v5, v2, v0

    add-int/2addr v5, v3

    add-int/2addr v5, v4

    if-ge v5, v1, :cond_0

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mNoItemView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$17900(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Landroid/view/View;

    move-result-object v5

    add-int v6, v2, v0

    invoke-virtual {v5, v7, v6, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mComposeView:Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$18000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/samsung/gallery/glview/composeView/GlComposeView;->setSearchViewAnimating(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mSearchFilterView:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$200(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$23;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    const/4 v1, 0x1

    # invokes: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->setExtraMargin(Z)V
    invoke-static {v0, v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$4000(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Z)V

    return-void
.end method
