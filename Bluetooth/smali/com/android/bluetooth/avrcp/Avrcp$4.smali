.class Lcom/android/bluetooth/avrcp/Avrcp$4;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/avrcp/Avrcp;->setupMediaControllerWithMediaBrowser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/Avrcp;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Avrcp;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get13(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/browse/MediaBrowser;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "There is not connected browser."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get14(Lcom/android/bluetooth/avrcp/Avrcp;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "media browser already connected"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/bluetooth/avrcp/Avrcp;->-set3(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "MediaBrowser connected"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get13(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/browse/MediaBrowser;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get13(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/browse/MediaBrowser;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v4

    const-string/jumbo v5, "Avrcp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onConnected serviceComponent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " token : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "token is null! Please check token information"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get30(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/session/MediaController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    monitor-exit v6

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get11(Lcom/android/bluetooth/avrcp/Avrcp;)Ljava/util/Stack;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Stack;->clear()V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5, v8}, Lcom/android/bluetooth/avrcp/Avrcp;->-set8(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)Ljava/lang/String;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get13(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/media/browse/MediaBrowser;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "Avrcp"

    const-string/jumbo v6, "subscribe"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-set14(Z)Z

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap28(Lcom/android/bluetooth/avrcp/Avrcp;Ljava/lang/String;)V

    return-void

    :cond_3
    :try_start_1
    new-instance v1, Landroid/media/session/MediaController;

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get17(Lcom/android/bluetooth/avrcp/Avrcp;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap37(Lcom/android/bluetooth/avrcp/Avrcp;Landroid/media/session/MediaController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method public onConnectionFailed()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-set3(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    const-string/jumbo v0, "Avrcp"

    const-string/jumbo v1, "MediaBrowser connection failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onConnectionSuspended()V
    .locals 4

    const/16 v3, 0xdc

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "MediaBrowser connection suspended"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/Avrcp;->-set3(Lcom/android/bluetooth/avrcp/Avrcp;Z)Z

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "Avrcp"

    const-string/jumbo v2, "remove MSG_REGISTER_MEDIA_BROWSER"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/Avrcp$4;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-get24(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
