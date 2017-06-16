.class public Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;
.super Ljava/lang/Object;
.source "ExtendedAtCmdProcess.java"


# static fields
.field public static final AT_CMD_TYPE_ACTION:I = 0x3

.field public static final AT_CMD_TYPE_READ:I = 0x0

.field public static final AT_CMD_TYPE_SET:I = 0x1

.field public static final AT_CMD_TYPE_TEST:I = 0x2

.field public static final AT_CMD_TYPE_UNKNOWN:I = -0x1

.field private static final CPAS_ASLEEP:I = 0x5

.field private static final CPAS_CALL_IN_PROGRESS:I = 0x4

.field private static final CPAS_READY:I = 0x0

.field private static final CPAS_RINGING:I = 0x3

.field private static final CPAS_UNAVAILABLE:I = 0x1

.field private static final CPAS_UNKNOWN:I = 0x2

.field public static final DISABLE_LIMIT_ATCMD:I = 0x0

.field public static final ENABLE_LIMIT_ATCMD:I = 0x1

.field public static final LIMIT_ATCMD:I = 0x5a

.field private static final NETWORK_CONNECTED:I = 0x2

.field private static final NETWORK_DAFAULT:I = -0x1

.field private static final NETWORK_ERROR:I = 0x0

.field private static final NETWORK_NOT_READY:I = 0x1

.field public static final SUPPORTED_BSSF:Ljava/lang/String; = "supported_bssf"

.field public static final SVOICE_PACKAGE:Ljava/lang/String; = "com.vlingo.midas"

.field private static final TAG:Ljava/lang/String; = "ExtendedAtCmdProcess"


# instance fields
.field private isAtBssfEnabled:Z

.field private isAtSsvoiceEnabled:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mMessage:Lcom/samsung/bt/hfp/AtMessage;

.field private mNetworkStatus:I

