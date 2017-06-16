.class public Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;
.super Ljava/lang/Object;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "checkAddrForIOP"
.end annotation


# static fields
.field private static final AVOID_ALERTING_CARKIT:Ljava/lang/String; = "avoid_alerting_carkit"

.field public static final AVOID_ALERTING_CARKIT_ID:I = 0x2

.field private static final AVOID_INBANDRINGTONE_HF:Ljava/lang/String; = "avoid_inbandringtone_hf"

.field public static final AVOID_INBANDRINGTONE_HF_ID:I = 0x3

.field public static final AVOID_VR_USING_CAKIT_ID:I = 0x1

.field private static final AVOID_VR_USING_CARKIT:Ljava/lang/String; = "avoid_vr_using_carkit"

.field private static final BMW_CARKIT:Ljava/lang/String; = "bmw_carkit"

.field public static final BMW_CARKIT_ID:I = 0x6

.field private static final DISALLOW_BROWSING_CARKIT:Ljava/lang/String; = "disallow_browsing_carkit"

.field public static final DISALLOW_BROWSING_CARKIT_ID:I = 0x5

.field private static final IGNORE_PLAY_STATUS_FROM_A2DP:Ljava/lang/String; = "ignore_play_status_from_a2dp"

.field public static final IGNORE_PLAY_STATUS_FROM_A2DP_ID:I = 0x7

.field private static final IOP_DEVICE_BLACKLIST:Ljava/lang/String; = "/etc/bluetooth/iop_device_list.conf"

.field private static final SKIP_REJECT_EVENT_CARKIT:Ljava/lang/String; = "skip_reject_event_carkit"

.field public static final SKIP_REJECT_EVENT_CARKIT_ID:I = 0x4


