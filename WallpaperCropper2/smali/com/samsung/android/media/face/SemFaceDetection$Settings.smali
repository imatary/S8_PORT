.class public Lcom/samsung/android/media/face/SemFaceDetection$Settings;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceDetection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableFrontalRollSearch:Z

.field private mEnableFrontalTiltDownSearch:Z

.field private mEnableProfileSearch:Z

.field private mMaxFaceSize:F

.field private mMinFaceSize:F

.field private mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;->HIGH_DETECTION_RATE_MODE:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    iput v2, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    iput v2, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    iput-boolean v1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    iput-boolean v1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    return-void
.end method


# virtual methods
.method public getMaxFaceSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    return v0
.end method

.method public getMinFaceSize()F
    .locals 1

    iget v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    return v0
.end method

.method public getProcessingMode()Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-object v0
.end method

.method public isFrontalRollSearchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    return v0
.end method

.method public isFrontalTiltDownSearchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    return v0
.end method

.method public isProfileSearchEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    return v0
.end method

.method public setFrontalRollSearchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalRollSearch:Z

    return-void
.end method

.method public setFrontalTiltDownSearchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableFrontalTiltDownSearch:Z

    return-void
.end method

.method public setMaxFaceSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMaxFaceSize:F

    return-void
.end method

.method public setMinFaceSize(F)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mMinFaceSize:F

    return-void
.end method

.method public setProcessingMode(Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mProcessingMode:Lcom/samsung/android/media/face/SemFaceDetection$ProcessingMode;

    return-void
.end method

.method public setProfileSearchEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/media/face/SemFaceDetection$Settings;->mEnableProfileSearch:Z

    return-void
.end method
