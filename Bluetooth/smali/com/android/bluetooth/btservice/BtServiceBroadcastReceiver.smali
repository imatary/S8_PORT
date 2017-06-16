.class public Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BtServiceBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;
    }
.end annotation


# static fields
.field private static final IT_POLICY_MSG_EXTRA:Ljava/lang/String; = "ToastMsg"

.field public static final TAG:Ljava/lang/String; = "BtServiceBroadcastReceiver"


# instance fields
.field private mA2dpService:Landroid/bluetooth/BluetoothA2dp;

.field public mA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static synthetic -set0(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->enableDualPlayMode()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    new-instance v0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver$1;-><init>(Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method

.method private enableDualPlayMode()V
    .locals 4

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothA2dp;->setDualPlayMode(Z)Z

    move-result v0

    const-string/jumbo v1, "BtServiceBroadcastReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enableDualPlayMode :: a2dpService setDualPlayMode, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpService:Landroid/bluetooth/BluetoothA2dp;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v1, "BtServiceBroadcastReceiver"

    const-string/jumbo v2, "bluetooth adapter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "BtServiceBroadcastReceiver"

    const-string/jumbo v2, "A2dpService is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onReceive :: action : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "com.samsung.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string/jumbo v5, "ATT"

    invoke-static {}, Lcom/android/bluetooth/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "bluetooth_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "Factory Reset processed unsuccessfully"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "getAction() : null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "BluetoothAdatper is null, Can\'t process factory reset about bluetooth"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "Does not support Soft Reset"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string/jumbo v5, "com.samsung.intent.action.SETTINGS_SOFT_NETWORK_RESET"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    const-string/jumbo v6, "CscFeature_Setting_EnableFactoryResetPasswordWhenNoSIM"

    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "bluetooth_on"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->factoryReset()Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "Factory Reset processed unsuccessfully"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "BluetoothAdatper is null, Can\'t process factory reset about bluetooth"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "Does not support Soft Network Reset"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string/jumbo v5, "com.samsung.server.BT_IT_POLICY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "ToastMsg"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_8
    const-string/jumbo v5, "com.samsung.bluetooth.a2dp.intent.action.DUAL_PLAY_NOTI_SELECTED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "com.samsung.bluetooth.a2dp.intent.extra.DUAL_PLAY_NOTI_SELECT_TYPE"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bluetooth Dual Play notification action selected, type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "notification"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v8}, Landroid/app/NotificationManager;->cancel(I)V

    if-ne v3, v8, :cond_0

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v6, p0, Lcom/android/bluetooth/btservice/BtServiceBroadcastReceiver;->mA2dpServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v5, p1, v6, v10}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "Failed to get a2dp prorile proxy"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v5, "BtServiceBroadcastReceiver"

    const-string/jumbo v6, "bluetooth adapter is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
