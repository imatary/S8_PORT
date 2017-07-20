.class public Lcom/samsung/android/transcode/core/EncodeVideo;
.super Lcom/samsung/android/transcode/core/Encode;
.source "EncodeVideo.java"


# instance fields
.field private formatupdated:Z

.field private mAudioExtractor:Landroid/media/MediaExtractor;

.field private mCopyAudio:Z

.field private volatile mEncoding:Z

.field private mInputFilePath:Ljava/lang/String;

.field private mInputOrientationDegrees:I

.field private mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

.field private mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

.field private mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

.field private mStopLock:Ljava/lang/Object;

.field private mTrimAudioEndUs:J

.field private mTrimAudioStartUs:J

.field private mTrimVideoEndUs:J

.field private mTrimVideoStartUs:J

.field private mVideoExtractor:Landroid/media/MediaExtractor;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/transcode/core/Encode;-><init>()V

    iput v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return-void
.end method

.method private CheckVideoCodec(IILjava/lang/String;Z)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p4, :cond_3

    :goto_0
    const/4 v7, 0x0

    :try_start_0
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v8

    if-ltz v8, :cond_6

    invoke-virtual {v7, v8}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v6

    const-string/jumbo v10, "width"

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v9

    const-string/jumbo v10, "height"

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo v10, "error-type"

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v10

    if-nez v10, :cond_7

    :goto_1
    if-nez v7, :cond_8

    :cond_0
    :goto_2
    const/4 v7, 0x0

    if-nez v4, :cond_a

    if-eqz p4, :cond_b

    :cond_1
    if-gtz v9, :cond_c

    :cond_2
    const-string/jumbo v10, "TranscodeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Resolution Error appear : width = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", height= "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_3
    invoke-static {p1, p2}, Lcom/samsung/android/transcode/util/CodecsHelper;->GetCodecResource(II)I

    move-result v0

    goto :goto_0

    :cond_4
    :try_start_1
    const-string/jumbo v10, "TranscodeLib"

    const-string/jumbo v11, "Can\'t create Extractor"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_5

    :goto_3
    const/4 v7, 0x0

    const/4 v10, 0x0

    return v10

    :cond_5
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :cond_6
    move v4, v8

    :try_start_2
    const-string/jumbo v10, "TranscodeLib"

    const-string/jumbo v11, "Can\'t get VideoTrack"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :cond_7
    :try_start_4
    const-string/jumbo v10, "error-type"

    invoke-virtual {v6, v10}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v4

    goto :goto_1

    :cond_8
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    goto :goto_2

    :catchall_0
    move-exception v10

    if-nez v7, :cond_9

    :goto_4
    const/4 v7, 0x0

    throw v10

    :cond_9
    invoke-virtual {v7}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_a
    const-string/jumbo v10, "TranscodeLib"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Extactor Error appear : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_b
    if-ltz v0, :cond_1

    mul-int v10, v9, v5

    if-ge v0, v10, :cond_1

    const-string/jumbo v10, "TranscodeLib"

    const-string/jumbo v11, "Codec resource is not enough"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x0

    return v10

    :cond_c
    if-lez v5, :cond_2

    const/4 v10, 0x1

    return v10
.end method

