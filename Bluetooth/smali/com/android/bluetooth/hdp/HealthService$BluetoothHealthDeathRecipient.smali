.class Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
.super Ljava/lang/Object;
.source "HealthService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHealthDeathRecipient"
.end annotation


# instance fields
.field private mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

.field private mService:Lcom/android/bluetooth/hdp/HealthService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/hdp/HealthService;Landroid/bluetooth/BluetoothHealthAppConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mService:Lcom/android/bluetooth/hdp/HealthService;

    iput-object p2, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string/jumbo v0, "HealthService"

    const-string/jumbo v1, "Binder is dead."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mService:Lcom/android/bluetooth/hdp/HealthService;

    iget-object v1, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hdp/HealthService;->unregisterAppConfiguration(Landroid/bluetooth/BluetoothHealthAppConfiguration;)Z

    return-void
.end method

.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mService:Lcom/android/bluetooth/hdp/HealthService;

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->mConfig:Landroid/bluetooth/BluetoothHealthAppConfiguration;

    return-void
.end method
