.class public Lcom/gdg/recordinglib/v2/exception/StorageException;
.super Lcom/gdg/recordinglib/v2/exception/RecordingException;
.source "StorageException.java"


# static fields
.field public static final SIZE_KB:J = 0x400L

.field public static final SIZE_LIMIT:J = 0xfa000000L

.field public static final SIZE_LIMIT_GB:I = 0x4

.field public static final SIZE_MB:J = 0x100000L


# direct methods
.method public constructor <init>(Lcom/gdg/recordinglib/GameRecordingMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/gdg/recordinglib/v2/exception/RecordingException;-><init>(Lcom/gdg/recordinglib/GameRecordingMgr;Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    return-void
.end method


# virtual methods
.method protected runningMethod()Z
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget-object v6, v6, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstDirectoryPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/gdg/recordinglib/GameRecorderUtil;->getAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v2

    sget-object v6, Lcom/gdg/recordinglib/v2/exception/StorageException;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "free space check : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    long-to-float v6, v2

    iget-object v7, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v7, v7, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dutyFreeSpace:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    sget-object v6, Lcom/gdg/recordinglib/v2/exception/StorageException;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "free space check < dutyFreeSpace : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    invoke-virtual {v6, v7, v5}, Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord(IZ)V

    :goto_0
    return v4

    :cond_0
    iget-object v6, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget-object v6, v6, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-static {v6}, Lcom/gdg/recordinglib/GameRecorderUtil;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    sget-object v6, Lcom/gdg/recordinglib/v2/exception/StorageException;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file size check : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v6, 0xfa000000L

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    sget-object v6, Lcom/gdg/recordinglib/v2/exception/StorageException;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "file size exceed SIZE_LIMIT : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    invoke-virtual {v6, v7, v5}, Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord(IZ)V

    goto :goto_0

    :cond_1
    move v4, v5

    goto :goto_0
.end method
