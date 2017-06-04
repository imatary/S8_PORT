.class Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;
.super Ljava/lang/Object;
.source "GallerySearchViewState.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->changeActionBarViewBG(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

.field final synthetic val$actionBarView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    iput-object p2, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->val$actionBarView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->val$actionBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->val$actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$18700(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x106000d

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->val$actionBarView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->val$actionBarView:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState$26;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;->access$18600(Lcom/sec/samsung/gallery/view/gallerysearch/GallerySearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v1

    const v2, 0x7f10011f

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method
