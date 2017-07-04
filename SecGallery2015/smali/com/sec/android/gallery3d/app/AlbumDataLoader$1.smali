.class Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "AlbumDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/AlbumDataLoader;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/data/MediaSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/AlbumDataLoader;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$100(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$000(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingFinished(Z)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/gallery3d/app/AlbumDataLoader$1;->this$0:Lcom/sec/android/gallery3d/app/AlbumDataLoader;

    invoke-static {v1}, Lcom/sec/android/gallery3d/app/AlbumDataLoader;->access$200(Lcom/sec/android/gallery3d/app/AlbumDataLoader;)Lcom/sec/android/gallery3d/app/AlbumReloader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/app/AlbumReloader;->notifyDirty()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
