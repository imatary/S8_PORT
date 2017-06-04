.class public Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioChannels:I

.field private mAudioEncoder:I

.field private mAudioEncodingBitrate:I

.field private mAudioSamplingRate:I

.field private mAudioSource:I

.field private mFileSizeInterval:I

.field private mMaxDuration:I

.field private mOutputFormat:I

.field private mRecordingMode:I

.field private final mResolutionId:I

.field private mVideoEncoder:I

.field private mVideoEncodingBitrate:I

.field private mVideoFrameRate:I

.field private mVideoHeight:I

.field private mVideoSource:I

.field private mVideoWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mOutputFormat:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncoder:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncoder:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoWidth:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoHeight:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoFrameRate:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    const v0, 0x3e800

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I

    iput v1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioChannels:I

    const v0, 0xbb80

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSamplingRate:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoSource:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mMaxDuration:I

    iput v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mRecordingMode:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSource:I

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mResolutionId:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoWidth:I

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getIntHeight(I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoHeight:I

    sget-object v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->VideoBitrateTable:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    # getter for: Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->mVideoSizeIntervalTable:Landroid/util/SparseArray;
    invoke-static {}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;->access$1500()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not found bitrate and file size interval"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mOutputFormat:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mMaxDuration:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncoder:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioChannels:I

    return v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSamplingRate:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSource:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mRecordingMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncoder:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoFrameRate:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoSource:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    return v0
.end method


# virtual methods
.method public audioChannels(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioChannels:I

    return-object p0
.end method

.method public audioEncoder(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncoder:I

    return-object p0
.end method

.method public audioEncodingBitrate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioEncodingBitrate:I

    return-object p0
.end method

.method public audioSamplingRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSamplingRate:I

    return-object p0
.end method

.method public audioSource(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mAudioSource:I

    return-object p0
.end method

.method public build()Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;)V

    return-object v0
.end method

.method public fileSizeInterval(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mFileSizeInterval:I

    return-object p0
.end method

.method public maxDuration(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mMaxDuration:I

    return-object p0
.end method

.method public outputFormat(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mOutputFormat:I

    return-object p0
.end method

.method public recordingMode(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mRecordingMode:I

    return-object p0
.end method

.method public videoEncoder(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncoder:I

    return-object p0
.end method

.method public videoEncodingBitrate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    int-to-long v0, p1

    iget v2, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    int-to-long v2, v2

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "too little encoding bitrate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    return-object p0
.end method

.method public videoEncodingBitrate(Landroid/util/SparseArray;)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mResolutionId:I

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoEncodingBitrate:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not found bitrate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public videoFrameRate(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoFrameRate:I

    return-object p0
.end method

.method public videoHeight(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoHeight:I

    return-object p0
.end method

.method public videoSource(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoSource:I

    return-object p0
.end method

.method public videoWidth(I)Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/util/MediaRecorderProfile$Builder;->mVideoWidth:I

    return-object p0
.end method
