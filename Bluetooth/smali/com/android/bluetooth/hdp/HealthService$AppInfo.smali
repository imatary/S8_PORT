.class Lcom/android/bluetooth/hdp/HealthService$AppInfo;
.super Ljava/lang/Object;
.source "HealthService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hdp/HealthService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppInfo"
.end annotation


# instance fields
.field private mAppId:I

.field private mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

.field private mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)I
    .locals 1

    iget v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Landroid/bluetooth/IBluetoothHealthCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;I)I
    .locals 0

    iput p1, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/bluetooth/hdp/HealthService$AppInfo;Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;)Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->cleanup()V

    return-void
.end method

.method private constructor <init>(Landroid/bluetooth/IBluetoothHealthCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mAppId:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/bluetooth/IBluetoothHealthCallback;Lcom/android/bluetooth/hdp/HealthService$AppInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hdp/HealthService$AppInfo;-><init>(Landroid/bluetooth/IBluetoothHealthCallback;)V

    return-void
.end method

.method private cleanup()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothHealthCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    invoke-virtual {v2}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->cleanup()V

    iput-object v5, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    :cond_0
    iput-object v5, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mCallback:Landroid/bluetooth/IBluetoothHealthCallback;

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "HealthService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No death recipient registered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    invoke-virtual {v2}, Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;->cleanup()V

    iput-object v5, p0, Lcom/android/bluetooth/hdp/HealthService$AppInfo;->mRcpObj:Lcom/android/bluetooth/hdp/HealthService$BluetoothHealthDeathRecipient;

    goto :goto_1
.end method
