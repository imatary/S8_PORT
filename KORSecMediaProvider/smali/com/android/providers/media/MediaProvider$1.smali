.class Lcom/android/providers/media/MediaProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get6()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->-set2(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    :cond_0
    :goto_0
    const-string/jumbo v1, "android.os.storage.extra.STORAGE_VOLUME"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageVolume;

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unmounted action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v2}, Lcom/android/providers/media/MediaProvider;->-get4(Lcom/android/providers/media/MediaProvider;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    const-string/jumbo v2, "content://media/external"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/providers/media/MediaProvider;->-wrap5(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get12()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get12()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    monitor-exit v2

    invoke-static {}, Landroid/media/MiniThumbFile;->reset()V

    :goto_1
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2

    :cond_1
    const-string/jumbo v1, "android.intent.action.DB_CLEAN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get6()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_2
    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get5()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->-set2(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v2

    return-void

    :cond_2
    monitor-exit v2

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_3
    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {v1}, Lcom/android/providers/media/MediaProvider;->-wrap12(Lcom/android/providers/media/MediaProvider;)V

    iget-object v1, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/providers/media/MediaProvider;->-wrap9(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/providers/media/MediaProvider;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Call CleanerThread "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/providers/media/MediaProvider$CleanerThread;

    iget-object v2, p0, Lcom/android/providers/media/MediaProvider$1;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {v1, v2, v0, p1}, Lcom/android/providers/media/MediaProvider$CleanerThread;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/os/storage/StorageVolume;Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$CleanerThread;->start()V

    goto :goto_1
.end method
