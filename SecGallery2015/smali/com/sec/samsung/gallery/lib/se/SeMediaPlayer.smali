.class public Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;
.super Ljava/lang/Object;
.source "SeMediaPlayer.java"

# interfaces
.implements Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface;


# static fields
.field public static final KEY_PARAMETER_EXCLUDE_AUDIO_TRACK:I = 0x88bc

.field public static final KEY_PARAMETER_WFD_TCP_DISABLE:I = 0x9c4

.field private static final TAG:Ljava/lang/String; = "SeMediaPlayer"


# instance fields
.field private mMediaResourceHelperListener:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

.field private final mOnResourceListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

.field private mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mMediaResourceHelperListener:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    new-instance v0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer$1;-><init>(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)V

    iput-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mOnResourceListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;)Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mMediaResourceHelperListener:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    return-object v0
.end method


# virtual methods
.method public SetParameter(Landroid/media/MediaPlayer;II)V
    .locals 0

    invoke-virtual {p1, p2, p3}, Landroid/media/MediaPlayer;->semSetParameter(II)Z

    return-void
.end method

.method public checkMediaResourceUsed()Z
    .locals 5

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->getMediaResourceInfo(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SeMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "NullPointerException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "SeMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IllegalStateException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public newInstanceMediaResourceHelper()Z
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-nez v2, :cond_0

    const/4 v2, 0x2

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v2, v3}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v2, :cond_1

    :goto_1
    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SeMediaPlayer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "UnsatisfiedLinkError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public registerListener()V
    .locals 3

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mOnResourceListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mOnResourceListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v1}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->createInstance(IZ)Lcom/samsung/android/media/SemMediaResourceHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mOnResourceListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    iget-object v2, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mOnResourceListener:Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/media/SemMediaResourceHelper;->setResourceInfoChangedListener(Lcom/samsung/android/media/SemMediaResourceHelper$ResourceInfoChangedListener;)V

    goto :goto_0
.end method

.method public releaseMediaResourceHelper()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaResourceHelper;->release()V

    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mSemMediaResourceHelper:Lcom/samsung/android/media/SemMediaResourceHelper;

    :cond_0
    iput-object v1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mMediaResourceHelperListener:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    return-void
.end method

.method public setMediaResourceHelperListener(Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/samsung/gallery/lib/se/SeMediaPlayer;->mMediaResourceHelperListener:Lcom/sec/samsung/gallery/lib/libinterface/MediaPlayerInterface$MediaResourceHelperListener;

    return-void
.end method
