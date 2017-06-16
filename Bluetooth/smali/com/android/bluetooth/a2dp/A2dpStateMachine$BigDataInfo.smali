.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;
.super Ljava/lang/Object;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BigDataInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;
    }
.end annotation


# instance fields
.field private mHashBigData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 1

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    return-void
.end method


# virtual methods
.method public checkPlayingTime(Ljava/lang/String;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->checkPlayingTime(I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public checkServiceTime(Ljava/lang/String;I)V
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->checkServiceTime(I)V

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public clear()V
    .locals 2

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const-string/jumbo v1, "mHashBigData.clear()"

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

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

.method public getServiceStartTime(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v4

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->getServiceStartTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :cond_0
    monitor-exit v4

    return-wide v2

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

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

.method public sendBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->sendBigData(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public setBigData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBigData add : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;)V

    invoke-static {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->-wrap1(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->-wrap0(Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->ParsingStackData(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "A2DPSM-setBigData value = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/bluetooth/BluetoothDump;->BtLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;

    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-get0()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBigData : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->-wrap14(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo$BigData;->ParsingStackData(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$BigDataInfo;->mHashBigData:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
