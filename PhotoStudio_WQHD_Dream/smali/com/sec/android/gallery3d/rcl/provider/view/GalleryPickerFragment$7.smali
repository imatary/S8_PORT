.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnHoverListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-static {}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->isHoveringIconPenSelect()Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_3

    :cond_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;
    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$600(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->setHoveringIconToPenSelect(Landroid/widget/GridView;Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1

    :cond_2
    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;
    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$600(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->setHoveringIconToDefault(Landroid/widget/GridView;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->getInstance(Landroid/content/Context;)Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;

    iget-object v1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->mPickerGridView:Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;
    invoke-static {v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$600(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)Lcom/sec/android/gallery3d/rcl/provider/view/PickerGridView;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$7;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/rcl/provider/util/CrossAppUtils;->setHoveringIconToDefault(Landroid/widget/GridView;Landroid/content/Context;)V

    goto :goto_0
.end method
