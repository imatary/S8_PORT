.class public Lcom/gdg/recordinglib/v2/audio/AudioUtil;
.super Ljava/lang/Object;
.source "AudioUtil.java"


# static fields
.field private static final ACTION_BLUETOOTH_HEADSET:Ljava/lang/String; = "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

.field private static final ACTION_HEADSET_PLUG:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static currentMediaVolume:I

.field private static prevMediaVolume:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    sput v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->prevMediaVolume:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gdg/recordinglib/v2/GameRecorder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    return-void
.end method

.method private getCurrentMediaVolume()I
    .locals 4

    iget-object v2, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    return v1
.end method

.method public static setInappRecordCurrentVolume()V
    .locals 2

    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    if-lez v0, :cond_0

    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->setInappRecordVolume(II)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInappRecordCurrentVolume currentMediaVolume :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setInappRecordMaxVolume()V
    .locals 2

    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->setInappRecordVolume(II)V

    return-void
.end method

.method private static setInappRecordVolume(II)V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/samsung/android/media/SemHiddenSoundManager;->getPlaybackRecorderVersion()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p0}, Lcom/samsung/android/media/SemHiddenSoundManager;->setPlaybackRecorderVolume(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/media/SemHiddenSoundManager;->setPlaybackRecorderPackage(I)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPlugged SemHiddenSoundManager.getPlaybackRecorderVersion() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", newVolume :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gdg/recordinglib/logger/SLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "Exception setInappRecordVolume:"

    invoke-static {v2}, Lcom/gdg/recordinglib/logger/SLog;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateInappRecordCurrentVolume(II)V
    .locals 2

    sput p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->prevMediaVolume:I

    sget v1, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->prevMediaVolume:I

    if-gez v0, :cond_2

    :cond_0
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->setInappRecordVolume(II)V

    :cond_1
    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    sput v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->prevMediaVolume:I

    :cond_2
    return-void
.end method


# virtual methods
.method public initialize()V
    .locals 1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    sput v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->prevMediaVolume:I

    sget v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    if-gez v0, :cond_0

    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->getCurrentMediaVolume()I

    move-result v0

    sput v0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->currentMediaVolume:I

    :cond_0
    return-void
.end method

.method public requestNewAudioStatus(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->activePlugInRecording()V

    :goto_1
    invoke-direct {p0}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->getCurrentMediaVolume()I

    move-result v0

    iget-object v1, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v1}, Lcom/gdg/recordinglib/v2/GameRecorder;->getAudioOption()I

    move-result v1

    invoke-static {v0, v1}, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->updateInappRecordCurrentVolume(II)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/gdg/recordinglib/v2/audio/AudioUtil;->mRecorder:Lcom/gdg/recordinglib/v2/GameRecorder;

    invoke-virtual {v0}, Lcom/gdg/recordinglib/v2/GameRecorder;->deactivePlugInRecording()V

    goto :goto_1
.end method
