.class Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "GattService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/GattService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field mAppIf:I

.field final synthetic this$0:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    return-void
.end method

.method private isScanClient(I)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/GattService;->-get6(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_0

    return v3

    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-static {v2}, Lcom/android/bluetooth/gatt/GattService;->-get6(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, v0, Lcom/android/bluetooth/gatt/ScanClient;->clientIf:I

    if-ne v2, p1, :cond_2

    return v3

    :cond_3
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    const/4 v5, 0x1

    const-string/jumbo v2, "BtGatt.GattService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Binder is dead - unregistering client ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    iget v3, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-static {v2, v3}, Lcom/android/bluetooth/gatt/GattService;->-wrap20(Lcom/android/bluetooth/gatt/GattService;I)V

    iget v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->isScanClient(I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    iget v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(IZ)V

    iput-boolean v5, v1, Lcom/android/bluetooth/gatt/ScanClient;->appDied:Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService;->stopScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseClient;

    iget v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->mAppIf:I

    invoke-direct {v0, v2}, Lcom/android/bluetooth/gatt/AdvertiseClient;-><init>(I)V

    iput-boolean v5, v0, Lcom/android/bluetooth/gatt/AdvertiseClient;->appDied:Z

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;->this$0:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/gatt/GattService;->stopMultiAdvertising(Lcom/android/bluetooth/gatt/AdvertiseClient;)V

    goto :goto_0
.end method