# instance fields
.field private mAvoidAlertingCarkit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvoidInbandRingtoneHF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAvoidVrUsingCarkit:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBMWCarkit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDisallowBrowsingCarkit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSkipRejectEventCarkit:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loading from conf"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    const-string/jumbo v12, "/etc/bluetooth/iop_device_list.conf"

    invoke-direct {v5, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_15

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "//"

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "="

    invoke-virtual {v8, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    array-length v12, v11

    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    const/4 v12, 0x1

    aget-object v12, v11, v12

    const-string/jumbo v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aget-object v12, v11, v12

    const-string/jumbo v13, "avoid_vr_using_carkit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidVrUsingCarkit:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded AVOID_VR_USING_CARKIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v5

    :goto_1
    :try_start_2
    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "iop_device_list File Not found : /etc/bluetooth/iop_device_list.conf"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_1

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/4 v12, 0x0

    :try_start_4
    aget-object v12, v11, v12

    const-string/jumbo v13, "avoid_alerting_carkit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidAlertingCarkit:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded AVOID_ALERTING_CARKIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move-object v4, v5

    :goto_3
    :try_start_5
    const-string/jumbo v12, "BluetoothAdapterService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "IOException: read iop_device_list File "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :try_start_7
    aget-object v12, v11, v12

    const-string/jumbo v13, "avoid_inbandringtone_hf"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidInbandRingtoneHF:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded AVOID_INBANDRINGTONE_HF"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v12

    move-object v4, v5

    :goto_4
    if-eqz v4, :cond_4

    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_5
    throw v12

    :cond_5
    const/4 v12, 0x0

    :try_start_9
    aget-object v12, v11, v12

    const-string/jumbo v13, "skip_reject_event_carkit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded SKIP_REJECT_EVENT_CARKIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mSkipRejectEventCarkit:Ljava/util/HashMap;

    const/4 v9, 0x0

    const/4 v6, 0x0

    :goto_6
    array-length v12, v10

    if-ge v6, v12, :cond_0

    aget-object v12, v10, v6

    const-string/jumbo v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    aget-object v12, v10, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mSkipRejectEventCarkit:Ljava/util/HashMap;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    if-eqz v9, :cond_8

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mSkipRejectEventCarkit:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    aget-object v13, v10, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_8
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: mSkipRejectEventCarkit do not have Carkit name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const-string/jumbo v13, "disallow_browsing_carkit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_d

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_a

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded DISALLOW_BROWSING_CARKIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mDisallowBrowsingCarkit:Ljava/util/HashMap;

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_8
    array-length v12, v10

    if-ge v6, v12, :cond_0

    aget-object v12, v10, v6

    const-string/jumbo v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_b

    aget-object v12, v10, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mDisallowBrowsingCarkit:Ljava/util/HashMap;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_b
    if-eqz v0, :cond_c

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mDisallowBrowsingCarkit:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    aget-object v13, v10, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_c
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: mDisallowBrowsingCarkit have not Carkit name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_d
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const-string/jumbo v13, "bmw_carkit"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_e

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded BMW_CARKIT"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mBMWCarkit:Ljava/util/HashMap;

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_a
    array-length v12, v10

    if-ge v6, v12, :cond_0

    aget-object v12, v10, v6

    const-string/jumbo v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_f

    aget-object v12, v10, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mBMWCarkit:Ljava/util/HashMap;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_f
    if-eqz v0, :cond_10

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mBMWCarkit:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    aget-object v13, v10, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_10
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: mBMWCarkit have not Carkit name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    const/4 v12, 0x0

    aget-object v12, v11, v12

    const-string/jumbo v13, "ignore_play_status_from_a2dp"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_12

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: Loaded IGNORE_PLAY_STATUS_FROM_A2DP"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;

    const/4 v0, 0x0

    const/4 v6, 0x0

    :goto_c
    array-length v12, v10

    if-ge v6, v12, :cond_0

    aget-object v12, v10, v6

    const-string/jumbo v13, "!"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_13

    aget-object v12, v10, v6

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_13
    if-eqz v0, :cond_14

    iget-object v12, p0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    aget-object v13, v10, v6

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_14
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "BluetoothAdapterService"

    const-string/jumbo v13, "checkAddrForIOP: mIgnorePlayStatusFromA2dp have not Carkit name"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    :cond_15
    if-eqz v5, :cond_16

    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    :cond_16
    :goto_e
    move-object v4, v5

    goto/16 :goto_2

    :catch_3
    move-exception v2

    goto :goto_e

    :catch_4
    move-exception v2

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto/16 :goto_5

    :catchall_1
    move-exception v12

    goto/16 :goto_4

    :catch_6
    move-exception v1

    goto/16 :goto_1

    :catch_7
    move-exception v2

    goto/16 :goto_3
.end method


# virtual methods
.method public isBlacklistDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 27

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isBlacklistDevice: check, id : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidVrUsingCarkit:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidVrUsingCarkit:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "blacklistAddress:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_2
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_3
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_4
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mAvoidVrUsingCarkit or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_5
    const/4 v2, 0x2

    move/from16 v0, p2

    if-ne v0, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidAlertingCarkit:Ljava/util/ArrayList;

    if-eqz v2, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidAlertingCarkit:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "blacklistAddress:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_8
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_9
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_a
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mAvoidAlertingCarkit or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_b
    const/4 v2, 0x3

    move/from16 v0, p2

    if-ne v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidInbandRingtoneHF:Ljava/util/ArrayList;

    if-eqz v2, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mAvoidInbandRingtoneHF:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_c
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->-get0()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string/jumbo v2, "BluetoothAdapterService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "blacklistAddress:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_e
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_f
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_10
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mAvoidInbandRingtoneHF or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_11
    const/4 v2, 0x4

    move/from16 v0, p2

    if-ne v0, v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mSkipRejectEventCarkit:Ljava/util/HashMap;

    if-eqz v2, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_16

    if-eqz v5, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mSkipRejectEventCarkit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :cond_12
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mSkipRejectEventCarkit:Ljava/util/HashMap;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_13
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v9, v1

    invoke-virtual/range {v9 .. v14}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_14
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address !BUT! no matched device name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_15
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_16
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address or device name is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_17
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mSkipRejectEventCarkit or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_18
    const/4 v2, 0x5

    move/from16 v0, p2

    if-ne v0, v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mDisallowBrowsingCarkit:Ljava/util/HashMap;

    if-eqz v2, :cond_1e

    if-eqz p1, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_1d

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mDisallowBrowsingCarkit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_19
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    invoke-virtual/range {v13 .. v18}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mDisallowBrowsingCarkit:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_1a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_1a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v1

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1b
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address !BUT! no matched device name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1c
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1d
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address or device name is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1e
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mDisallowBrowsingCarkit or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_1f
    const/4 v2, 0x6

    move/from16 v0, p2

    if-ne v0, v2, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mBMWCarkit:Ljava/util/HashMap;

    if-eqz v2, :cond_25

    if-eqz p1, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_24

    if-eqz v5, :cond_24

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mBMWCarkit:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_20
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    invoke-virtual/range {v13 .. v18}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mBMWCarkit:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_21
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_21

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v1

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_22
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address !BUT! no matched device name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_23
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_24
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address or device name is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_25
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mBMWCarkit or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_26
    const/4 v2, 0x7

    move/from16 v0, p2

    if-ne v0, v2, :cond_2d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;

    if-eqz v2, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_2b

    if-eqz v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v24

    :cond_27
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    move-object v13, v5

    invoke-virtual/range {v13 .. v18}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/bluetooth/btservice/AdapterService$checkAddrForIOP;->mIgnorePlayStatusFromA2dp:Ljava/util/HashMap;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_28
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v22

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v17, v1

    move-object/from16 v20, v4

    invoke-virtual/range {v17 .. v22}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_28

    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_29
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is matched address !BUT! no matched device name"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2a
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched device"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2b
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: address or device name is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2c
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: mIgnorePlayStatusFromA2dp or device is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_2d
    const-string/jumbo v2, "BluetoothAdapterService"

    const-string/jumbo v3, "isBlacklistDevice: There is no matched id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2
.end method
