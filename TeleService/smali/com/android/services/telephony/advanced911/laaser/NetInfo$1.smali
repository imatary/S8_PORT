.class final Lcom/android/services/telephony/advanced911/laaser/NetInfo$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "NetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/laaser/NetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    const-string/jumbo v2, "BLEScanResult - Results"

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScanFailed(I)V
    .locals 3

    const-string/jumbo v0, "Scan Failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error Code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .locals 12

    const-wide/32 v10, 0xf4240

    const-string/jumbo v6, "callbackType"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "result"

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const-string/jumbo v6, "NetInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Scan record data len="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_0
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;

    invoke-virtual {v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBssId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBleAdv()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->setBleAdv(Ljava/util/List;)V

    :cond_1
    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBleAdv()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_2

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBleAdv()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;-><init>()V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setAdvFlags(I)V

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setAdv([B)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setSignal(I)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get2()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v8

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setTimeStamp(J)V

    :cond_3
    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBleAdv()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "NetInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " / "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getUuId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v6, "NetInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "new: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;

    invoke-direct {v1}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->setBssId(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->setSignal(I)V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get2()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v8

    div-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->setTimeStamp(J)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->setBleAdv(Ljava/util/List;)V

    new-instance v0, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;

    invoke-direct {v0}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;-><init>()V

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getAdvertiseFlags()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setAdvFlags(I)V

    invoke-virtual {v4}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setAdv([B)V

    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setSignal(I)V

    invoke-virtual {v1}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getTimeStamp()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/services/telephony/advanced911/laaser/internal/BleAdvData;->setTimeStamp(J)V

    :cond_6
    invoke-virtual {v1}, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;->getBleAdv()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get0()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
