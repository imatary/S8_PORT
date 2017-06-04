.class final Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;
.super Ljava/lang/Object;
.source "SlinkNetworkManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MyServiceConnection"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/samsunglink/SlinkNetworkManager$SlinkWakeLock$MyServiceConnection;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
