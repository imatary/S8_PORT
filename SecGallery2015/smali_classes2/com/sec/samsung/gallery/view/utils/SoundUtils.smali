.class public Lcom/sec/samsung/gallery/view/utils/SoundUtils;
.super Ljava/lang/Object;
.source "SoundUtils.java"


# static fields
.field private static final MAX_SOUND_POOL:I = 0xa

.field private static final MIN_SOUND_VOLUME:F = 1.0f

.field private static final PLAY_SCROLL:I = 0x4

.field public static final PLAY_SPREAD:I = 0x1

.field public static final PLAY_TOGETHER:I = 0x2

.field public static final PLAY_UP:I = 0x3

.field private static final SOUND_URIS:Ljava/lang/String; = "/media/audio/ui/HoverPointer.ogg"

.field private static final TAG:Ljava/lang/String; = "SoundUtils"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;

.field private final mSoundPoolId:[I

.field private mSoundRate:F

.field private final mSoundResId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    const/16 v0, 0xa

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPoolId:[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundResId:[I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundRate:F

    iput-object p1, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mAudioManager:Landroid/media/AudioManager;

    return-void

    :array_0
    .array-data 4
        0x7f090003
        0x7f090004
        0x7f090004
        0x7f090004
        0x7f090005
    .end array-data
.end method


# virtual methods
.method public playScrollSound()V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->soundSet()V

    :cond_2
    new-instance v8, Lcom/sec/samsung/gallery/lib/factory/SoundPoolFactory;

    invoke-direct {v8}, Lcom/sec/samsung/gallery/lib/factory/SoundPoolFactory;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    invoke-interface {v8, v0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/lib/libinterface/SoundPoolInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-interface {v9, v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/SoundPoolInterface;->setStreamType(Landroid/media/SoundPool;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPoolId:[I

    const/4 v3, 0x4

    aget v1, v1, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundRate:F

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "SoundUtils"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public playSoundResource(I)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->TOUCH_TONE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/sec/samsung/gallery/lib/factory/AudioManagerWrapper;->IMPLICIT:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sound_effects_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->soundSet()V

    :cond_1
    new-instance v8, Lcom/sec/samsung/gallery/lib/factory/SoundPoolFactory;

    invoke-direct {v8}, Lcom/sec/samsung/gallery/lib/factory/SoundPoolFactory;-><init>()V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    invoke-interface {v8, v0}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/samsung/gallery/lib/libinterface/SoundPoolInterface;

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    invoke-interface {v9, v0, v1}, Lcom/sec/samsung/gallery/lib/libinterface/SoundPoolInterface;->setStreamType(Landroid/media/SoundPool;I)V

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPoolId:[I

    aget v1, v1, p1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    const-string/jumbo v0, "SoundUtils"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public releaseSoundSet()V
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method public setSoundRate(F)V
    .locals 0

    iput p1, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundRate:F

    return-void
.end method

.method public soundSet()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->releaseSoundSet()V

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v3, Landroid/media/SoundPool$Builder;

    invoke-direct {v3}, Landroid/media/SoundPool$Builder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundResId:[I

    array-length v4, v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundResId:[I

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPoolId:[I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundResId:[I

    aget v6, v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v4

    aput v4, v3, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/media/audio/ui/HoverPointer.ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPoolId:[I

    iget-object v4, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundResId:[I

    array-length v4, v4

    iget-object v5, p0, Lcom/sec/samsung/gallery/view/utils/SoundUtils;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v5, v2, v7}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    aput v5, v3, v4

    :cond_2
    return-void
.end method
