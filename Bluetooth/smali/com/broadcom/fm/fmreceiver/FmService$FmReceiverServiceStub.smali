.class final Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;
.super Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/fm/fmreceiver/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FmReceiverServiceStub"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FmService"


# instance fields
.field private mSvc:Lcom/broadcom/fm/fmreceiver/FmService;


# direct methods
.method public constructor <init>(Lcom/broadcom/fm/fmreceiver/FmService;)V
    .locals 3

    invoke-direct {p0}, Lcom/broadcom/fm/fmreceiver/IFmReceiverService$Stub;-><init>()V

    iput-object p1, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    invoke-virtual {p0}, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->startNativeHandler()V

    const-string/jumbo v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FmReceiverServiceStub created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public declared-synchronized cleanUp()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->stop()V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->finish()V

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanupFmService()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->cleanupFmService()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized estimateNoiseFloorLevel(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->estimateNoiseFloorLevel(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentRssi()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x2

    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getCurrentRssi()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentSNR()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x2

    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getCurrentSNR()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getIsMute()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getIsMute()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMonoStereoMode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getMonoStereoMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRadioIsOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getRadioIsOn()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStatus()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getStatus()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTunedFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->getTunedFrequency()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized muteAudio(Z)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->muteAudio(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized offFMService()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->offFMService()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->registerCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekRdsStation(IIII)J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x2

    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->seekRdsStation(IIII)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public seekStation(II)J
    .locals 2

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x2

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->seekStation(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public declared-synchronized seekStationAbort()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->seekStationAbort()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekStationCombo(IIIIIZII)J
    .locals 9

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, 0x2

    monitor-exit p0

    return-wide v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->seekStationCombo(IIIIIZII)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setAudioMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setAudioPath(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setCOS(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setCOS(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDeemPhasis(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setDeemPhasis(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMIntenna(Z)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setFMIntenna(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFMVolume(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setFMVolume(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFrequencyOffsetThreshold(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setFrequencyOffsetThreshold(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLiveAudioPolling(ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setLiveAudioPolling(ZI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNoisePowerThreshold(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setNoisePowerThreshold(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPiEccMode(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "FmService"

    const-string/jumbo v1, "setPiEccMode()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setPiEccMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPilotPowerThreshold(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setPilotPowerThreshold(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRdsMode(IIII)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRdsMode(IIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setRfMute(Z)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setRfMute(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSnrThreshold(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setSnrThreshold(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStepSize(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setStepSize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setWorldRegion(I)I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->setWorldRegion(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startNativeHandler()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized tuneRadio(I)I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "FmService"

    const-string/jumbo v1, "tuneRadio() mSvc is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->tuneRadio(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOffRadio(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->turnOffRadio(Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized turnOnRadio(I[C)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    const-string/jumbo v0, "FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOnRadio() mSvc:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1, p2}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->turnOnRadio(I[C)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/fm/fmreceiver/FmService$FmReceiverServiceStub;->mSvc:Lcom/broadcom/fm/fmreceiver/FmService;

    iget-object v0, v0, Lcom/broadcom/fm/fmreceiver/FmService;->mSvcHandler:Lcom/broadcom/fm/fmreceiver/FmNativehandler;

    invoke-virtual {v0, p1}, Lcom/broadcom/fm/fmreceiver/FmNativehandler;->unregisterCallback(Lcom/broadcom/fm/fmreceiver/IFmReceiverCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
