.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$8;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$8;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$8;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    const/4 v1, 0x0

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->updateSelection(Landroid/view/View;IZ)V
    invoke-static {v0, p2, p3, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$400(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/view/View;IZ)V

    return-void
.end method
