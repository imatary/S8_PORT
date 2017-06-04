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

.method static getFileSize(Ljava/lang/String;)J
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const/4 v0, 0x0

    return-wide v2
.end method


# virtual methods
.method protected runningMethod()Z
    .locals 9

    const/4 v8, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget-object v5, v5, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-static {v5}, Lcom/gdg/recordinglib/GameRecorderUtil;->getAvailableSpaceMB(Ljava/lang/String;)J

    move-result-wide v2

    long-to-float v5, v2

    iget-object v6, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget v6, v6, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dutyFreeSpace:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    sget-boolean v5, Lcom/gdg/recordinglib/v2/exception/StorageException;->DEBUG:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/gdg/recordinglib/v2/exception/StorageException;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " enought space "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mMetaData:Lcom/gdg/recordinglib/ICallback$GCMetadata;

    iget-object v5, v5, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    invoke-static {v5}, Lcom/gdg/recordinglib/v2/exception/StorageException;->getFileSize(Ljava/lang/String;)J

    move-result-wide v0

    const-wide v6, 0xfa000000L

    cmp-long v5, v0, v6

    if-lez v5, :cond_1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    sget v6, Lcom/gdg/recordinglib/GameRecorderError;->STORAGE_LIMIT_REACHED:I

    invoke-virtual {v5, v6, v8}, Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord(IZ)V

    :cond_1
    return v4

    :cond_2
    sget-boolean v5, Lcom/gdg/recordinglib/v2/exception/StorageException;->DEBUG:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mContext:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/gdg/recordinglib/v2/exception/StorageException;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " not enought space "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    :cond_3
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/gdg/recordinglib/v2/exception/StorageException;->mGameRecordingMgr:Lcom/gdg/recordinglib/GameRecordingMgr;

    sget v6, Lcom/gdg/recordinglib/GameRecorderError;->NOT_ENOUGHT_STORAGE:I

    invoke-virtual {v5, v6, v8}, Lcom/gdg/recordinglib/GameRecordingMgr;->_stopRecord(IZ)V

    goto :goto_0
.end method
