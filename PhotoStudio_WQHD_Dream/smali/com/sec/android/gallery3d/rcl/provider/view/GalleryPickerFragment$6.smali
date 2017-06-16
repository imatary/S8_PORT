.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"

# interfaces
.implements Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnMultiSelectStart(II)V
    .locals 2

    const-string v0, "GalleryPickerFragment"

    const-string v1, "OnTwMultiSelectStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public OnMultiSelectStop(II)V
    .locals 4

    const-string v2, "GalleryPickerFragment"

    const-string v3, "OnTwMultiSelectStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$200(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getSelectedItemsByMultiSelection()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$200(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->getDelectedItemsByMultiSelection()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;
    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$300(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onMultiDeselectedItemList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mStatusListener:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;
    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$300(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$StatusListener;->onMultiSelectedItemList(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mGalleryPickerViewAdapter:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;
    invoke-static {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$200(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerViewAdapter;->clearSeletedItemsByMultiSelection()Z

    return-void
.end method

.method public onMultiSelected(Landroid/widget/AdapterView;Landroid/view/View;IJZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJZZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$6;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->updateSelection(Landroid/view/View;IZ)V
    invoke-static {v0, p2, p3, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$400(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method public setMultiSelectedListener(Landroid/widget/GridView;Lcom/sec/android/gallery3d/rcl/provider/libinterface/MultiSelectedListenerCallback;)V
    .locals 0

    return-void
.end method
