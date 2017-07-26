.class public Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;
.super Ljava/lang/Object;
.source "RecordingModuleMgrWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->replaceContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    return-object v0
.end method

.method private createGCMetadata(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gdg/recordinglib/ICallback$GCMetadata;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;

    invoke-direct {v0}, Lcom/gdg/recordinglib/ICallback$GCMetadata;-><init>()V

    iput-object p3, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstFileName:Ljava/lang/String;

    iput-object p4, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dstDirectoryPath:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->showDeviceInfo:Z

    iput-boolean v2, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->waterMark:Z

    const/16 v1, 0x95e

    iput v1, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->timeLimit:I

    iput v2, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->keyframeInterval:I

    iput-boolean v3, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->verbose:Z

    iput-boolean v2, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recScreen:Z

    sget v1, Lcom/gdg/recordinglib/GameRecorderDefine;->FRAME_RATE:I

    iput v1, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->displayFrameRate:I

    const/high16 v1, 0x43480000    # 200.0f

    iput v1, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->dutyFreeSpace:F

    iput-object p5, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->pkgName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recordingTime:J

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->setRecordingAudioOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;I)V

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->setRecordingResolutionOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;I)V

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->setRecordingBitrateOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->setColorCompatibilityOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;
    .locals 1

    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->instance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->instance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    :goto_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->instance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->instance:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->replaceContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private getRotate()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method private replaceContext(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method private setColorCompatibilityOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isYVUEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->forceYVU:Z

    :cond_0
    return-void
.end method

.method private setRecordingAudioOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "micOption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput-boolean v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recMic:Z

    goto :goto_0

    :pswitch_1
    iput-boolean v3, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recMic:Z

    goto :goto_0

    :pswitch_2
    iput-boolean v2, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recMic:Z

    iput-boolean v3, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->recSystemAudio:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setRecordingBitrateOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->isBitrateAuto(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getAutoBitrate(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->bitrate:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrate(Landroid/content/Context;)I

    move-result v0

    iput v0, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->bitrate:I

    goto :goto_0
.end method

.method private setRecordingResolutionOption(Lcom/gdg/recordinglib/ICallback$GCMetadata;I)V
    .locals 9

    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "x"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v4, v0, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "rotation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v4, 0xb4

    if-ne p2, v4, :cond_1

    :cond_0
    const-string/jumbo v4, "%dx%d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->screenSize:Ljava/lang/String;

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "screenSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string/jumbo v4, "%dx%d"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/gdg/recordinglib/ICallback$GCMetadata;->screenSize:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public startRecord(Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;)V
    .locals 9

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameRecordingSavedFileAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameRecordingSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->getRotate()I

    move-result v1

    iput-object p4, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mListener:Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$AsyncListener;

    move-object v0, p0

    move v2, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->createGCMetadata(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gdg/recordinglib/ICallback$GCMetadata;

    move-result-object v8

    :try_start_0
    new-instance v6, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper$1;-><init>(Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;)V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getDCIMPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->makeDirectory(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getRecordingRootAbsPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->makeDirectory(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->getGameRecordingSavedDirectoryAbsPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->makeDirectory(Ljava/lang/String;)V

    invoke-static {p2, p1}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->writeDirectoryMetadataOnSavedPath(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/sec/game/gamecast/common/utility/GameToolsFileInfoHelper;->writeIconOnSavedPath(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->getInstance()Lcom/gdg/recordinglib/RecordingModuleMgr;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingModuleMgrWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v8, v6}, Lcom/gdg/recordinglib/RecordingModuleMgr;->startRecord(Landroid/content/Context;Lcom/gdg/recordinglib/ICallback$GCMetadata;Lcom/gdg/recordinglib/ICallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v7

    invoke-static {v7}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    invoke-static {}, Lcom/gdg/recordinglib/RecordingModuleMgr;->getInstance()Lcom/gdg/recordinglib/RecordingModuleMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gdg/recordinglib/RecordingModuleMgr;->stopRecord()Z

    return-void
.end method
