.class public Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;
.super Ljava/lang/Object;
.source "CameraBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RCL/2.0.53/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver$1;-><init>(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mProvider:Lcom/samsung/android/sdk/rclcamera/impl/se/RclCameraFragmentImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected registerReceivers()V
    .locals 3

    sget-object v1, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v2, "registerReceivers"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected unregisterReceivers()V
    .locals 2

    sget-object v0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->TAG:Ljava/lang/String;

    const-string v1, "unregisterReceivers"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/sdk/rclcamera/impl/se/CameraBroadcastReceiver;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