.method private CheckVideoFormat(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createMediaMetadataRetriever(Ljava/lang/String;)Landroid/media/MediaMetadataRetriever;

    move-result-object v3

    invoke-static {v2}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v1

    const/4 v5, -0x1

    if-ne v1, v5, :cond_2

    :cond_0
    const-string/jumbo v5, "TranscodeLib"

    const-string/jumbo v6, "Video Format is not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    if-nez v2, :cond_3

    :goto_1
    const/4 v2, 0x0

    if-nez v3, :cond_4

    :cond_1
    :goto_2
    const/4 v3, 0x0

    return v4

    :cond_2
    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->isSupportedFormat(Landroid/media/MediaMetadataRetriever;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x0

    if-nez v2, :cond_5

    :goto_3
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_3

    :catchall_0
    move-exception v5

    if-nez v2, :cond_6

    :goto_4
    const/4 v2, 0x0

    if-nez v3, :cond_7

    :goto_5
    const/4 v3, 0x0

    throw v5

    :cond_6
    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    goto :goto_4

    :cond_7
    invoke-virtual {v3}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_5
.end method

.method static synthetic access$002(Lcom/samsung/android/transcode/core/EncodeVideo;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    return p1
.end method


# virtual methods
.method public getOutputFileSize()I
    .locals 19

    const-wide/16 v16, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v13

    invoke-static {v13}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v12

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-wide/from16 v16, v0

    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-nez v3, :cond_0

    const-string/jumbo v3, "durationUs"

    invoke-virtual {v12, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    :cond_0
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    if-eq v3, v4, :cond_2

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v6, v16, v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v8, 0x3e8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v3

    mul-int/lit16 v14, v3, 0x3e8

    :goto_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long v4, v16, v4

    long-to-double v4, v4

    const-wide v6, 0x415e848000000000L    # 8000000.0

    div-double/2addr v4, v6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    add-int/2addr v3, v14

    int-to-double v6, v3

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    mul-double/2addr v4, v6

    double-to-int v15, v4

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    int-to-double v4, v15

    const-wide v6, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v4, v6

    double-to-int v3, v4

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    return v3

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->suggestBitRate(II)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    mul-int/lit16 v14, v3, 0x3e8

    goto :goto_2

    :cond_4
    return v15

    :catch_1
    move-exception v11

    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "NullPointerException appear"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    return v3
.end method

.method public initialize(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_1

    if-eqz p1, :cond_2

    if-eqz p4, :cond_3

    invoke-direct {p0, p4}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoFormat(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p2, p3, p4, v1}, Lcom/samsung/android/transcode/core/EncodeVideo;->CheckVideoCodec(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-object p1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputFilePath:Ljava/lang/String;

    iput p2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    iput p3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    iput-object p4, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "width cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "height cannot be equal to or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "output file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "input file path cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video format."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Not a valid video codec."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareVideoCodec()V

    invoke-virtual {p0}, Lcom/samsung/android/transcode/core/EncodeVideo;->prepareAudioCodec()V

    return-void
.end method

.method protected prepareAudioCodec()V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectAudioTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v17

    const/4 v4, -0x1

    move/from16 v0, v17

    if-eq v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v24

    const-string/jumbo v4, "audio/unknown"

    const-string/jumbo v6, "mime"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "error-type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    move-wide/from16 v30, v0

    const-wide/16 v32, 0x0

    cmp-long v4, v30, v32

    if-nez v4, :cond_1

    const-string/jumbo v4, "durationUs"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v30

    move-wide/from16 v0, v30

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "mTrimAudioEndUs was 0 but updated"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Audio input format "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "sample-rate"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    const-string/jumbo v4, "channel-count"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const-string/jumbo v4, "mime"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string/jumbo v4, "audio/mp4a-latm"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_2
    :goto_0
    const/16 v25, 0x0

    :try_start_0
    const-string/jumbo v4, "max-input-size"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result v25

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-nez v4, :cond_17

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-static {v4, v6, v10}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v27

    if-nez v25, :cond_18

    :goto_3
    const-string/jumbo v4, "bitrate"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "aac-profile"

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioAACProfile:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v6}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Audio output format "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/transcode/util/CodecsHelper;->getEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v11

    move-object/from16 v0, v27

    invoke-static {v11, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioEncoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-static/range {v26 .. v26}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    return-void

    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v6, "mInputFilePath is NULL"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_6
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Audio mime type is unknown. Ignore audio track."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_7
    const/16 v23, 0x0

    const-string/jumbo v4, "error-type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v23

    if-eqz v23, :cond_0

    const-string/jumbo v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Audio codec error appear : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    return-void

    :cond_8
    :try_start_1
    invoke-static/range {v26 .. v26}, Lcom/samsung/android/transcode/util/CodecsHelper;->getDecoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/samsung/android/transcode/util/CodecsHelper;->createAudioDecoder(Landroid/media/MediaCodecInfo;Landroid/media/MediaFormat;)Landroid/media/MediaCodec;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_a

    const/16 v16, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v4, :cond_b

    const/4 v13, 0x0

    :goto_5
    new-instance v15, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v15}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v28, -0x1

    new-instance v29, Lcom/samsung/android/transcode/core/EncodeVideo$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/transcode/core/EncodeVideo$1;-><init>(Lcom/samsung/android/transcode/core/EncodeVideo;)V

    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v4, :cond_16

    :goto_7
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const-wide/16 v30, 0x0

    const/4 v6, 0x0

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1, v6}, Landroid/media/MediaExtractor;->seekTo(JI)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    goto :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v13

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-eqz v4, :cond_e

    :cond_d
    :goto_8
    const/4 v4, 0x3

    move-object/from16 v0, v29

    invoke-static {v4, v0}, Lcom/samsung/android/transcode/util/CodecsHelper;->scheduleAfter(ILjava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    if-nez v4, :cond_9

    const/4 v4, -0x1

    move/from16 v0, v28

    if-ne v0, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v30, 0x2710

    move-wide/from16 v0, v30

    invoke-virtual {v4, v15, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v14

    const/4 v4, -0x1

    if-eq v14, v4, :cond_11

    const/4 v4, -0x3

    if-eq v14, v4, :cond_12

    const/4 v4, -0x2

    if-eq v14, v4, :cond_13

    if-ltz v14, :cond_14

    iget v4, v15, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_15

    move/from16 v28, v14

    goto :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v30, 0x2710

    move-wide/from16 v0, v30

    invoke-virtual {v4, v0, v1}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    const/4 v4, -0x1

    if-eq v5, v4, :cond_f

    aget-object v12, v13, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v6, 0x0

    invoke-virtual {v4, v12, v6}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v4}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v8

    if-gtz v7, :cond_10

    const/4 v4, -0x1

    if-ne v7, v4, :cond_d

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    const-string/jumbo v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Audio buffer is empty, size :"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_8

    :catch_1
    move-exception v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/concurrent/ExecutionException;->printStackTrace()V

    goto/16 :goto_0

    :cond_f
    :try_start_3
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder input try again later while preparing audio codec"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v10}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v10

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_8

    :cond_11
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder output buffer try again later while preparing audio codec"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: output buffers changed "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v16

    goto/16 :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    const-string/jumbo v6, "sample-rate"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v4

    const-string/jumbo v6, "channel-count"

    invoke-virtual {v4, v6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const-string/jumbo v4, "TranscodeLib"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "audio decoder: output format changed: SampleRate"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioSampleRateHZ:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v10, ",ChannelCount"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->formatupdated:Z

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "audio decoder: codec config buffer"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v6, 0x0

    invoke-virtual {v4, v14, v6}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_6

    :cond_16
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->stop()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->release()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    :catch_2
    move-exception v19

    :try_start_5
    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Exception in releasing input audio decoder."

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_7

    :catch_3
    move-exception v21

    const-string/jumbo v4, "TranscodeLib"

    const-string/jumbo v6, "Audio max input size not defined"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    const/4 v6, 0x2

    if-lt v4, v6, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioChannelCount:I

    goto/16 :goto_2

    :cond_18
    const-string/jumbo v4, "max-input-size"

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto/16 :goto_3
.end method

.method protected prepareVideoCodec()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    if-eqz v3, :cond_4

    new-instance v15, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v15}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-virtual {v15, v3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 v3, 0x18

    invoke-virtual {v15, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_5

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v15, :cond_6

    :cond_0
    :goto_1
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputFilePath:Ljava/lang/String;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createExtractor(Ljava/lang/String;)Landroid/media/MediaExtractor;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-static {v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->getAndSelectVideoTrackIndex(Landroid/media/MediaExtractor;)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v13

    const-string/jumbo v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "input video format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    const-string/jumbo v3, "durationUs"

    invoke-virtual {v13, v3}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    const-string/jumbo v3, "TranscodeLib"

    const-string/jumbo v4, "mTrimVideoEndUs was 0 but updated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_8

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->m2ndTimeEncoding:Z

    if-eqz v3, :cond_9

    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-nez v3, :cond_a

    :goto_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    div-int/lit16 v8, v8, 0x3e8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static/range {v3 .. v10}, Lcom/samsung/android/transcode/util/CodecsHelper;->getVideoEncodingBitRate(FJJIII)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    :goto_5
    const/16 v17, 0x0

    :try_start_1
    const-string/jumbo v3, "frame-rate"

    invoke-virtual {v13, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v17

    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    if-eq v3, v4, :cond_c

    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    if-nez v3, :cond_d

    :goto_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    move/from16 v0, v17

    if-gt v0, v3, :cond_e

    :goto_9
    const-string/jumbo v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOutputVideoFrameRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    invoke-static {v3, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v16

    const-string/jumbo v3, "color-format"

    const v4, 0x7f000789

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "bitrate"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "frame-rate"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "i-frame-interval"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoIFrameInterval:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v3, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "output video format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0, v5, v6, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    new-instance v3, Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v4}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/samsung/android/transcode/surfaces/InputSurface;-><init>(Landroid/view/Surface;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->start()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/surfaces/InputSurface;->makeCurrent()V

    new-instance v3, Lcom/samsung/android/transcode/surfaces/OutputSurface;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-direct {v3, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-nez v3, :cond_f

    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->getSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-static {v13, v3}, Lcom/samsung/android/transcode/util/CodecsHelper;->createVideoDecoder(Landroid/media/MediaFormat;Landroid/view/Surface;)Landroid/media/MediaCodec;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-eqz v3, :cond_10

    return-void

    :cond_4
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "mInputFilePath is NULL"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    const/4 v2, 0x0

    :try_start_2
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    :goto_b
    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v11

    :try_start_4
    invoke-virtual {v11}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v15, :cond_0

    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :catch_1
    move-exception v12

    :try_start_5
    invoke-virtual {v12}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_b

    :catchall_0
    move-exception v3

    if-nez v15, :cond_7

    :goto_c
    const/4 v15, 0x0

    throw v3

    :sswitch_1
    const/16 v3, 0x5a

    :try_start_6
    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_0

    :sswitch_2
    const/16 v3, 0xb4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    goto/16 :goto_0

    :sswitch_3
    const/16 v3, 0x10e

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v15}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_c

    :cond_8
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    const-string/jumbo v4, "video/avc"

    if-ne v3, v4, :cond_2

    const v3, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSizeFraction:F

    goto/16 :goto_3

    :cond_a
    const/16 v3, 0x7d00

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioBitRate:I

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/transcode/core/EncodeVideo;->suggestBitRate(II)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoBitRate:I

    goto/16 :goto_5

    :cond_c
    if-lez v17, :cond_3

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    goto/16 :goto_8

    :cond_e
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    move/from16 v0, v17

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    goto/16 :goto_9

    :cond_f
    new-instance v3, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-direct {v3}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v3}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->prepare()I

    goto/16 :goto_a

    :cond_10
    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "can\'t set VideoDecoder"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_2
    move-exception v3

    goto/16 :goto_6

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method protected release()V
    .locals 4

    :try_start_0
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "releasing encoder objects"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_1

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_3

    :goto_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v1, :cond_4

    :goto_3
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    if-nez v1, :cond_5

    :goto_4
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    if-nez v1, :cond_6

    :cond_0
    :goto_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    if-nez v1, :cond_7

    :goto_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_8

    :goto_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_9

    :goto_8
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    if-nez v1, :cond_a

    :goto_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_b

    :goto_a
    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output video encoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z

    iget-object v3, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_2
    :try_start_5
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_6
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input video decoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_8
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing video extractor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    :cond_4
    :try_start_9
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    :catch_3
    move-exception v0

    :try_start_a
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing outputSurface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_3

    :cond_5
    :try_start_b
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_4

    :catch_4
    move-exception v0

    :try_start_c
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing logo renderer."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v1, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_5

    :cond_7
    :try_start_d
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/InputSurface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    :try_start_e
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input surface."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_6

    :cond_8
    :try_start_f
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto/16 :goto_7

    :catch_6
    move-exception v0

    :try_start_10
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing output audio encoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_7

    :cond_9
    :try_start_11
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto/16 :goto_8

    :catch_7
    move-exception v0

    :try_start_12
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing input audio decoder."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_8

    :cond_a
    :try_start_13
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_8
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_9

    :catch_8
    move-exception v0

    :try_start_14
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing audio extractor."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto/16 :goto_9

    :cond_b
    :try_start_15
    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v1, :cond_c

    :goto_b
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_a

    :catch_9
    move-exception v0

    :try_start_16
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Exception in releasing muxer."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_a

    :cond_c
    :try_start_17
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v1}, Landroid/media/MediaMuxer;->stop()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_9
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_b

    :catchall_1
    move-exception v1

    :try_start_18
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    throw v1

    :catchall_2
    move-exception v1

    :try_start_19
    monitor-exit v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2

    throw v1
.end method

.method public setEncodingCodecs(II)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoCodecType is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid video codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const-string/jumbo v0, "video/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    :goto_0
    packed-switch p2, :pswitch_data_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid audio codec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const-string/jumbo v0, "video/avc"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoMimeType:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "audio/3gpp"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    :goto_1
    return-void

    :pswitch_3
    const-string/jumbo v0, "audio/mp4a-latm"

    iput-object v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioMimeType:Ljava/lang/String;

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setMaxOutputSize(I)V
    .locals 7

    const/16 v6, 0xc8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-lez p1, :cond_2

    const-string/jumbo v2, "TranscodeLib"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "max output size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    iget-wide v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputMaxSizeKB:J

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    if-lt v0, v6, :cond_3

    :cond_1
    :goto_0
    const-string/jumbo v0, "TranscodeLib"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mMMSMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "size cannot be 0 or lesser"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    if-ge v0, v6, :cond_1

    :cond_4
    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMMSMode:Z

    goto :goto_0
.end method

.method protected startEncoding()V
    .locals 64
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v60

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v57

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_a

    const/16 v34, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_b

    const/16 v30, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_c

    const/16 v28, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_d

    const/16 v24, 0x0

    :goto_3
    new-instance v59, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v59 .. v59}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v56, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v56 .. v56}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v33, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v33 .. v33}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    new-instance v27, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct/range {v27 .. v27}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v35, 0x0

    const/16 v61, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_e

    const/16 v36, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_f

    const/16 v22, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_10

    const/16 v29, 0x1

    :goto_6
    const/16 v62, 0x0

    const/16 v58, 0x0

    const/16 v54, 0x0

    const/16 v49, -0x1

    const/16 v63, 0x0

    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    shl-int/lit8 v53, v2, 0x1

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-nez v2, :cond_11

    :goto_7
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v11, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_12

    :cond_1
    const-wide/16 v44, -0x1

    :cond_2
    if-nez v58, :cond_15

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_16

    :cond_4
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_1e

    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_30

    :cond_6
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_3b

    :cond_7
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_61

    :cond_8
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Encoding abruptly stopped."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    :cond_9
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Not starting encoding because it is stopped by user."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v34

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v30

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v28

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v24

    goto/16 :goto_3

    :cond_e
    const/16 v36, 0x0

    goto/16 :goto_4

    :cond_f
    const/16 v22, 0x0

    goto/16 :goto_5

    :cond_10
    const/16 v29, 0x0

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v10, v10, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    invoke-virtual {v2, v4, v8, v10}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->loadTexture(Landroid/graphics/Bitmap;II)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget-object v2, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopX:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    neg-float v2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v46, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    shr-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mTopY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v4, v8

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    div-float v47, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    sparse-switch v2, :sswitch_data_0

    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move/from16 v0, v46

    move/from16 v1, v47

    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixTranslate(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v4, v4, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawWidth:I

    int-to-float v4, v4

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputWidth:I

    int-to-float v8, v8

    div-float/2addr v4, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogo:Lcom/samsung/android/transcode/core/Encode$Logo;

    iget v8, v8, Lcom/samsung/android/transcode/core/Encode$Logo;->mLogoDrawHeight:I

    int-to-float v8, v8

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v8, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputHeight:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-virtual {v2, v4, v8}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixScale(FF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    int-to-float v4, v4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4, v8, v10, v11}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->setProjectionMatrixRotate(FFFF)V

    goto/16 :goto_7

    :sswitch_0
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v47, v47, v2

    goto :goto_e

    :sswitch_1
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v46, v46, v2

    const/high16 v2, -0x40800000    # -1.0f

    mul-float v47, v47, v2

    goto :goto_e

    :sswitch_2
    const/high16 v2, -0x40800000    # -1.0f

    mul-float v46, v46, v2

    goto :goto_e

    :cond_12
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const-wide/16 v16, 0x0

    cmp-long v2, v10, v16

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    const/4 v4, 0x0

    invoke-virtual {v2, v10, v11, v4}, Landroid/media/MediaExtractor;->seekTo(JI)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioStartUs:J

    move-wide/from16 v16, v0

    cmp-long v2, v10, v16

    if-ltz v2, :cond_13

    const/4 v2, 0x1

    :goto_10
    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v10

    const-wide/16 v16, -0x1

    cmp-long v2, v10, v16

    if-nez v2, :cond_14

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Invalid File!"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_13
    const/4 v2, 0x0

    goto :goto_10

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    goto :goto_f

    :cond_15
    if-eqz v29, :cond_3

    goto/16 :goto_d

    :cond_16
    if-nez v62, :cond_4

    if-nez v61, :cond_18

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v3

    const/4 v2, -0x1

    if-eq v3, v2, :cond_19

    aget-object v37, v55, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v37

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoEndUs:J

    cmp-long v2, v6, v10

    if-lez v2, :cond_1a

    const/4 v2, 0x1

    :goto_11
    if-nez v2, :cond_1d

    if-gez v5, :cond_1b

    :goto_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_1c

    const/16 v62, 0x0

    :goto_13
    if-eqz v62, :cond_4

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video extractor: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x4

    move v9, v3

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_17

    goto/16 :goto_8

    :cond_19
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "no video decoder input buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_1a
    const/4 v2, 0x0

    goto :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v8}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v8

    invoke-virtual/range {v2 .. v8}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_12

    :cond_1c
    const/16 v62, 0x1

    goto :goto_13

    :cond_1d
    const/16 v62, 0x1

    goto :goto_13

    :cond_1e
    if-nez v54, :cond_5

    if-nez v61, :cond_21

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v56

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v39

    const/4 v2, -0x1

    move/from16 v0, v39

    if-eq v0, v2, :cond_22

    const/4 v2, -0x3

    move/from16 v0, v39

    if-eq v0, v2, :cond_23

    const/4 v2, -0x2

    move/from16 v0, v39

    if-eq v0, v2, :cond_24

    aget-object v38, v57, v39

    move-object/from16 v0, v56

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_25

    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video decoder: returned buffer for time "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v56

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_26

    const/16 v51, 0x0

    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    move/from16 v0, v39

    move/from16 v1, v51

    invoke-virtual {v2, v0, v1}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    if-nez v51, :cond_27

    :cond_20
    :goto_15
    move-object/from16 v0, v56

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video decoder: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v54, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto/16 :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_1f

    goto/16 :goto_9

    :cond_22
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "no video decoder output buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_23
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video decoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v57

    goto/16 :goto_9

    :cond_24
    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video decoder: codec info format changed"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :cond_25
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video decoder: codec config buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputVideoDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v39

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_9

    :cond_26
    const/16 v51, 0x1

    goto/16 :goto_14

    :cond_27
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "output surface: await new image"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    const/16 v4, 0x3e8

    invoke-virtual {v2, v4}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->checkForNewImage(I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "output surface: draw image"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x4000

    invoke-static {v2}, Landroid/opengl/GLES20;->glClear(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->drawImage()V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoPresent:Z

    if-nez v2, :cond_2c

    :cond_28
    :goto_16
    move-object/from16 v0, v56

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimVideoStartUs:J

    move-wide/from16 v16, v0

    cmp-long v2, v10, v16

    if-gez v2, :cond_2d

    const/4 v2, 0x1

    :goto_17
    if-nez v2, :cond_20

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mSkipFrames:Z

    if-nez v2, :cond_2e

    :goto_18
    const/16 v52, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    move-object/from16 v0, v56

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v16, 0x3e8

    mul-long v10, v10, v16

    invoke-virtual {v2, v10, v11}, Lcom/samsung/android/transcode/surfaces/InputSurface;->setPresentationTime(J)V

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "input surface: swap buffers"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputSurface:Lcom/samsung/android/transcode/surfaces/InputSurface;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/surfaces/InputSurface;->swapBuffers()Z

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video encoder: notified of new frame"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v63, v63, 0x1

    :cond_29
    add-int/lit8 v52, v52, 0x1

    goto/16 :goto_15

    :cond_2a
    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video decoder: checkForNewImage return false!!  mUserStop : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_8

    :catch_0
    move-exception v50

    invoke-virtual/range {v50 .. v50}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v48

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_2f

    :cond_2b
    :goto_19
    new-instance v2, Ljava/lang/RuntimeException;

    move-object/from16 v0, v50

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_2c
    :try_start_1
    rem-int v2, v63, v53

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoFrameRate:I

    if-ge v2, v4, :cond_28

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mLogoRenderer:Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;

    invoke-virtual {v2}, Lcom/samsung/android/transcode/renderer/RenderTexture_GL_2d;->draw()V

    goto/16 :goto_16

    :cond_2d
    const/4 v2, 0x0

    goto :goto_17

    :cond_2e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mFramesSkipInterval:I

    rem-int v2, v52, v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v2, :cond_29

    goto :goto_18

    :cond_2f
    if-eqz v48, :cond_2b

    const-string/jumbo v2, "Surface frame wait timed out"

    move-object/from16 v0, v48

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    goto :goto_19

    :cond_30
    if-nez v58, :cond_6

    if-nez v61, :cond_32

    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v59

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v42

    const/4 v2, -0x1

    move/from16 v0, v42

    if-eq v0, v2, :cond_33

    const/4 v2, -0x3

    move/from16 v0, v42

    if-eq v0, v2, :cond_34

    const/4 v2, -0x2

    move/from16 v0, v42

    if-eq v0, v2, :cond_35

    if-ltz v42, :cond_37

    aget-object v41, v60, v42

    move-object/from16 v0, v59

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_38

    move-object/from16 v0, v59

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_39

    :goto_1a
    move-object/from16 v0, v59

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_3a

    :goto_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v42

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_a

    :cond_32
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_31

    goto/16 :goto_a

    :cond_33
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "no video encoder output buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_34
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video encoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v60

    goto/16 :goto_a

    :cond_35
    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video encoder: output format changed "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v8}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    if-gez v2, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v61

    goto/16 :goto_a

    :cond_36
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Video encoder output format changed after muxer has started"

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Unexpected result from video encoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_38
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video encoder: codec config buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputVideoEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v42

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_a

    :cond_39
    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "video encoder: writing sample data timestamp "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v59

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, v41

    move-object/from16 v1, v59

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1a

    :cond_3a
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "video encoder: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v58, 0x1

    goto/16 :goto_1b

    :cond_3b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_40

    :cond_3c
    :goto_1c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_48

    :cond_3d
    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-eqz v2, :cond_50

    :cond_3e
    :goto_1e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    if-nez v2, :cond_7

    if-nez v29, :cond_7

    if-nez v35, :cond_56

    :cond_3f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v33

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v32

    const/4 v2, -0x1

    move/from16 v0, v32

    if-eq v0, v2, :cond_57

    const/4 v2, -0x3

    move/from16 v0, v32

    if-eq v0, v2, :cond_58

    const/4 v2, -0x2

    move/from16 v0, v32

    if-eq v0, v2, :cond_59

    if-ltz v32, :cond_5b

    aget-object v31, v34, v32

    move-object/from16 v0, v33

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5c

    move-object/from16 v0, v33

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_5d

    :goto_1f
    move-object/from16 v0, v33

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_60

    :goto_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v32

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_40
    if-nez v36, :cond_3c

    if-nez v35, :cond_42

    :cond_41
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v9

    const/4 v2, -0x1

    if-eq v9, v2, :cond_43

    aget-object v23, v24, v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mTrimAudioEndUs:J

    cmp-long v2, v12, v10

    if-lez v2, :cond_44

    const/4 v2, 0x1

    :goto_21
    if-nez v2, :cond_47

    if-gtz v5, :cond_45

    :goto_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->advance()Z

    move-result v2

    if-eqz v2, :cond_46

    const/16 v36, 0x0

    :goto_23
    if-eqz v36, :cond_3c

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder sending EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x4

    move v15, v9

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto/16 :goto_1c

    :cond_42
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_41

    goto/16 :goto_1c

    :cond_43
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder input try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :cond_44
    const/4 v2, 0x0

    goto :goto_21

    :cond_45
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v14

    move v11, v5

    invoke-virtual/range {v8 .. v14}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_22

    :cond_46
    const/16 v36, 0x1

    goto :goto_23

    :cond_47
    const/16 v36, 0x1

    goto :goto_23

    :cond_48
    if-nez v22, :cond_3d

    const/4 v2, -0x1

    move/from16 v0, v49

    if-ne v0, v2, :cond_3d

    if-nez v35, :cond_4a

    :cond_49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    move-object/from16 v0, v27

    invoke-virtual {v2, v0, v10, v11}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v26

    const/4 v2, -0x1

    move/from16 v0, v26

    if-eq v0, v2, :cond_4b

    const/4 v2, -0x3

    move/from16 v0, v26

    if-eq v0, v2, :cond_4c

    const/4 v2, -0x2

    move/from16 v0, v26

    if-eq v0, v2, :cond_4d

    if-ltz v26, :cond_4e

    move-object/from16 v0, v27

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4f

    move/from16 v49, v26

    goto/16 :goto_1d

    :cond_4a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_49

    goto/16 :goto_1d

    :cond_4b
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder output buffer try again later while decoding"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_4c
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v28

    goto/16 :goto_1d

    :cond_4d
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: output format changed: "

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_4e
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Unexpected result from audio decoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    :cond_4f
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: codec config buffer"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_1d

    :cond_50
    const/4 v2, -0x1

    move/from16 v0, v49

    if-eq v0, v2, :cond_3e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const-wide/16 v10, 0x2710

    invoke-virtual {v2, v10, v11}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v15

    const/4 v2, -0x1

    if-eq v15, v2, :cond_51

    aget-object v40, v30, v15

    move-object/from16 v0, v27

    iget v5, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    move-object/from16 v0, v27

    iget-wide v6, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-gez v5, :cond_52

    :goto_24
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputAudioDecoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v49

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    const/16 v49, -0x1

    move-object/from16 v0, v27

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_3e

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio decoder: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    goto/16 :goto_1e

    :cond_51
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder input buffer try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_52
    aget-object v2, v28, v49

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v25

    move-object/from16 v0, v27

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v27

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v2, v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    if-gtz v2, :cond_53

    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v20, v0

    move/from16 v17, v5

    move-wide/from16 v18, v6

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_24

    :cond_53
    invoke-virtual/range {v25 .. v25}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v21

    if-nez v21, :cond_54

    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "TempAudio is null!"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    :cond_54
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int v2, v5, v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/16 v43, 0x0

    :goto_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int/lit8 v2, v2, 0x2

    div-int v2, v5, v2

    move/from16 v0, v43

    if-lt v0, v2, :cond_55

    const/4 v2, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v0, v40

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    div-int v17, v5, v2

    move-object/from16 v0, v27

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move/from16 v20, v0

    move-wide/from16 v18, v6

    invoke-virtual/range {v14 .. v20}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    invoke-virtual/range {v21 .. v21}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/16 v21, 0x0

    goto/16 :goto_24

    :cond_55
    mul-int/lit8 v2, v43, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int v4, v4, v43

    mul-int/lit8 v4, v4, 0x2

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    mul-int/lit8 v2, v43, 0x2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOriginalAudioChannelCount:I

    mul-int v4, v4, v43

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v43, v43, 0x1

    goto :goto_25

    :cond_56
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_3f

    goto/16 :goto_b

    :cond_57
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder output buffer try again later"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_58
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder: output buffers changed"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v34

    goto/16 :goto_b

    :cond_59
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    if-gez v2, :cond_5a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v35

    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio encoder: output format changed "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_5a
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Audio encoder output format changed after muxer is started."

    invoke-direct {v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5b
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "Unexpected result from audio encoder dequeue output format."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_5c
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder ignoring BUFFER_FLAG_CODEC_CONFIG"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputAudioEncoder:Landroid/media/MediaCodec;

    const/4 v4, 0x0

    move/from16 v0, v32

    invoke-virtual {v2, v0, v4}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto/16 :goto_b

    :cond_5d
    const-string/jumbo v2, "TranscodeLib"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "audio encoder writing sample data to muxer "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v33

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v33

    iget-wide v10, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    cmp-long v2, v44, v10

    if-gtz v2, :cond_5e

    const/4 v2, 0x1

    :goto_26
    if-nez v2, :cond_5f

    new-instance v2, Ljava/io/IOException;

    const-string/jumbo v4, "Audio time stamps are not in increasing order."

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5e
    const/4 v2, 0x0

    goto :goto_26

    :cond_5f
    move-object/from16 v0, v33

    iget-wide v0, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    move-wide/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    move-object/from16 v0, v31

    move-object/from16 v1, v33

    invoke-virtual {v2, v4, v0, v1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    goto/16 :goto_1f

    :cond_60
    const-string/jumbo v2, "TranscodeLib"

    const-string/jumbo v4, "audio encoder: EOS"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v29, 0x1

    goto/16 :goto_20

    :cond_61
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    if-nez v2, :cond_8

    if-eqz v61, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_63

    :cond_62
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v61

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mVideoTrackIndex:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mCopyAudio:Z

    if-nez v2, :cond_64

    :goto_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mInputOrientationDegrees:I

    invoke-virtual {v2, v4}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->start()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxerStarted:Z

    goto/16 :goto_c

    :cond_63
    if-nez v35, :cond_62

    goto/16 :goto_c

    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mMuxer:Landroid/media/MediaMuxer;

    move-object/from16 v0, v35

    invoke-virtual {v2, v0}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/transcode/core/EncodeVideo;->mAudioTrackIndex:I

    goto :goto_27

    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public stop()V
    .locals 4

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v2, "Stop method called "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    if-nez v1, :cond_0

    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mUserStop:Z

    iget-boolean v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mEncoding:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :try_start_1
    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v3, "Calling wait on stop lock."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mStopLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/transcode/core/EncodeVideo;->mOutputSurface:Lcom/samsung/android/transcode/surfaces/OutputSurface;

    invoke-virtual {v1}, Lcom/samsung/android/transcode/surfaces/OutputSurface;->notifyFrameSyncObject()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "TranscodeLib"

    const-string/jumbo v3, "Stop lock interrupted."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
