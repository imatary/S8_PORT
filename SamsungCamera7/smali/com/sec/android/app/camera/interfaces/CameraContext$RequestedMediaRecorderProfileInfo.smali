.class public Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;
.super Ljava/lang/Object;
.source "CameraContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/interfaces/CameraContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequestedMediaRecorderProfileInfo"
.end annotation


# static fields
.field public static final NOT_REQUESTED:I = -0x1


# instance fields
.field public audioBitrate:I

.field public audioChannels:I

.field public audioEncoder:I

.field public audioSamplingRate:I

.field public fileSizeInterval:I

.field public outputFormat:I

.field public videoBitrate:I

.field public videoEncoder:I

.field public videoFps:I


# direct methods
.method public constructor <init>(IIIIIIIII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->outputFormat:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioChannels:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    iput v0, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    iput p1, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoEncoder:I

    iput p2, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoBitrate:I

    iput p3, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->videoFps:I

    iput p4, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->outputFormat:I

    iput p5, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioEncoder:I

    iput p6, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioBitrate:I

    iput p7, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioChannels:I

    iput p8, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->audioSamplingRate:I

    iput p9, p0, Lcom/sec/android/app/camera/interfaces/CameraContext$RequestedMediaRecorderProfileInfo;->fileSizeInterval:I

    return-void
.end method
