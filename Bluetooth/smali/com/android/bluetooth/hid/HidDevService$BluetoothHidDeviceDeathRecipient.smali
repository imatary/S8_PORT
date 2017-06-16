.class Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;
.super Ljava/lang/Object;
.source "HidDevService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDevService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidDeviceDeathRecipient"
.end annotation


# instance fields
.field private mAppConfig:Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

.field private mService:Lcom/android/bluetooth/hid/HidDevService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hid/HidDevService;Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDevService;

    iput-object p2, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mAppConfig:Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/hid/HidDevService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Binder died, need to unregister app :("

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDevService;

    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mAppConfig:Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDevService;->unregisterApp(Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;)Z

    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mService:Lcom/android/bluetooth/hid/HidDevService;

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDevService$BluetoothHidDeviceDeathRecipient;->mAppConfig:Landroid/bluetooth/SemBluetoothHidDeviceAppConfiguration;

    return-void
.end method
