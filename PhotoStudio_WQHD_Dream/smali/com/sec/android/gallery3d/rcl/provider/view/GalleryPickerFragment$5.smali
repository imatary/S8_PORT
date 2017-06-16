.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$5;
.super Ljava/lang/Object;
.source "GalleryPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$5;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$5;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->completeSelectingItem()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$100(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;)V

    return-void
.end method
