.class Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;
.super Landroid/os/Handler;
.source "GalleryPickerDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->initHandler(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->access$000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->access$000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;->onLoadingStarted()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->access$000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader$1;->this$0:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;

    # getter for: Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->mLoadingListener:Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;->access$000(Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoader;)Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/gallery3d/rcl/provider/adapter/GalleryPickerDataLoadingListener;->onLoadingFinished()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
