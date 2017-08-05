.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;
    }
.end annotation


# instance fields
.field private mHashDeviceInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method static synthetic -wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getObjectAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method

.method private getFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getCurCodec()I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getPeerCodecs()I

    move-result v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getScmst()I

    move-result v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getTimeOut()I

    move-result v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getDelayDisconnectedBroadcast()I

    move-result v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getConnectionState()I

    move-result v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getDelayReprot()I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getObjectAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    const-string/jumbo v1, "-2"

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "getDeviceFeature : there is not the key"

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getObjectAdd add : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v3

    return-object v1

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->getAddress()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private setFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;II)V
    .locals 3

    packed-switch p2, :pswitch_data_0

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "default setFeatureCase feature : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " Ivalue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setCurCodec(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setPeerCodecs(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setScmst(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setTimeOut(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setDelayDisconnectedBroadcast(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setConnectionState(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setDelayReprot(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v1, "mHashDeviceInfo.clear()"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getDeviceFeature(Ljava/lang/String;I)I
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    monitor-exit v3

    return v2

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v4, "getDeviceFeature : there is not the key"

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getDeviceFeature add : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const/4 v2, -0x1

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public isContainKey(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDeviceFeature(Ljava/lang/String;II)V
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceFeature add : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;)V

    invoke-direct {p0, v1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;II)V

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;->setAddress(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;I)I

    move-result v2

    if-eq v2, p3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDeviceFeature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " feature : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0, v0, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;II)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public setDeviceFeatureIfcontainsKey(Ljava/lang/String;II)V
    .locals 5

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;

    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->getFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;I)I

    move-result v1

    if-eq v1, p3, :cond_1

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDeviceFeatureIfcontainsKey : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->setFeatureCase(Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo$DeviceInformation;II)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public size()I
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$DeviceInfo;->mHashDeviceInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
