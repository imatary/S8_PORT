.class Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;
.super Lcom/sec/android/gallery3d/ui/SynchronizedHandler;
.source "ReloadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;


# direct methods
.method constructor <init>(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-direct {p0, p2, p3}, Lcom/sec/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/sec/android/gallery3d/ui/GLRoot;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->access$000(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->access$000(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingStarted()V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->access$000(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/adapter/ReloadTask$1;->this$0:Lcom/sec/samsung/gallery/view/adapter/ReloadTask;

    invoke-static {v1}, Lcom/sec/samsung/gallery/view/adapter/ReloadTask;->access$000(Lcom/sec/samsung/gallery/view/adapter/ReloadTask;)Lcom/sec/android/gallery3d/app/LoadingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/gallery3d/app/LoadingListener;->onLoadingFinished(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
