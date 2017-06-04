.class public Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;
.super Ljava/lang/Object;
.source "RecordingControllerAudioManager.java"


# instance fields
.field private bVolumeZero:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->init()V

    return-void
.end method

.method private showEarphoneVolumeToastWithGameAudio(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_AUDIO_IF_VOLUME_MUTED:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private showEarphoneVolumeToastWithMicrophone(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_AUDIO_IF_VOLUME_MUTED:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private showSpeakerVolumeToastWithGameAudio(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_AUDIO_IF_VOLUME_MUTED:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method

.method private showSpeakerVolumeToastWithMicrophone(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    sget v0, Lcom/samsung/android/game/gametools/floatingui/R$string;->MIDS_GH_TPOP_UNABLE_TO_RECORD_AUDIO_IF_VOLUME_MUTED:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->bVolumeZero:Z

    return-void
.end method

.method public showVolumeToast(I)V
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/AudioUtil;->isHeadsetOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/utility/AudioUtil;->isBluetoothHeadsetOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isPlugged ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/game/gamecast/common/logger/TLog;->e(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/game/gamecast/common/model/SettingData;->getAudioSource(Landroid/content/Context;)I

    move-result v2

    if-ne v2, v1, :cond_1

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->showEarphoneVolumeToastWithMicrophone(Landroid/content/Context;I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/game/gametools/floatingui/recordingcontroller/RecordingControllerAudioManager;->showSpeakerVolumeToastWithMicrophone(Landroid/content/Context;I)V

    goto :goto_1
.end method
