.class Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDownloadableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->registerScreenLockChangeReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;


# direct methods
.method constructor <init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Screen unlcoked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-static {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get2(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$1;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-virtual {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->initDdbByUserUnlock()V

    :cond_1
    return-void
.end method
