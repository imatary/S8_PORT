.class Lcom/android/services/telephony/advanced911/laaser/NetInfo$BTScanThread;
.super Ljava/lang/Thread;
.source "NetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/advanced911/laaser/NetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BTScanThread"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v14, 0x1388

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get3()Z

    move-result v15

    if-eqz v15, :cond_0

    const/16 v14, 0x7d0

    :cond_0
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get1()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v15

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v15

    const/16 v18, 0xc

    move/from16 v0, v18

    if-eq v15, v0, :cond_2

    const-wide/16 v18, 0x32

    :try_start_0
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    int-to-long v0, v14

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    const-wide/16 v20, 0x7d0

    add-long v18, v18, v20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    cmp-long v15, v18, v20

    if-lez v15, :cond_1

    :cond_2
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get1()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v15

    invoke-virtual {v15}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v6

    if-nez v6, :cond_3

    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "startLeScan: cannot get BluetoothLeScanner"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-wrap0()V

    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    return-void

    :catch_0
    move-exception v9

    goto :goto_0

    :cond_3
    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "BTScan thread start"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    sget-boolean v15, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    if-eqz v15, :cond_9

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    int-to-long v0, v14

    move-wide/from16 v18, v0

    add-long v18, v18, v10

    cmp-long v15, v12, v18

    if-lez v15, :cond_5

    move-wide v10, v12

    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "requesting scans"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_6

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v15}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-set0(Ljava/util/List;)Ljava/util/List;

    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "Start BT Scan"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x1

    :try_start_2
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get4()Landroid/bluetooth/le/ScanCallback;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_5
    :goto_2
    :try_start_3
    sget-boolean v15, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v15, :cond_4

    const-wide/16 v18, 0xfa

    :try_start_4
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_1
    move-exception v9

    goto :goto_1

    :cond_6
    :try_start_5
    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "Stop BT Scan"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v2, 0x0

    :try_start_6
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get4()Landroid/bluetooth/le/ScanCallback;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :goto_3
    :try_start_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get0()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/services/telephony/advanced911/laaser/internal/BleInfoData;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v7

    const-string/jumbo v15, "NetInfo"

    invoke-static {v15, v7}, Lcom/android/services/telephony/advanced911/laaser/Log;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    :try_start_8
    invoke-static {v3}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-set1(Ljava/util/List;)Ljava/util/List;

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get3()Z

    move-result v15

    if-eqz v15, :cond_8

    const/16 v14, 0x1388

    const/4 v15, 0x0

    invoke-static {v15}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-set4(Z)Z

    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    :cond_8
    const/16 v14, 0x1388

    goto :goto_2

    :cond_9
    if-eqz v2, :cond_a

    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "Scan exit: Stop BT Scan"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-get4()Landroid/bluetooth/le/ScanCallback;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    :cond_a
    invoke-static {}, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->-wrap0()V

    const/4 v15, 0x0

    sput-boolean v15, Lcom/android/services/telephony/advanced911/laaser/NetInfo;->mBtScanning:Z

    const-string/jumbo v15, "NetInfo"

    const-string/jumbo v18, "BTScan thread END"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcom/android/services/telephony/advanced911/laaser/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v8

    goto/16 :goto_2
.end method
