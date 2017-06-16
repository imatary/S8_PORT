.class Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;
.super Landroid/bluetooth/ISemBluetoothHidDevice$Stub;
.source "HidDevService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/hid/HidDevService;)V
    .locals 0

    invoke-direct {p0}, Landroid/bluetooth/ISemBluetoothHidDevice$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidDevService;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "HidDevice call not allowed for non-active user"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDevService;->-wrap1(Lcom/android/bluetooth/hid/HidDevService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDevService;

    const/4 v0, 0x1

    return v0
.end method

.method public connect()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->connect()Z

    move-result v1

    return v1
.end method

.method public connect_to(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    if-nez p1, :cond_1

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "connect_to(), device is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->connect_to(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->disconnect()Z

    move-result v1

    return v1
.end method

.method public isPreoccupied()Z
    .locals 3

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isPreoccupied()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->isPreoccupied()Z

    move-result v1

    return v1
.end method

.method public registerApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/ISemBluetoothHidDeviceCallback;)Z
    .locals 6

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "registerApp(), service is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/hid/HidDevService;->registerApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;Landroid/bluetooth/SemBluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/SemBluetoothHidDeviceAppQosSettings;Landroid/bluetooth/ISemBluetoothHidDeviceCallback;)Z

    move-result v1

    return v1
.end method

.method public replyReport(BB[B)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDevService;->replyReport(BB[B)Z

    move-result v1

    return v1
.end method

.method public reportError(B)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->reportError(B)Z

    move-result v1

    return v1
.end method

.method public sendReport(I[B)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDevService;->sendReport(I[B)Z

    move-result v1

    return v1
.end method

.method public unplug()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDevService;->unplug()Z

    move-result v1

    return v1
.end method

.method public unregisterApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Z
    .locals 2

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDevService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDevService;->unregisterApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Z

    move-result v1

    return v1
.end method
