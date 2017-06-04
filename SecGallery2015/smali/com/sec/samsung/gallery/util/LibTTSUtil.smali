.class public Lcom/sec/samsung/gallery/util/LibTTSUtil;
.super Ljava/lang/Object;
.source "LibTTSUtil.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LibTTSUtil"

.field private static sInstance:Lcom/sec/samsung/gallery/util/LibTTSUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTTS:Landroid/speech/tts/TextToSpeech;

.field private mTextToSpeechEngine:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatDurationForTTS(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    div-int/lit16 v1, p1, 0xe10

    mul-int/lit16 v4, v1, 0xe10

    sub-int v4, p1, v4

    div-int/lit8 v2, v4, 0x3c

    mul-int/lit16 v4, v1, 0xe10

    mul-int/lit8 v5, v2, 0x3c

    add-int/2addr v4, v5

    sub-int v3, p1, v4

    const-string/jumbo v0, ""

    if-lez v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v1, v6, :cond_3

    const v4, 0x7f0a01f8

    :goto_0
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-lez v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v2, v6, :cond_4

    const v4, 0x7f0a025c

    :goto_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-lez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-ne v3, v6, :cond_5

    const v4, 0x7f0a039d

    :goto_2
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    const v4, 0x7f0a01f9

    goto :goto_0

    :cond_4
    const v4, 0x7f0a025d

    goto :goto_1

    :cond_5
    const v4, 0x7f0a03a1

    goto :goto_2
.end method

.method private getBaseString(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getAttributesString(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%s, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0445

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0465

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getBaseString(Lcom/sec/android/gallery3d/data/MediaSet;I)Ljava/lang/String;
    .locals 7

    const v6, 0x7f0a0445

    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%s, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0a040c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v3, Lcom/sec/samsung/gallery/features/FeatureNames;->UseSecretBox:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v3}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;

    invoke-direct {v1}, Lcom/sec/samsung/gallery/lib/factory/PrivateModeFactory;-><init>()V

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Lcom/sec/samsung/gallery/lib/factory/LibFactory;->create(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;

    invoke-static {}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3}, Lcom/sec/samsung/gallery/lib/libinterface/PrivateModeInterface;->isPrivateStorageMounted(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getPathOnFileSystem()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/SecretBoxUtils;->isSecretBoxPath(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0465

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "%s, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v5, 0x7f0a040d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getButtonString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v5, 0x7f0a0405

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-string/jumbo v3, "it"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getFormatedString(Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v2, -0x1

    instance-of v4, p1, Lcom/sec/android/gallery3d/data/MediaSet;

    if-eqz v4, :cond_0

    move-object v3, p1

    check-cast v3, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getSetCount(Lcom/sec/android/gallery3d/data/MediaSet;)I

    move-result v2

    invoke-direct {p0, v3}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getSetName(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaSet;

    invoke-direct {p0, p1, v2}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getBaseString(Lcom/sec/android/gallery3d/data/MediaSet;I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v0

    :cond_0
    move-object v4, p1

    check-cast v4, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, v4}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getItemName(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v1

    check-cast p1, Lcom/sec/android/gallery3d/data/MediaItem;

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getBaseString(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getInstance()Lcom/sec/samsung/gallery/util/LibTTSUtil;
    .locals 1

    sget-object v0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->sInstance:Lcom/sec/samsung/gallery/util/LibTTSUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/samsung/gallery/util/LibTTSUtil;

    invoke-direct {v0}, Lcom/sec/samsung/gallery/util/LibTTSUtil;-><init>()V

    sput-object v0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->sInstance:Lcom/sec/samsung/gallery/util/LibTTSUtil;

    :cond_0
    sget-object v0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->sInstance:Lcom/sec/samsung/gallery/util/LibTTSUtil;

    return-object v0
.end method

.method private getItemName(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v0, "LibTTSUtil"

    const-string/jumbo v1, "MediaItem is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDateInMs()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/sec/android/gallery3d/util/GalleryUtils;->getLongDateFormatByFormatSetting(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getSetCount(Lcom/sec/android/gallery3d/data/MediaSet;)I
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "LibTTSUtil"

    const-string/jumbo v1, "MediaSet is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v0

    goto :goto_0
.end method

.method private getSetName(Lcom/sec/android/gallery3d/data/MediaSet;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string/jumbo v0, "LibTTSUtil"

    const-string/jumbo v1, "MediaSet is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 15

    const/4 v12, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v12

    :cond_1
    const/16 v1, 0x3a

    const-string/jumbo v0, "com.google.android.marvin.talkback"

    const-string/jumbo v4, "com.samsung.android.app.talkback"

    const-string/jumbo v2, "com.samsung.android.app.screenreader"

    const-string/jumbo v6, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    const-string/jumbo v5, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    const-string/jumbo v3, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "enabled_accessibility_services"

    invoke-static {v13, v14}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_2

    const-string/jumbo v10, ""

    :cond_2
    move-object v7, v11

    invoke-virtual {v7, v10}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-virtual {v7}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_3

    const-string/jumbo v13, "com.google.android.marvin.talkback"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_4
    const-string/jumbo v13, "com.samsung.android.app.talkback"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    :cond_5
    const-string/jumbo v13, "com.samsung.android.app.screenreader"

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "com.samsung.android.app.screenreader/com.samsung.android.app.screenreader.ScreenReaderService"

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method getAttributesString(Lcom/sec/android/gallery3d/data/MediaItem;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getMediaType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a04bc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->getDuration()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    div-int/lit16 v4, v1, 0x3e8

    invoke-static {v3, v4}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->formatDurationForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const-wide/16 v2, 0x4

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a031c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x8

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Lcom/sec/android/gallery3d/data/MediaItem;->is3DPanorama()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a043a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x10

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0403

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x20

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a004e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x200

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->UseContinuousShotMode:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00ba

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_6
    const-wide/16 v2, 0x400

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a04d8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    const-wide/32 v2, 0x20000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a041d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    const-wide/32 v2, 0x100000

    invoke-virtual {p1, v2, v3}, Lcom/sec/android/gallery3d/data/MediaItem;->hasAttribute(J)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a04d7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0332

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTextToSpeechEngine:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public isInitContext()Z
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iput-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTextToSpeechEngine:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    :cond_1
    sput-object v1, Lcom/sec/samsung/gallery/util/LibTTSUtil;->sInstance:Lcom/sec/samsung/gallery/util/LibTTSUtil;

    return-void
.end method

.method public onInit(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo v0, "LibTTSUtil"

    const-string/jumbo v1, "Warning, TTS not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v0}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTextToSpeechEngine:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTextToSpeechEngine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    new-instance v0, Landroid/speech/tts/TextToSpeech;

    iget-object v1, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTextToSpeechEngine:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public speak(Lcom/sec/android/gallery3d/data/MediaObject;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->getFormatedString(Lcom/sec/android/gallery3d/data/MediaObject;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/samsung/gallery/util/LibTTSUtil;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 6

    sget-object v2, Lcom/sec/samsung/gallery/features/FeatureNames;->IsTalkBackEnabled:Lcom/sec/samsung/gallery/features/FeatureNames;

    invoke-static {v2}, Lcom/sec/samsung/gallery/features/GalleryFeature;->isEnabled(Lcom/sec/samsung/gallery/features/FeatureNames;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    if-nez v2, :cond_2

    new-instance v2, Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTTS:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mTextToSpeechEngine:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x20

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_3
    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->cancel()V

    iget-object v2, p0, Lcom/sec/samsung/gallery/util/LibTTSUtil;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0
.end method