.field private final mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetServiceHelper;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mNetworkStatus:I

    iput-boolean v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtSsvoiceEnabled:Z

    iput-boolean v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtBssfEnabled:Z

    iput-object p1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/samsung/bt/hfp/AtMessage;

    invoke-direct {v0, p1, p2}, Lcom/samsung/bt/hfp/AtMessage;-><init>(Landroid/content/Context;Lcom/android/bluetooth/hfp/HeadsetServiceHelper;)V

    iput-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    return-void
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private processAtBSSF(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAtBSSF - BSSF, CMD type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    iput-boolean v3, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtBssfEnabled:Z

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtBssfEnabled:Z

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtBssfResponse(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processAtBssfResponse(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string/jumbo v4, "ExtendedAtCmdProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processAtBSSFResponse : RemoteBSSF = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isAtBssfEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtBssfEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtBssfEnabled:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    const-string/jumbo v5, "+BSSF:7"

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v4, v8, v7, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "supported_bssf"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "supported_bssf"

    invoke-static {v4, v5, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.bt.hfp.intent.action.SET_BSSF"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const/16 v4, 0xf0

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxVersionSupported(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/bluetooth/Utils;->getBtEnabledContainers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v6, "android.permission.BLUETOOTH"

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    const/16 v5, 0x5a

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iput-object p2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    and-int/lit8 v4, p1, 0x8

    if-nez v4, :cond_2

    iput v8, v3, Landroid/os/Message;->arg1:I

    :goto_1
    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->sendMessage(Landroid/os/Message;)V

    :cond_1
    return-void

    :cond_2
    iput v7, v3, Landroid/os/Message;->arg1:I

    goto :goto_1
.end method

.method private processAtCGMI(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "ro.product.manufacturer"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+CGMI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private processAtCGMM(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+CGMM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private processAtCGSN(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "ExtendedAtCmdProcess"

    const-string/jumbo v3, "DeviceID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "+CGSN: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "ExtendedAtCmdProcess"

    const-string/jumbo v3, "TelephonyManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private processAtCIMI(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "ExtendedAtCmdProcess"

    const-string/jumbo v3, "SubscriberID is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v2, v5, v4, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "ExtendedAtCmdProcess"

    const-string/jumbo v3, "TelephonyManager is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v2, v5, v5, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private processAtCPAS(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSState()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+CPAS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSCallState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "ExtendedAtCmdProcess"

    const-string/jumbo v2, "CPAS:call state is Incoming"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSNumActiveCall()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getCSNumHeldCall()I

    move-result v2

    add-int/2addr v1, v2

    if-lez v1, :cond_1

    const-string/jumbo v1, "ExtendedAtCmdProcess"

    const-string/jumbo v2, "CPAS:has one more active or held call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "ExtendedAtCmdProcess"

    const-string/jumbo v2, "CPAS:first incoming call"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x4

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    const-string/jumbo v2, "+CPAS: (0, 3, 4)"

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processAtCPIN(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAtCPIN - CPIN, CMD type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    const-string/jumbo v1, "+CPIN: READY"

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private processAtCREG(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v1, "ExtendedAtCmdProcess"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processAtCREG - CREG, CMD type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getPhoneRoam()I

    move-result v1

    if-ne v1, v5, :cond_0

    const/4 v0, 0x5

    :goto_0
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+CREG: 1,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v5, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private processAtCSQ(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->getPhoneSignalStrength()I

    move-result v0

    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v1, v4, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+CSQ: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",99"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    const-string/jumbo v2, "+CSQ: (0-31,99),(99)"

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processAtMessage(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    if-eqz v0, :cond_9

    const-string/jumbo v0, "+CMGF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CMGF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCmgfCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_0
    const-string/jumbo v0, "+CMGL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CMGL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCmglCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_1
    const-string/jumbo v0, "+CMGR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CMGR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCmgrCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_2
    const-string/jumbo v0, "+CMGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CMGS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCmgsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_3
    const-string/jumbo v0, "+CMGD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CMGD"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCmgdCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_4
    const-string/jumbo v0, "+CNMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CNMI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCnmiCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_5
    const-string/jumbo v0, "+CPMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CPMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCpmsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_6
    const-string/jumbo v0, "+CSMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - CSMS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->handleCsmsCommand(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_7
    const-string/jumbo v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {v0}, Lcom/samsung/bt/hfp/AtMessage;->getCmgsReceived()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "processAtMessage - Do processCmgsCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {v0, p1, p3}, Lcom/samsung/bt/hfp/AtMessage;->processCmgsCommand(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_8
    return v4

    :cond_9
    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "AtMessage object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p3}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v4, v4, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    return v4
.end method

.method private processAtSSVOICE(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processAtSSVOICE - SSVOICE, CMD type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string/jumbo v0, "com.vlingo.midas"

    invoke-virtual {p0, v0}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isExistPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v4, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    iput-boolean v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtSsvoiceEnabled:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    iput-boolean v3, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtSsvoiceEnabled:Z

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "com.vlingo.midas"

    invoke-virtual {p0, v0}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isExistPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getNetworkStatus()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processSSVOICEResponse(ILandroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v3, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseCodeNative(II[B)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getNetworkStatus()I
    .locals 7

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v4, "ExtendedAtCmdProcess"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getNetworkStatus : nwInfo is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    return v3

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_2

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_1

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_4

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v4, :cond_3

    const/4 v3, 0x2

    goto :goto_0
.end method

.method public handleAccessPermissionResultForMsg(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/bt/hfp/AtMessage;->processAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "AtMessage object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isExistPackage(Ljava/lang/String;)Z
    .locals 8

    const/4 v2, 0x1

    :try_start_0
    iget-object v5, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/16 v5, 0x2000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v5, "ExtendedAtCmdProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isExistPackage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ExtendedAtCmdProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isExistPackage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v5, "ExtendedAtCmdProcess"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public processAddedUnknownAt(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "+CSQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCSQ(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_0
    const-string/jumbo v0, "+CGMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCGMI(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_1
    const-string/jumbo v0, "+CGMM"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCGMM(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_2
    const-string/jumbo v0, "+CGSN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCGSN(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_3
    const-string/jumbo v0, "+CIMI"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCIMI(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_4
    const-string/jumbo v0, "+CPAS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCPAS(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_5
    const-string/jumbo v0, "+CPIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCPIN(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_6
    const-string/jumbo v0, "+CREG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtCREG(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_7
    const-string/jumbo v0, "+SSVOICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtSSVOICE(ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_8
    const-string/jumbo v0, "+BSSF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtBSSF(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    return v2

    :cond_9
    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->processAtMessage(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "This is SMS at cmd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public processMsgRcvdActionForAtCMD(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/bt/hfp/AtMessage;->processMsgRcvdActionForAtCMD(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "AtMessage object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processMsgSentActionForAtCMD(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/bt/hfp/AtMessage;->processMsgSentActionForAtCMD(Landroid/content/Context;Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "ExtendedAtCmdProcess"

    const-string/jumbo v1, "AtMessage object is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processSSVOICEResponse(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    const-string/jumbo v0, "ExtendedAtCmdProcess"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processSSVOICEResponse : mNetworkStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mNetworkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtSsvoiceEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mNetworkStatus:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mService:Lcom/android/bluetooth/hfp/HeadsetServiceHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "+SSVOICE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetServiceHelper;->atResponseStringNative(Ljava/lang/String;[B)V

    :cond_0
    iput p1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mNetworkStatus:I

    return-void
.end method

.method public resetAtState()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->mMessage:Lcom/samsung/bt/hfp/AtMessage;

    invoke-virtual {v0}, Lcom/samsung/bt/hfp/AtMessage;->resetAtState()V

    return-void
.end method

.method public setAtBssfEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtBssfEnabled:Z

    return-void
.end method

.method public setAtSsvoiceEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/bt/hfp/ExtendedAtCmdProcess;->isAtSsvoiceEnabled:Z

    return-void
.end method
