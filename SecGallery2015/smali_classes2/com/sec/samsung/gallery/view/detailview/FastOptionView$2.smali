.class Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;
.super Ljava/lang/Object;
.source "FastOptionView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/samsung/gallery/view/detailview/FastOptionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocationForSingle()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$400(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryContext;->getView()Lcom/sec/android/gallery3d/interfaces/LibraryView;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/interfaces/LibraryView;->isMultiWindow()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/util/GalleryUtils;->isScaleWindow(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsKNOX:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromCategoryView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$600(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromEventView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$700(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mIsFromFavoriteView:Z
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$800(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocation()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$900(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mFastEditContainerView:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$300(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # getter for: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->mLibContext:Lcom/sec/android/gallery3d/interfaces/LibraryContext;
    invoke-static {v1}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$500(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)Lcom/sec/android/gallery3d/interfaces/LibraryContext;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getScreenSize(Lcom/sec/android/gallery3d/interfaces/LibraryContext;)Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocationForOverScreen()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1000(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/detailview/FastOptionView$2;->this$0:Lcom/sec/samsung/gallery/view/detailview/FastOptionView;

    # invokes: Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->setEditContainerLocationForNormal()V
    invoke-static {v0}, Lcom/sec/samsung/gallery/view/detailview/FastOptionView;->access$1100(Lcom/sec/samsung/gallery/view/detailview/FastOptionView;)V

    goto :goto_0
.end method
