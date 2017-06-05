.class public Lcom/samsung/android/media/face/SemFaceLandmark$Settings;
.super Ljava/lang/Object;
.source "Unknown"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFaceLandmark;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field private mEnableProfileDetection:Z

.field private mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;->LANDMARK_35_KEYPOINTS:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    iput-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    return-void
.end method


# virtual methods
.method public getEngineOption()Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-object v0
.end method

.method public isProfileDetectionOptionEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEnableProfileDetection:Z

    return v0
.end method

.method public setEngineOption(Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/media/face/SemFaceLandmark$Settings;->mEngineOption:Lcom/samsung/android/media/face/SemFaceLandmark$EngineOption;

    return-void
.end method
