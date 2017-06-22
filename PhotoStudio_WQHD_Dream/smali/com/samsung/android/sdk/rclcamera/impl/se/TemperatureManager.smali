.class public Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;
.super Ljava/lang/Object;
.source "TemperatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;
    }
.end annotation


# static fields
.field private static final SIOP_SYS_PROP:Ljava/lang/String; = "sys.siop.curlevel"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.56/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->handleSIOPLevelChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private addIntentFilter()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.samsung.intent.action.SIOP_LEVEL_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private handleSIOPLevelChanged(Landroid/content/Intent;)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "camera_start_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v4, "flash_led_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "camera_recording_disable"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v4}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerStopCamera()V

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;

    invoke-interface {v4, v1, v2}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;->onTemperatureManagerChanged(ZZ)V

    goto :goto_0
.end method

.method private removeIntentFilter()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public isOverHeatedBySIOP()Z
    .locals 5

    const/4 v1, 0x0

    const-string v2, "sys.siop.curlevel"

    invoke-static {v2, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v2, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverHeatedBySIOP: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public registerTemperatureManagerListener(Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->addIntentFilter()V

    return-void
.end method

.method public unregisterTemperatureManagerListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->removeIntentFilter()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager;->mTemperatureManagerListener:Lcom/samsung/android/sdk/rclcamera/impl/se/TemperatureManager$TemperatureManagerListener;

    :cond_0
    return-void
.end method
