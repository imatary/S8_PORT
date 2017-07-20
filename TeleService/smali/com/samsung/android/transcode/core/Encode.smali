.class public abstract Lcom/samsung/android/transcode/core/Encode;
.super Ljava/lang/Object;
.source "Encode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/transcode/core/Encode$ContentType;,
        Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;,
        Lcom/samsung/android/transcode/core/Encode$Logo;
    }
.end annotation


# instance fields
.field protected m2ndTimeEncoding:Z

.field protected mAudioTrackIndex:I

.field protected mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

.field protected mFramesSkipInterval:I

.field protected mInputAudioDecoder:Landroid/media/MediaCodec;

.field protected mInputVideoDecoder:Landroid/media/MediaCodec;

.field protected mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

.field protected mLogoPresent:Z

.field protected mMMSMode:Z

.field protected mMuxer:Landroid/media/MediaMuxer;

.field protected mMuxerStarted:Z

.field protected mOriginalAudioChannelCount:I

.field protected mOutputAudioAACProfile:I

.field protected mOutputAudioBitRate:I

.field protected mOutputAudioChannelCount:I

.field protected mOutputAudioEncoder:Landroid/media/MediaCodec;

.field protected mOutputAudioMimeType:Ljava/lang/String;

.field protected mOutputAudioSampleRateHZ:I

.field protected mOutputFilePath:Ljava/lang/String;

.field protected mOutputFormat:I

.field protected mOutputHeight:I

.field protected mOutputMaxSizeKB:J

.field protected mOutputVideoBitRate:I

.field protected mOutputVideoEncoder:Landroid/media/MediaCodec;

.field protected mOutputVideoFrameRate:I

.field protected mOutputVideoIFrameInterval:I

.field protected mOutputVideoMimeType:Ljava/lang/String;

.field protected mOutputVideoProfile:I

.field protected mOutputWidth:I

.field protected mSizeFraction:F

.field protected mSkipFrames:Z

.field protected mTransRewritable:I

.field protected volatile mUserStop:Z

.field protected mVideoTrackIndex:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoMimeType:Ljava/lang/String;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoFrameRate:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoIFrameInterval:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputVideoProfile:I

    const-string/jumbo v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioMimeType:Ljava/lang/String;

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioChannelCount:I

    const v0, 0x1f400

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioBitRate:I

    iput v3, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioAACProfile:I

    const v0, 0xac44

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputAudioSampleRateHZ:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    iput v1, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mTransRewritable:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    iput v2, p0, Lcom/samsung/android/transcode/core/Encode;->mOriginalAudioChannelCount:I

    iput-boolean v2, p0, Lcom/samsung/android/transcode/core/Encode;->mMMSMode:Z

    return-void
.end method

.method private printVersionInfo()V
    .locals 2

    const-string/jumbo v0, "TranscodeLib"

    const-string/jumbo v1, "Transcode Framework v.1.44"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public encode()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;->printVersionInfo()V

    :try_start_0
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "starting encoder prepartion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "encoder preparation done."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/media/MediaMuxer;

    iget-object v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v4, v5, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "starting to encode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "encoding finished."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "generated output file size after muxer close "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v4, :cond_2

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    if-nez v4, :cond_6

    :goto_2
    return-void

    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v4}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v4

    :cond_2
    iget-wide v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    long-to-double v4, v2

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    long-to-double v6, v6

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    instance-of v4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;

    if-eqz v4, :cond_0

    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "file size exceeded the max size limit "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputMaxSizeKB:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    const v4, 0x3f333333    # 0.7f

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mSizeFraction:F

    iput-boolean v11, p0, Lcom/samsung/android/transcode/core/Encode;->mSkipFrames:Z

    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    if-lt v4, v9, :cond_4

    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    mul-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    :goto_4
    iget v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v5, 0xb0

    if-eq v4, v5, :cond_5

    :goto_5
    :try_start_2
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "2nd time starting encoder preparation"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->prepare()V

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "2nd time encoder preparation done."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Landroid/media/MediaMuxer;

    iget-object v5, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    iget v6, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFormat:I

    invoke-direct {v4, v5, v6}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxer:Landroid/media/MediaMuxer;

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/transcode/core/Encode;->mMuxerStarted:Z

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mVideoTrackIndex:I

    const/4 v4, -0x1

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mAudioTrackIndex:I

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "2nd time starting to encode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->startEncoding()V

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "2nd time encoding finished."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2nd time generated output file size after muxer close "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v8, p0, Lcom/samsung/android/transcode/core/Encode;->m2ndTimeEncoding:Z

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v4, "TranscodeLib"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not clean up file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_4
    iput v9, p0, Lcom/samsung/android/transcode/core/Encode;->mFramesSkipInterval:I

    goto/16 :goto_4

    :cond_5
    const/16 v4, 0x80

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputWidth:I

    const/16 v4, 0x60

    iput v4, p0, Lcom/samsung/android/transcode/core/Encode;->mOutputHeight:I

    goto/16 :goto_5

    :catchall_1
    move-exception v4

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/Encode;->release()V

    throw v4

    :cond_6
    iget-boolean v4, p0, Lcom/samsung/android/transcode/core/Encode;->mUserStop:Z

    if-eqz v4, :cond_7

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "user stopped. Not calling onCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    iput-object v10, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v5, "calling onCompleted"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    invoke-interface {v4}, Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;->onCompleted()V

    goto :goto_6
.end method

.method protected abstract prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract release()V
.end method

.method public setProgressUpdateListener(Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/transcode/core/Encode;->mEncodeEventListener:Lcom/samsung/android/transcode/core/Encode$EncodeEventListener;

    return-void
.end method

.method protected abstract startEncoding()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public suggestBitRate(II)I
    .locals 2

    const/16 v1, 0x1388

    const/16 v0, 0x780

    if-ge p1, v0, :cond_0

    const/16 v0, 0x500

    if-ge p1, v0, :cond_1

    const/16 v0, 0x2d0

    if-ge p1, v0, :cond_2

    const/16 v0, 0x280

    if-ge p1, v0, :cond_3

    const/16 v0, 0x140

    if-ge p1, v0, :cond_4

    const/16 v0, 0x118

    return v0

    :cond_0
    const/16 v0, 0x2710

    return v0

    :cond_1
    const/16 v0, 0x1f40

    return v0

    :cond_2
    return v1

    :cond_3
    return v1

    :cond_4
    const/16 v0, 0x200

    return v0
.end method
