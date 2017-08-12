.class Lcom/android/bluetooth/avrcp/Avrcp$1;
.super Landroid/media/browse/MediaBrowser$SubscriptionCallback;
.source "Avrcp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/Avrcp;
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

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$SubscriptionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildrenLoaded(Ljava/lang/String;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;)V"
        }
    .end annotation

    const/16 v6, 0xe6

    const-string/jumbo v3, "Avrcp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onChildrenLoaded parentId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " children : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-virtual {v3, p2}, Lcom/android/bluetooth/avrcp/Avrcp;->setData(Ljava/util/List;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->removeMessages(I)V

    invoke-static {}, Lcom/android/bluetooth/avrcp/Avrcp;->-get0()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "Avrcp"

    const-string/jumbo v4, "Respond to setBrowsedPlayer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get15(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v5}, Lcom/android/bluetooth/avrcp/Avrcp;->-get40(Lcom/android/bluetooth/avrcp/Avrcp;)I

    move-result v5

    invoke-static {v3, v4, v5, v1}, Lcom/android/bluetooth/avrcp/Avrcp;->-wrap31(Lcom/android/bluetooth/avrcp/Avrcp;[BIZ)V

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v3

    const/16 v4, 0xcb

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "BdAddress"

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v4}, Lcom/android/bluetooth/avrcp/Avrcp;->-get15(Lcom/android/bluetooth/avrcp/Avrcp;)[B

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/Avrcp$1;->this$0:Lcom/android/bluetooth/avrcp/Avrcp;

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/Avrcp;->-get23(Lcom/android/bluetooth/avrcp/Avrcp;)Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/avrcp/Avrcp$AvrcpMessageHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "Avrcp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
