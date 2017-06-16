.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->onCreateView2(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingFinished()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onLoadingFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$600(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # setter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFirstLoading:Z
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$602(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->loadData(Z)V
    invoke-static {v0, v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$000(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setTotalSelectedCount()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$800(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->setFluidScrollEnabled()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$900(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$10;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mIsFullLoaded:Z
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$702(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)Z

    goto :goto_0
.end method

.method public onLoadingStarted()V
    .locals 2

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onLoadingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
