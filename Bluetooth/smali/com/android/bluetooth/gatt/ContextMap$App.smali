.class Lcom/android/bluetooth/gatt/ContextMap$App;
.super Ljava/lang/Thread;
.source "ContextMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/gatt/ContextMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "App"
.end annotation


# static fields
.field static final MESSAGE_LE_CLIENT_SCAN_RESULT:I = 0x1

.field static final MESSAGE_LE_FOUNDORLOST:I = 0x3

.field static final MESSAGE_LE_SERVER_SCAN_RESULT:I = 0x2


# instance fields
.field appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

.field callback:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private congestionQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/bluetooth/gatt/CallbackInfo;",
            ">;"
        }
    .end annotation
.end field

.field id:I

.field isCongested:Ljava/lang/Boolean;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public mHandler:Landroid/os/Handler;

.field name:Ljava/lang/String;

.field private result:Landroid/bluetooth/le/ScanResult;

.field public volatile running:Z

.field final synthetic this$0:Lcom/android/bluetooth/gatt/ContextMap;

.field uuid:Ljava/util/UUID;


# direct methods
.method static synthetic -get0(Lcom/android/bluetooth/gatt/ContextMap$App;)Landroid/bluetooth/le/ScanResult;
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->result:Landroid/bluetooth/le/ScanResult;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/bluetooth/gatt/ContextMap$App;Landroid/bluetooth/le/ScanResult;)Landroid/bluetooth/le/ScanResult;
    .locals 0

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->result:Landroid/bluetooth/le/ScanResult;

    return-object p1
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/ContextMap;Ljava/util/UUID;Ljava/lang/Object;Ljava/lang/String;Lcom/android/bluetooth/gatt/AppScanStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "TT;",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/gatt/AppScanStats;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->this$0:Lcom/android/bluetooth/gatt/ContextMap;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->congestionQueue:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->running:Z

    iput-object p2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    iput-object p3, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    iput-object p4, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    return-void
.end method


# virtual methods
.method linkToDeath(Landroid/os/IBinder$DeathRecipient;)V
    .locals 5

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to link deathRecipient for app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->congestionQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->congestionQueue:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/CallbackInfo;

    return-object v0
.end method

.method queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->congestionQueue:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->running:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/bluetooth/gatt/ContextMap$App$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ContextMap$App$1;-><init>(Lcom/android/bluetooth/gatt/ContextMap$App;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mHandler:Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method sendClientScanResult(Landroid/bluetooth/le/ScanResult;)V
    .locals 4

    const-string/jumbo v1, "BtGatt.ContextMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendClientScanResult for app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothGattCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BtGatt.ContextMap"

    const-string/jumbo v2, "Unable to send client scan result "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    .locals 4

    const-string/jumbo v1, "BtGatt.ContextMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendFoundOrLost for app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is onFoundr : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BtGatt.ContextMap"

    const-string/jumbo v2, "Unable to send FoundOrLost "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendServerScanResult(Ljava/lang/String;I[B)V
    .locals 4

    const-string/jumbo v1, "BtGatt.ContextMap"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendServerScanResult for app id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothGattServerCallback;->onScanResult(Ljava/lang/String;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "BtGatt.ContextMap"

    const-string/jumbo v2, "Unable to send server scan result "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method unlinkToDeath()V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v2, Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v2, "BtGatt.ContextMap"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to unlink deathRecipient for app id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
