.class Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$1;
.super Landroid/database/ContentObserver;
.source "GalleryPickerFragment.java"


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
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    const-string v0, "GalleryPickerFragment"

    const-string v1, "onChange in Image"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;

    const/4 v1, 0x1

    # invokes: Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->loadData(Z)V
    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;->access$000(Lcom/sec/android/gallery3d/rcl/provider/view/GalleryPickerFragment;Z)V

    return-void
.end method
