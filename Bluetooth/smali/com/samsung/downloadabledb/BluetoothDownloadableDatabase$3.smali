.class Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$3;
.super Landroid/os/FileObserver;
.source "BluetoothDownloadableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->writePolicyItemsToFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;


# direct methods
.method constructor <init>(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$3;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "close write received BLE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-get1()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase$3;->this$0:Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;

    invoke-static {v0}, Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;->-wrap0(Lcom/samsung/downloadabledb/BluetoothDownloadableDatabase;)V

    :cond_0
    return-void
.end method
