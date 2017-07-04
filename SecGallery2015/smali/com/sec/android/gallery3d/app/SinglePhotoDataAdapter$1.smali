.class Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "SinglePhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;-><init>(Lcom/sec/android/gallery3d/app/AbstractGalleryActivity;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaItem;Lcom/sec/android/gallery3d/app/GalleryCurrentStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v3}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$000(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Lcom/sec/android/gallery3d/common/Utils;->assertTrue(Z)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$200(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$300(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/gallery3d/util/Future;

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$400(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/util/Future;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$302(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SinglePhotoDataAdapter"

    const-string/jumbo v3, "ClassCastException, display the broken image"

    invoke-static {v1, v3}, Lcom/sec/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$700(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)V

    :goto_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingFinished(Z)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$500(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$ImageBundle;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/sec/android/gallery3d/util/Future;

    invoke-static {v3, v1}, Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;->access$600(Lcom/sec/android/gallery3d/app/SinglePhotoDataAdapter;Lcom/sec/android/gallery3d/util/Future;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
