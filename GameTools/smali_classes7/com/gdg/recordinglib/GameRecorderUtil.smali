.class public Lcom/gdg/recordinglib/GameRecorderUtil;
.super Ljava/lang/Object;
.source "GameRecorderUtil.java"


# static fields
.field public static final SIZE_GB:J = 0x40000000L

.field public static final SIZE_KB:J = 0x400L

.field public static final SIZE_MB:J = 0x100000L

.field private static TAG:Ljava/lang/String;

.field private static mInstance:Lcom/gdg/recordinglib/GameRecorderUtil;


# instance fields
.field private audio_format:I

.field private channel_config:I

.field private mFileName:Ljava/lang/String;

.field private sample_rate:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "GameRecorderUtil"

    sput-object v0, Lcom/gdg/recordinglib/GameRecorderUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xac44

    iput v0, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->sample_rate:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->channel_config:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->audio_format:I

    return-void
.end method

.method public static getAvailableBytes(Landroid/os/StatFs;)J
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const-wide/16 v4, 0x0

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-ge v6, v7, :cond_0

    invoke-virtual {p0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long v4, v2, v0

    :goto_0
    return-wide v4

    :cond_0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v4

    goto :goto_0
.end method

.method public static getAvailableSpaceGB(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/gdg/recordinglib/GameRecorderUtil;->getAvailableSpacePath(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x40000000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAvailableSpaceMB(Ljava/lang/String;)J
    .locals 4

    invoke-static {p0}, Lcom/gdg/recordinglib/GameRecorderUtil;->getAvailableSpacePath(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static getAvailableSpacePath(Ljava/lang/String;)J
    .locals 3

    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gdg/recordinglib/GameRecorderUtil;->getAvailableBytes(Landroid/os/StatFs;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/gdg/recordinglib/GameRecorderUtil;
    .locals 1

    sget-object v0, Lcom/gdg/recordinglib/GameRecorderUtil;->mInstance:Lcom/gdg/recordinglib/GameRecorderUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/gdg/recordinglib/GameRecorderUtil;

    invoke-direct {v0}, Lcom/gdg/recordinglib/GameRecorderUtil;-><init>()V

    sput-object v0, Lcom/gdg/recordinglib/GameRecorderUtil;->mInstance:Lcom/gdg/recordinglib/GameRecorderUtil;

    :cond_0
    sget-object v0, Lcom/gdg/recordinglib/GameRecorderUtil;->mInstance:Lcom/gdg/recordinglib/GameRecorderUtil;

    return-object v0
.end method

.method public static isRecordActive(Landroid/content/Context;I)Z
    .locals 2

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->semIsRecordActive(I)Z

    move-result v1

    return v1
.end method


# virtual methods
.method public checkCameraAvailable()I
    .locals 9

    sget v6, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    const/4 v3, -0x1

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v5

    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_1

    invoke-static {v4, v1}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v7, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    move v3, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_NOT_SUPPORTED:I

    :goto_1
    return v7

    :cond_2
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_3
    :goto_2
    move v7, v6

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    sget v6, Lcom/gdg/recordinglib/GameRecorderError;->CAMERA_INVALID_OPERATION:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    goto :goto_2

    :catchall_0
    move-exception v7

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    :cond_4
    throw v7
.end method

.method public checkMicAvailable(Landroid/content/Context;)I
    .locals 9

    const/4 v1, 0x1

    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    iget v2, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->sample_rate:I

    iget v3, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->channel_config:I

    iget v4, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->audio_format:I

    invoke-static {v2, v3, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    new-instance v0, Landroid/media/AudioRecord;

    iget v2, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->sample_rate:I

    iget v3, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->channel_config:I

    iget v4, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->audio_format:I

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    :try_start_0
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v8

    if-eq v8, v1, :cond_1

    const-string/jumbo v1, "checkMicAvailable : state not STATE_INITIALIZED"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "checkMicAvailable : done - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    return v7

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-static {p1, v1}, Lcom/gdg/recordinglib/GameRecorderUtil;->isRecordActive(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "checkMicAvailable : isRecordActive TRUE"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "checkMicAvailable : isRecordActive FALSE"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_2
    sget v7, Lcom/gdg/recordinglib/GameRecorderError;->MIC_INVALID_OPERATION:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_3
    throw v1
.end method

.method public checkParentDirectoryExist(Ljava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    sget-object v2, Lcom/gdg/recordinglib/GameRecorderUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "create directory to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public checkPermission(Landroid/content/Context;)I
    .locals 3

    const/4 v0, -0x1

    const-string/jumbo v2, "android.permission.ACCESS_SURFACE_FLINGER"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_SURFACE_FLINGER:I

    :goto_0
    return v2

    :cond_0
    const-string/jumbo v2, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_1

    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->PERMISSION_RECORD_AUDIO:I

    goto :goto_0

    :cond_1
    sget v2, Lcom/gdg/recordinglib/GameRecorderError;->NO_ERROR:I

    goto :goto_0
.end method

.method public getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public isSystemAudioSupported(I)Z
    .locals 12

    const v3, 0xbb80

    const/16 v2, 0xc

    const/4 v1, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v8, 0x1

    invoke-static {v3, v2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Landroid/media/AudioRecord;

    const v2, 0xbb80

    const/16 v3, 0xc

    const/4 v4, 0x2

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v9

    if-eq v9, v11, :cond_1

    const-string/jumbo v1, "isSystemAudioSupported : state not STATE_INITIALIZED"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    move v1, v10

    :goto_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_2
    const-string/jumbo v1, "isSystemAudioSupported : done - true"

    invoke-static {v1}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    move v1, v11

    goto :goto_0

    :catch_0
    move-exception v6

    move-object v0, v7

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_3
    move v1, v10

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v0, v7

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_4
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public setFileNameGen()V
    .locals 4

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyyMMdd_HHmmss"

    sget-object v3, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/gdg/recordinglib/GameRecorderUtil;->mFileName:Ljava/lang/String;

    return-void
.end method
