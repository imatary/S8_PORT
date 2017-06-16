.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$9;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$9;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$9;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
