.class public Lcom/sec/android/app/ve/export/ExportInterface;
.super Ljava/lang/Object;
.source "ExportInterface.java"

# interfaces
.implements Lcom/sec/android/app/ve/PlayerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;,
        Lcom/sec/android/app/ve/export/ExportInterface$BackEndHandler;
    }
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private isCompleted:Z

.field public mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

.field private mBackendHandler:Landroid/os/Handler;

.field private volatile mCurrentState:I

.field private mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

.field private mLastPausedTime:I

.field private mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

.field private wakelock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    iput-boolean v5, p0, Lcom/sec/android/app/ve/export/ExportInterface;->isCompleted:Z

    iput v5, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I

    new-instance v1, Lcom/sec/android/app/ve/export/ExportInterface$BackEndHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/ve/export/ExportInterface$BackEndHandler;-><init>(Lcom/sec/android/app/ve/export/ExportInterface;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mBackendHandler:Landroid/os/Handler;

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/export/Export;->getTranscodeElement()Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/export/Export;->getFileName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->fileName:Ljava/lang/String;

    sget-object v1, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v1}, Lcom/sec/android/app/ve/export/Export;->getExportParameters()Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportInterface;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/app/video/editor/external/ExportResolution;->values()[Lcom/samsung/app/video/editor/external/ExportResolution;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getResolutionEnumValue()I

    move-result v4

    aget-object v3, v3, v4

    sget-object v4, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v4}, Lcom/sec/android/app/ve/export/Export;->isExportAfterAutoEdit()Z

    move-result v4

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;-><init>(Ljava/lang/String;Lcom/samsung/app/video/editor/external/ExportResolution;ZZ)V

    iput-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportInterface;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->outputFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/export/Export;->isExportAfterAutoEdit()Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->isAfterAutoEdit:Z

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->gExport:Lcom/sec/android/app/ve/export/Export;

    invoke-virtual {v2}, Lcom/sec/android/app/ve/export/Export;->getExportMode()I

    move-result v2

    iput v2, v1, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportMode:I

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getResolutionEnumValue()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->EXPORT_RESOLUTIONS:[[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "EXPORT_INTERFACE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<<<<<< Wrong Export resolution selected: setting to default resolution: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->EXPORT_RESOLUTIONS:[[I

    aget-object v3, v3, v5

    aget v3, v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->EXPORT_RESOLUTIONS:[[I

    aget-object v3, v3, v5

    aget v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->EXPORT_RESOLUTIONS:[[I

    aget-object v2, v2, v0

    aget v2, v2, v5

    iput v2, v1, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportWidth:I

    iget-object v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    sget-object v2, Lcom/samsung/app/video/editor/vesdk/VEAPPConstants;->EXPORT_RESOLUTIONS:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    iput v2, v1, Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;->exportHeight:I

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/ve/export/ExportInterface;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/ve/export/ExportInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->handleExportPlayEventCompletion()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/ve/export/ExportInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->handleExportResumeEventCompletion()V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/ve/export/ExportInterface;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/ve/export/ExportInterface;->handleExportStopEventCompletion(Z)V

    return-void
.end method

.method static synthetic access$402(Lcom/sec/android/app/ve/export/ExportInterface;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->isCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/ve/export/ExportInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->handleExportCompletedEvent()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/ve/export/ExportInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->handleExportError()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/ve/export/ExportInterface;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->handleExportPauseEventCompletion()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "power"

    invoke-static {v0}, Lcom/sec/android/app/ve/VEApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string/jumbo v2, "Video Editor - New Export Interface"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    const-string/jumbo v1, "ExportInterface.Acquiring WakeLock"

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1
    return-void
.end method

.method private handleExportCompletedEvent()V
    .locals 3

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleExportCompletedEvent ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->isCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->releaseWakeLock()V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;->onExportCompleted()V

    :cond_0
    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleExportCompletedEvent ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleExportError()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->releaseWakeLock()V

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;->onError()V

    :cond_0
    return-void
.end method

.method private handleExportPauseEventCompletion()V
    .locals 3

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleExportPauseEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;->onExportPaused()V

    :cond_0
    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleExportPauseEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleExportPlayEventCompletion()V
    .locals 3

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handlePlayEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;->onExportStarted()V

    :cond_0
    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handlePlayEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleExportResumeEventCompletion()V
    .locals 3

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleExportResumeEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;->onExportResumed()V

    :cond_0
    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleExportResumeEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleExportStopEventCompletion(Z)V
    .locals 3

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleStopEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isCompleted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->isCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;->onExportStopped()V

    :cond_0
    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ExportInterface.handleStopEventCompletion ==> CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    invoke-static {v2}, Lcom/sec/android/app/ve/export/ExportInterface;->mapExportStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static mapExportStateToString(I)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "EXPORT_STATE_IDLE"

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    const-string/jumbo v0, "EXPORT_STATE_ERROR"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "EXPORT_STATE_IDLE"

    goto :goto_0

    :pswitch_3
    const-string/jumbo v0, "EXPORT_STATE_INIT"

    goto :goto_0

    :pswitch_4
    const-string/jumbo v0, "EXPORT_STATE_PLAYING"

    goto :goto_0

    :pswitch_5
    const-string/jumbo v0, "EXPORT_STATE_PAUSED"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private releaseWakeLock()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method


# virtual methods
.method public getExportProgress()I
    .locals 6

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v4

    int-to-long v2, v4

    iget v4, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I

    if-eqz v4, :cond_1

    :cond_0
    iget v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I

    :goto_0
    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    long-to-float v5, v2

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1

    :cond_1
    sget-object v4, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v4}, Lcom/samsung/app/video/editor/external/VideoEditor;->getCurrentPlayPosition()I

    move-result v0

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    const/4 v4, 0x2

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    if-ne v2, v4, :cond_0

    const-string/jumbo v2, "EXPORT_PLAYER_STATE"

    const-string/jumbo v3, "ExportInterface._pause"

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->releaseWakeLock()V

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    if-ne v4, v2, :cond_0

    :try_start_0
    const-string/jumbo v2, "EXPORT_PLAYER_STATE"

    const-string/jumbo v3, "calling native ExportInterface.pause"

    invoke-static {v2, v3}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/external/VideoEditor;->pause(Z)I

    move-result v1

    if-ltz v1, :cond_0

    iput v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public play(J)V
    .locals 6

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->wakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportInterface;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ".tmp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->acquireWakeLock()V

    iget-object v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    invoke-virtual {v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->getFullMovieDuration()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;->setFullMovieDuration(I)Z

    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I

    sget-object v2, Lcom/sec/android/app/ve/VEApp;->sVESDKWrapper:Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;

    iget-object v3, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mTranscodeElementWrapper:Lcom/samsung/app/video/editor/vesdk/TranscodeElementWrapper;

    iget-object v4, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mExpParams:Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;

    iget-object v5, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mBackendHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/app/video/editor/vesdk/VESDKWrapper;->startExport(Lcom/samsung/app/video/editor/external/TranscodeElement;Lcom/samsung/app/video/editor/external/TranscodeElement$ExportParameters;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public resume(J)V
    .locals 3

    iget v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->acquireWakeLock()V

    const-string/jumbo v0, "EXPORT_PLAYER_STATE"

    const-string/jumbo v1, "*****************going to call resume: "

    invoke-static {v0, v1}, Lcom/sec/android/app/ve/common/LogUtils;->criticalLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    const/4 v1, 0x1

    iget v2, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/app/video/editor/external/VideoEditor;->resume(ZI)Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I

    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mAdapter:Lcom/sec/android/app/ve/export/ExportInterface$ExportStatusAdapter;

    return-void
.end method

.method public stop()V
    .locals 3

    iget v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mCurrentState:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/ve/export/ExportInterface;->releaseWakeLock()V

    :try_start_0
    sget-object v1, Lcom/sec/android/app/ve/VEApp;->VESDKInstance:Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/VideoEditor;->stop()Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/ve/export/ExportInterface;->mLastPausedTime:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
