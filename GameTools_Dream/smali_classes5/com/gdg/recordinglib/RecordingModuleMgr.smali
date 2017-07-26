.class public Lcom/gdg/recordinglib/RecordingModuleMgr;
.super Ljava/lang/Object;
.source "RecordingModuleMgr.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RecordingModuleMgr"

.field private static isDebug:Z

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/gdg/recordinglib/RecordingModuleMgr;

.field private static mIsAvailableInAppSound:Z

.field private static mIsRecording:Z

.field private static mLastRecordedTime:J

.field private static mRecordingEndTime:J

.field private static mRecordingStartTime:J

.field private static mRecordingThread:Ljava/lang/Thread;


# instance fields
.field public mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    sput-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    sput-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->isDebug:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mInstance:Lcom/gdg/recordinglib/RecordingModuleMgr;

    sput-wide v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingStartTime:J

    sput-wide v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingEndTime:J

    sput-wide v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mLastRecordedTime:J

    return-void
.end method

.method private constructor <init>(Lcom/gdg/recordinglib/GameRecordingMgr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    iput-object p1, p0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    return p0
.end method

.method public static beginRecording()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    return-void
.end method

.method public static endRecording()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/gdg/recordinglib/RecordingModuleMgr;
    .locals 3

    const-class v1, Lcom/gdg/recordinglib/RecordingModuleMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mInstance:Lcom/gdg/recordinglib/RecordingModuleMgr;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsAvailableInAppSound:Z

    new-instance v0, Lcom/gdg/recordinglib/RecordingModuleMgr;

    new-instance v2, Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-direct {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;-><init>()V

    invoke-direct {v0, v2}, Lcom/gdg/recordinglib/RecordingModuleMgr;-><init>(Lcom/gdg/recordinglib/GameRecordingMgr;)V

    sput-object v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mInstance:Lcom/gdg/recordinglib/RecordingModuleMgr;

    :cond_0
    sget-object v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mInstance:Lcom/gdg/recordinglib/RecordingModuleMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getLastRecordedTime()J
    .locals 2

    sget-wide v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mLastRecordedTime:J

    return-wide v0
.end method

.method public static initialize(Landroid/content/Context;I)I
    .locals 1

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    return v0
.end method

.method public static isRecording()Z
    .locals 1

    sget-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    return v0
.end method

.method public static release()I
    .locals 1

    sget v0, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    return v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V
    .locals 7

    const/4 v6, 0x1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/gdg/recordinglib/GameRecorderUtil;->getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/gdg/recordinglib/GameRecorderUtil;->checkPermission(Landroid/content/Context;)I

    move-result v0

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    if-eq v0, v2, :cond_0

    new-instance v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-direct {v1}, Lcom/gdg/recordinglib/ICallback$GCMetadata;-><init>()V

    iput v0, v1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->errCode:I

    invoke-interface {p3, v1}, Lcom/gdg/recordinglib/ICallback;->executeOnFail(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string/jumbo v2, "RecordingModuleMgr"

    const-string/jumbo v3, "startRecord call"

    invoke-static {v2, v3}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "RecordingModuleMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isRecording? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-object p1, Lcom/gdg/recordinglib/RecordingModuleMgr;->mContext:Landroid/content/Context;

    iget-boolean v2, p2, Lcom/gdg/recordinglib/ICallback$GCMetadata;->verbose:Z

    sput-boolean v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->isDebug:Z

    sget-boolean v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    if-nez v2, :cond_2

    const/4 v2, 0x1

    sput-boolean v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sput-wide v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingStartTime:J

    sget-boolean v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->isDebug:Z

    if-ne v2, v6, :cond_1

    sget-object v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "Start Record"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_1
    iget-object v2, p0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-virtual {v2}, Lcom/gdg/recordinglib/GameRecordingMgr;->isAsyncMode()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/gdg/recordinglib/RecordingModuleMgr$1;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/gdg/recordinglib/RecordingModuleMgr$1;-><init>(Lcom/gdg/recordinglib/RecordingModuleMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingThread:Ljava/lang/Thread;

    :cond_2
    :goto_1
    sget-object v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingThread:Ljava/lang/Thread;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/Thread;->setPriority(I)V

    sget-object v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_3
    :try_start_2
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/gdg/recordinglib/RecordingModuleMgr$2;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/gdg/recordinglib/RecordingModuleMgr$2;-><init>(Lcom/gdg/recordinglib/RecordingModuleMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized stopRecord()Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "RecordingModuleMgr"

    const-string/jumbo v1, "stopRecord Call"

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "RecordingModuleMgr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRecording? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/logger/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    sput-wide v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingEndTime:J

    sget-wide v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingStartTime:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    sget-wide v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingEndTime:J

    sget-wide v2, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingStartTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mLastRecordedTime:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mRecordingStartTime:J

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mIsRecording:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v4

    :cond_2
    :try_start_1
    sget-boolean v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->isDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/gdg/recordinglib/RecordingModuleMgr;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "You need to start record"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
