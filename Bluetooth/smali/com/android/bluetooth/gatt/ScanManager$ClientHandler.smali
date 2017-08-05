.class Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
.super Landroid/os/Handler;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ScanManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/gatt/ScanManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v3, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v3

    if-ne v3, v1, :cond_3

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v3

    if-ne v3, v1, :cond_4

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->flushBatchResults(I)V

    return-void
.end method

.method handleLcdOffIntent()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v1, "handleLcdOffIntent"

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->handleLcdOffIntent()V

    return-void
.end method

.method handleLcdOnIntent()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v1, "handleLcdOnIntent"

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v0}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->handleLcdOnIntent()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    const-string/jumbo v1, "BtGatt.ScanManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "received an unkown message : "

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

    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleFlushBatchResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleLcdOffIntent()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->handleLcdOnIntent()V

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v1}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->regularScanTimeout()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_5
        0x64 -> :sswitch_3
        0x65 -> :sswitch_4
    .end sparse-switch
.end method

.method handleStartScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 6

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    const-string/jumbo v3, "handling starting scan"

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isScanSupported(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "BtGatt.ScanManager"

    const-string/jumbo v3, "Scan settings not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService;->failStartScan(I)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string/jumbo v2, "BtGatt.ScanManager"

    const-string/jumbo v3, "Scan already started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v2

    iget v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/GattService;->failStartScan(I)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->isBatchClient(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get3(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->startRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap0(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object v2

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_4
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/ScanManager;->-get5(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->workSource:Landroid/os/WorkSource;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteBleScanStarted(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method handleStopScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get15(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    iget v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getRegularScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v3, "BtGatt.ScanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "regularClient is NULL!, appDied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopRegularScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap4(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;)I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get6(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->removeMessages(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get5(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v3

    iget-object v4, v2, Lcom/android/bluetooth/gatt/ScanClient;->workSource:Landroid/os/WorkSource;

    invoke-interface {v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteBleScanStopped(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-boolean v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "app died, unregister client - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/bluetooth/gatt/ScanManager;->-wrap1(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get17(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;

    move-result-object v3

    iget v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    iget v4, p1, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    invoke-static {v3, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->-wrap3(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v3, "BtGatt.ScanManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "batchClient is NULL!, appDied: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    iget-object v3, p0, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->this$0:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-static {v3}, Lcom/android/bluetooth/gatt/ScanManager;->-get16(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->stopBatchScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
