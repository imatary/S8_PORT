.class Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "PhotoDataAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/app/PhotoDataAdapter;-><init>(Lcom/sec/android/gallery3d/interfaces/LibraryContext;Lcom/sec/android/gallery3d/ui/GLRoot;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/ui/PhotoView;Lcom/sec/android/gallery3d/data/MediaSet;Lcom/sec/android/gallery3d/data/Path;IIZZLcom/sec/android/gallery3d/app/AlbumReloader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;Lcom/sec/android/gallery3d/ui/GLRoot;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    invoke-direct {p0, p2}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mIsAlive:Z
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$000(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingStarted()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onLoadingFinished(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/AlbumReloader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # getter for: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mAlbumReloader:Lcom/sec/android/gallery3d/app/AlbumReloader;
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$100(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)Lcom/sec/android/gallery3d/app/AlbumReloader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/app/AlbumReloader;->notifyDirty()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    # invokes: Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->updateImageRequests()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->access$200(Lcom/sec/android/gallery3d/app/PhotoDataAdapter;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$1;->this$0:Lcom/sec/android/gallery3d/app/PhotoDataAdapter;

    iget-object v0, v0, Lcom/sec/android/gallery3d/app/PhotoDataAdapter;->mDataListener:Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;

    invoke-interface {v0}, Lcom/sec/android/gallery3d/app/PhotoDataAdapter$DataListener;->onPhotoFailedToLoad()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
