.class Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;
.super Ljava/lang/Object;
.source "ConnectivityPolicy.java"

# interfaces
.implements Lcom/sec/android/gallery3d/eventshare/receiver/ConnectivityReceiver$OnStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ConnectivityPolicy"


# instance fields
.field private final mConnectivityDetectorListenr:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;

.field private final mContext:Landroid/content/Context;

.field private final mPolicyTable:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousIsWifiOnly:Z

.field private mPreviousNetworkState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mConnectivityDetectorListenr:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;

    invoke-static {p1}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->isOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-static {p1}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPolicyTable:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->setPolicy()V

    return-void
.end method

.method private getPolicy(ZI)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;-><init>(Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$1;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->reset()V

    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    if-ne v1, v2, :cond_3

    if-ne p2, v2, :cond_1

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ne p2, v4, :cond_2

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v2, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    if-ne v1, v4, :cond_6

    if-ne p2, v2, :cond_4

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_4
    if-ne p2, v4, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v3, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    if-nez v1, :cond_0

    if-ne p2, v2, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v3, v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v2, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_8

    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v3, v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0

    :cond_8
    iget-boolean v1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-virtual {v0, v1, v3, v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    invoke-virtual {v1, p1, v3, v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    goto :goto_0
.end method

.method private processPolicy(ZI)V
    .locals 6

    const-string/jumbo v3, "ConnectivityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " Previous ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Wifi Only - ON"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;->NETWORK_TYPE_NAM:[Ljava/lang/String;

    iget v5, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "-> Current("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_2

    const-string/jumbo v2, "Wifi Only - ON"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityUtil;->NETWORK_TYPE_NAM:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mConnectivityDetectorListenr:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->getPolicy(ZI)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPolicyTable:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->getKey()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3

    const-string/jumbo v2, "ConnectivityPolicy"

    const-string/jumbo v3, " No operation"

    invoke-static {v2, v3}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string/jumbo v2, "Wifi Only - OFF"

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "Wifi Only - OFF"

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mConnectivityDetectorListenr:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;->onWait()V

    goto :goto_2

    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mConnectivityDetectorListenr:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;->onWakeUp()V

    goto :goto_2

    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mConnectivityDetectorListenr:Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;

    invoke-interface {v2}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityDetectorListener;->onFail()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setPolicy()V
    .locals 10

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v3, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;-><init>(Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$1;)V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0f003e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v4, v2

    div-int/lit8 v4, v4, 0x7

    if-ge v1, v4, :cond_6

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->reset()V

    mul-int/lit8 v0, v1, 0x7

    aget v4, v2, v0

    if-nez v4, :cond_0

    move v4, v5

    :goto_1
    add-int/lit8 v7, v0, 0x1

    aget v7, v2, v7

    if-nez v7, :cond_1

    move v7, v5

    :goto_2
    add-int/lit8 v8, v0, 0x2

    aget v8, v2, v8

    if-nez v8, :cond_2

    move v8, v5

    :goto_3
    invoke-virtual {v3, v4, v7, v8}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setPreviousState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v9

    add-int/lit8 v4, v0, 0x3

    aget v4, v2, v4

    if-nez v4, :cond_3

    move v4, v5

    :goto_4
    add-int/lit8 v7, v0, 0x4

    aget v7, v2, v7

    if-nez v7, :cond_4

    move v7, v5

    :goto_5
    add-int/lit8 v8, v0, 0x5

    aget v8, v2, v8

    if-nez v8, :cond_5

    move v8, v5

    :goto_6
    invoke-virtual {v9, v4, v7, v8}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setCurrentState(ZZZ)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    move-result-object v4

    add-int/lit8 v7, v0, 0x6

    aget v7, v2, v7

    invoke-virtual {v4, v7}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->setOperation(I)Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPolicyTable:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->getKey()I

    move-result v7

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy$Policy;->getValue()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v4, v6

    goto :goto_1

    :cond_1
    move v7, v6

    goto :goto_2

    :cond_2
    move v8, v6

    goto :goto_3

    :cond_3
    move v4, v6

    goto :goto_4

    :cond_4
    move v7, v6

    goto :goto_5

    :cond_5
    move v8, v6

    goto :goto_6

    :cond_6
    return-void
.end method


# virtual methods
.method public onChangeNetwork(I)V
    .locals 1

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    if-eq v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    invoke-direct {p0, v0, p1}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->processPolicy(ZI)V

    iput p1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    :cond_0
    return-void
.end method

.method public onChangeWifiOnly(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    if-eq v0, p1, :cond_0

    iget v0, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousNetworkState:I

    invoke-direct {p0, p1, v0}, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->processPolicy(ZI)V

    iput-boolean p1, p0, Lcom/sec/android/gallery3d/eventshare/event/ConnectivityPolicy;->mPreviousIsWifiOnly:Z

    :cond_0
    return-void
.end method
