.class public Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;
.super Ljava/lang/Object;
.source "VendorSpecificCommandRouter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter$1;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MESSAGE_BROADCAST_TYPE:I = 0x20

.field private static final MESSAGE_ROUTE_DATA:I = 0x0

.field private static final TAG:Ljava/lang/String; = "VendorSpecificCommandRouter"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/bt/hfp/IMessageListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->DBG:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;)Ljava/util/Hashtable;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->getListenerTable()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter$1;

    invoke-direct {v0, p0}, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter$1;-><init>(Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;)V

    iput-object v0, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    return-void
.end method

.method private getListenerTable()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/bt/hfp/IMessageListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    return-object v0
.end method


# virtual methods
.method public doBroadcasetRemoteTypeChanged(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "VendorSpecificCommandRouter"

    const-string/jumbo v3, "Listener is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    iget-object v2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;

    invoke-direct {v1, p2, v4, p1}, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandVO;-><init>(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    return v2
.end method

.method public doRouteData(ILjava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    return v5

    :cond_0
    iget-object v2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/bt/hfp/IMessageListener;

    if-nez v0, :cond_1

    const-string/jumbo v2, "VendorSpecificCommandRouter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no Listener for appID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    iget-object v2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x1

    return v2
.end method

.method public declared-synchronized registerMessageListener(ILcom/samsung/bt/hfp/IMessageListener;)Z
    .locals 3

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    iget-object v1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_3
    iget-object v1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->containsValue(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_4

    :cond_4
    monitor-exit p0

    return v2

    :cond_5
    :try_start_2
    iget-object v1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized unRegisterMessageListener(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/bt/hfp/vsc/VendorSpecificCommandRouter;->mListenerTable:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
