.class Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;
.super Ljava/lang/Object;
.source "GalleryMultiWindow.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->registerLayoutListener(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->getTopState()Lcom/sec/android/gallery3d/app/ActivityState;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getSelectionManager()Lcom/sec/android/gallery3d/ui/SelectionManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/ui/SelectionManager;->inSelectionMode()Z

    move-result v3

    # setter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isSelectionMode:Z
    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$102(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Z)Z

    :cond_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isPickMode()Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$200(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isMultiWindow()Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$300(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$400(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/photoview/PhotoViewState;

    if-nez v2, :cond_3

    instance-of v2, v0, Lcom/sec/samsung/gallery/view/detailview/DetailViewState;

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isSelectionMode:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$100(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    const/4 v3, 0x0

    # setter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z
    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$402(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Z)Z

    :cond_1
    :goto_0
    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->FEATURE_USE_MULTIWINDOW:Z
    invoke-static {}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mActivity:Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$000(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;->getStateManager()Lcom/sec/android/gallery3d/app/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/app/StateManager;->onMWLayoutChanged()V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # invokes: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->isMultiWindow()Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$300(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    # getter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z
    invoke-static {v2}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$400(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/gallery3d/app/GalleryMultiWindow$1;->this$0:Lcom/sec/android/gallery3d/app/GalleryMultiWindow;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->mDropDownReloadNeeded:Z
    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/app/GalleryMultiWindow;->access$402(Lcom/sec/android/gallery3d/app/GalleryMultiWindow;Z)Z

    goto :goto_0
.end method
