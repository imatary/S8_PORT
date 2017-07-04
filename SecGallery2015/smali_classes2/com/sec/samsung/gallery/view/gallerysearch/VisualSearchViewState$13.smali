.class Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;
.super Ljava/lang/Object;
.source "VisualSearchViewState.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


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

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->isHideFilterPagerView()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5000(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->isMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-eq v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5300(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getLibraryContext()Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5402(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5500(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isLandscapeOrientation(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/visualsearch/VisualSearchView;->updateImageThumbSize()V

    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6200(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v4, "VisualSearchViewState"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5600()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5700(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    if-lt v4, v5, :cond_5

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v4}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5800(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$5902(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState$13;->this$0:Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;

    invoke-static {v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6100(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;)Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;->access$6002(Lcom/sec/samsung/gallery/view/gallerysearch/VisualSearchViewState;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
