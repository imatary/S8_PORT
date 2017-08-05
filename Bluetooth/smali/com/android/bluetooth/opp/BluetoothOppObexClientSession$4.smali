.class Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;
.super Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback$Stub;
.source "BluetoothOppObexClientSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-direct {p0}, Lcom/samsung/android/allshare/service/fileshare/iface/IFileShareServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public stateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p2}, Lcom/android/bluetooth/Utils;->getAddressForLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stateChanged"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string/jumbo v2, "STATUS_STARTED"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "STATUS_PROGRESS"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedAdd TransferList:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-virtual {v2, p3, p4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->addSessionInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get15(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get15(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string/jumbo v2, "STATUS_COMPLETED"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "STATUS_FAILED"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get15(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;

    move-result-object v2

    const-string/jumbo v5, "STATUS_PROGRESS"

    invoke-interface {v2, p1, p2, v5}, Lcom/android/bluetooth/opp/IFileShareActionListener;->stateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "BtOppObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "stateChanged NOT FINISHED("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, "): "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->-get0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    monitor-exit v3

    return-void

    :cond_5
    :try_start_3
    const-string/jumbo v2, "STATUS_COMPLETED"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-virtual {v2, p3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->isContainedSessionID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->-get0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedRemove:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->-get0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->-get0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedRemove empty sessionID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-virtual {v2, p3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->removeSessionID(Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->getSessionSize()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedRemove empty TransferItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v4, "[ADVANCED OPP] P2p transfer completed, disconnect and turn off P2p"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v4, "stateChangedTransferList is Empty"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-set3(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;Z)Z

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->appNetService:Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/opp/BluetoothAdvancedOppService;->removeP2pConfirm(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :cond_6
    :try_start_4
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedNo FilePath:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedNo SessionID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedNo TransferItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "STATUS_FAILED"

    invoke-virtual {v2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-virtual {v2, p3}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->isContainedSessionID(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedremove sessionID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->-get0(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$TransferItem;->getSessionSize()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedRemove empty TransferItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get13(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "BtOppObexClient"

    const-string/jumbo v4, "stateChangedTransferList is Empty"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedNo SessionID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v2, "BtOppObexClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stateChangedNo TransferItem:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_c
    :try_start_5
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get15(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p5}, Lcom/android/bluetooth/opp/IFileShareActionListener;->stateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v4

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_d
    :try_start_7
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession$4;->this$0:Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;->-get15(Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;)Lcom/android/bluetooth/opp/IFileShareActionListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p5}, Lcom/android/bluetooth/opp/IFileShareActionListener;->stateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1
.end method
