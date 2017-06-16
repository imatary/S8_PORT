.class Lcom/samsung/bt/pan/ETMLeHelper$2;
.super Landroid/bluetooth/le/ScanCallback;
.source "ETMLeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/bt/pan/ETMLeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/bt/pan/ETMLeHelper;


# direct methods
.method constructor <init>(Lcom/samsung/bt/pan/ETMLeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 9

    const/16 v8, 0x77

    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    const-string/jumbo v5, "ETMLeHelper"

    const-string/jumbo v6, "onScanResult for PAN reconnection"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v5

    const/16 v6, 0x75

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v5, 0x0

    aget-byte v4, v3, v5

    const-string/jumbo v5, "ETMLeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v8, :cond_0

    invoke-static {v3}, Lcom/samsung/bt/pan/ETMLeHelper;->-wrap0([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ETMLeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scanned device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", last connected device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v7}, Lcom/samsung/bt/pan/ETMLeHelper;->-get1(Lcom/samsung/bt/pan/ETMLeHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v5}, Lcom/samsung/bt/pan/ETMLeHelper;->-get1(Lcom/samsung/bt/pan/ETMLeHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v5}, Lcom/samsung/bt/pan/ETMLeHelper;->-get0(Lcom/samsung/bt/pan/ETMLeHelper;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "bt_addr"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v5}, Lcom/samsung/bt/pan/ETMLeHelper;->-get0(Lcom/samsung/bt/pan/ETMLeHelper;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v5

    const/16 v6, 0x7500

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v5, 0x0

    aget-byte v4, v3, v5

    const-string/jumbo v5, "ETMLeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "service ID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, v8, :cond_2

    invoke-static {v3}, Lcom/samsung/bt/pan/ETMLeHelper;->-wrap0([B)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "ETMLeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "scanned device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", last connected device : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v7}, Lcom/samsung/bt/pan/ETMLeHelper;->-get1(Lcom/samsung/bt/pan/ETMLeHelper;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v5}, Lcom/samsung/bt/pan/ETMLeHelper;->-get1(Lcom/samsung/bt/pan/ETMLeHelper;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v5}, Lcom/samsung/bt/pan/ETMLeHelper;->-get0(Lcom/samsung/bt/pan/ETMLeHelper;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "bt_addr"

    invoke-virtual {v1, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v5, p0, Lcom/samsung/bt/pan/ETMLeHelper$2;->this$0:Lcom/samsung/bt/pan/ETMLeHelper;

    invoke-static {v5}, Lcom/samsung/bt/pan/ETMLeHelper;->-get0(Lcom/samsung/bt/pan/ETMLeHelper;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method
