.class Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;
.super Landroid/os/Handler;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/AdvertiseManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleStartAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    iget v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v2, v5}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->logClientsSet(IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1, v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap2(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/GattService;->failStartAdv(I)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;)V

    return-void

    :cond_0
    const-string/jumbo v1, "BtGatt.AdvertiseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "number of adv instance running = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->maxAdvertiseInstances()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-direct {p0, v6, v5}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->logClientsSet(IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1, v0, v6}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap2(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/GattService;->failStartAdv(I)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->startAdverising(Lcom/android/bluetooth/gatt/AdvertiseClient;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, v7, v5}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->logClientsSet(IZ)V

    const-string/jumbo v1, "BtGatt.AdvertiseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Advertise failed internal error for clientif = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1, v0, v7}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap2(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/gatt/GattService;->failStartAdv(I)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap0(Lcom/android/bluetooth/gatt/AdvertiseManager;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v4, v4}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->logClientsSet(IZ)V

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v1, v0, v4}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap2(Lcom/android/bluetooth/gatt/AdvertiseManager;II)V

    return-void
.end method

.method private handleStopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V
    .locals 3

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop advertise for client =  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get2(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiseNative;->stopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->appDied:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "app died - unregistering client : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get6(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->logClientsSet(IZ)V

    return-void
.end method

.method private logClientsSet(IZ)V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "logClientsSet() - status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BtGatt.AdvertiseManager: logClientsSet() - status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get1(Lcom/android/bluetooth/gatt/AdvertiseManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "clientIf: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", TxPowerLevel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isConnectable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", Timeout: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v4}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-eqz p2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "BtGatt.AdvertiseManager: clientIf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->clientIf:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", TxPowerLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", isConnectable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Timeout: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->settings:Landroid/bluetooth/le/AdvertiseSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-wrap1(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string/jumbo v1, "BtGatt.AdvertiseManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recieve an unknown message : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->handleStartAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->handleStopAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method maxAdvertiseInstances()I
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isMultiAdvertisementSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->-get0(Lcom/android/bluetooth/gatt/AdvertiseManager;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isPeripheralModeSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
