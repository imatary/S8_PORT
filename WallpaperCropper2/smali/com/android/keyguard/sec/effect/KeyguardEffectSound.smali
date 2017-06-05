.class public Lcom/android/keyguard/sec/effect/KeyguardEffectSound;
.super Ljava/lang/Object;
.source "Unknown"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCntForLog:I

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "KeyguardEffectSound"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "KeyguardEffectSound"

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public isPlayPossible()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    :try_start_0
    const-string/jumbo v2, "lockscreen_sounds_enabled"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getMasterStreamType()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    iget v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    rem-int/lit8 v3, v3, 0xa

    if-eqz v3, :cond_6

    :goto_1
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    move v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_2

    :goto_2
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isPlayPossible() - Current user\'s lockscreen sounds option is disabled!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    rem-int/lit8 v0, v0, 0xa

    if-eqz v0, :cond_4

    :goto_3
    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "isPlayPossible() - mAudioManager is null!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    goto :goto_3

    :cond_5
    if-lez v0, :cond_0

    return v4

    :cond_6
    iget-object v3, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isPlayPossible() - Muted!!!, isStreamMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ", volume = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectSound;->mCntForLog:I

    goto :goto_1
.end method
