.class public Lcom/samsung/bt/data/BluetoothCoreManager;
.super Ljava/lang/Object;
.source "BluetoothCoreManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/data/BluetoothCoreManager$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static final HW_KEY_APP_ID:Ljava/lang/String; = "com.android.bluetooth"

.field public static final HW_KEY_COMP_ID:Ljava/lang/String; = "Bluetooth"

.field public static final HW_KEY_COMP_MANUFACTURE:Ljava/lang/String; = "sec"

.field public static final HW_KEY_COMP_VER:Ljava/lang/String; = "0.0"

.field public static final HW_KEY_TYPE:I = 0x0

.field private static final JSON_VER:Ljava/lang/String; = "1.02"

.field static final LINK_LOSS_INFO:I = 0x1

.field static final MESSAGE_INSERT_CORE_INFO_LOG:I = 0x65

.field private static final TAG:Ljava/lang/String; = "BluetoothCoreManager"

.field public static firmwareVersion:Ljava/lang/String;


# instance fields
.field adapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mHandler:Landroid/os/Handler;

.field private mSemHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    new-instance v0, Lcom/samsung/bt/data/BluetoothCoreManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/bt/data/BluetoothCoreManager$1;-><init>(Lcom/samsung/bt/data/BluetoothCoreManager;)V

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mHandler:Landroid/os/Handler;

    const-string/jumbo v0, "BluetoothCoreManager -- BluetoothCoreManager()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V

    const-string/jumbo v0, "unknown"

    sput-object v0, Lcom/samsung/bt/data/BluetoothCoreManager;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method private handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "BluetoothCoreManager"

    const-string/jumbo v1, "BluetoothDataManager :: handleSendBroadcastToHWParam :: adapterService is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    iput-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "BluetoothCoreManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleSendBroadcastToHWParam(), feat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", hitType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mSemHqmManager:Landroid/os/SemHqmManager;

    const-string/jumbo v2, "Bluetooth"

    const-string/jumbo v5, "0.0"

    const-string/jumbo v6, "sec"

    const-string/jumbo v7, ""

    const-string/jumbo v9, ""

    const-string/jumbo v10, "com.android.bluetooth"

    const/4 v1, 0x0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQMwithAppId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-boolean v0, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "BluetoothCoreManager"

    const-string/jumbo v1, "handleSendBroadcastToHWParam() mSemHqmManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method insertCoreLog(I[B)V
    .locals 13

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v9, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v9, :cond_1

    sget-boolean v9, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    if-eqz v9, :cond_0

    const-string/jumbo v9, "BluetoothCoreManager"

    const-string/jumbo v10, "BluetoothCoreManager :: insertLog :: adapterService is NULL!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v9, "persist.bluetooth_fw_ver"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/samsung/bt/data/BluetoothCoreManager;->firmwareVersion:Ljava/lang/String;

    if-nez p2, :cond_3

    sget-boolean v9, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    if-eqz v9, :cond_2

    const-string/jumbo v9, "BluetoothCoreManager"

    const-string/jumbo v10, "insertCoreLog :: link loss data is NULL!!!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    const/4 v9, 0x0

    aget-byte v4, p2, v9

    const/4 v9, 0x1

    aget-byte v8, p2, v9

    const/4 v9, 0x2

    aget-byte v6, p2, v9

    const-string/jumbo v9, "%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x"

    const/16 v10, 0xa

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x3

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const/4 v11, 0x4

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v10, v12

    const/4 v11, 0x5

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    const/4 v11, 0x6

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x3

    aput-object v11, v10, v12

    const/4 v11, 0x7

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x4

    aput-object v11, v10, v12

    const/16 v11, 0x8

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x5

    aput-object v11, v10, v12

    const/16 v11, 0x9

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x6

    aput-object v11, v10, v12

    const/16 v11, 0xa

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v10, v12

    const/16 v11, 0xb

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/16 v12, 0x8

    aput-object v11, v10, v12

    const/16 v11, 0xc

    aget-byte v11, p2, v11

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    const/16 v12, 0x9

    aput-object v11, v10, v12

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v9, "app_id"

    const-string/jumbo v10, "com.android.bluetooth"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "feature"

    const-string/jumbo v10, "LLDI"

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "\"LI_VER\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "1.02\","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\"LI_FWV\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/samsung/bt/data/BluetoothCoreManager;->firmwareVersion:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v9, "LLDI"

    const-string/jumbo v10, "ph"

    invoke-direct {p0, v9, v10, v5}, Lcom/samsung/bt/data/BluetoothCoreManager;->handleSendBroadcastToHWParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "{"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "}"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-boolean v9, Lcom/samsung/bt/data/BluetoothCoreManager;->DBG:Z

    if-eqz v9, :cond_4

    const-string/jumbo v9, "BluetoothCoreManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "insertCoreLog() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-string/jumbo v9, "extra"

    invoke-virtual {v2, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v9, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v9, "data"

    invoke-virtual {v0, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v9, "com.samsung.android.providers.context"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v9, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->adapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v9}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v9, "\"LI_RES\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\"LI_TXP\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\"LI_RSS\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "\"LI_CHM\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :catch_0
    move-exception v3

    const-string/jumbo v9, "BluetoothCoreManager"

    const-string/jumbo v10, "Failed to send intent to ContextFramework"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public notifyLinkLossReason([B)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/bt/data/BluetoothCoreManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
