.class Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;
.super Ljava/lang/Object;
.source "SearchFilterView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 7

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getGalleryCurrentStatus()Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v1, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$400(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b01f8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    # getter for: Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->mSearchTagFilterView:Landroid/view/View;
    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->access$2000(Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->isHistoryViewVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x0

    cmpl-float v5, v0, v5

    if-lez v5, :cond_0

    const/4 v0, 0x0

    :cond_0
    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView$11;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;

    invoke-virtual {v5, v0}, Lcom/sec/samsung/gallery/view/gallerysearch/filter/SearchFilterView;->moveSearchFilter(F)V

    :cond_1
    return-void

    :cond_2
    sub-int v5, v1, v3

    sub-int/2addr v5, v2

    int-to-float v5, v5

    cmpg-float v5, v4, v5

    if-gez v5, :cond_3

    sub-int v5, v1, v3

    sub-int/2addr v5, v2

    int-to-float v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method
