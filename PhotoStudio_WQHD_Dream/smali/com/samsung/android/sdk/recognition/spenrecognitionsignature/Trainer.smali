.class public Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;
.super Ljava/lang/Object;
.source "Trainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$SimplicityLevel;,
        Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;
    }
.end annotation


# static fields
.field public static final MAX_SIGNATURES_AMOUNT:I

.field public static final MIN_NUMBER_OF_POINTS_IN_SIGNATURE:I

.field public static final MIN_SIGNATURES_AMOUNT:I


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_MIN_SIGNATURES_AMOUNT_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->MIN_SIGNATURES_AMOUNT:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_MAX_SIGNATURES_AMOUNT_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->MAX_SIGNATURES_AMOUNT:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_MIN_NUMBER_OF_POINTS_IN_SIGNATURE_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->MIN_NUMBER_OF_POINTS_IN_SIGNATURE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_Trainer__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_Trainer__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public addSignature(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;
    .locals 7

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$EResult;

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_addSignature(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)I

    move-result v0

    aget-object v0, v6, v0

    return-object v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->delete_Trainer(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->delete()V

    return-void
.end method

.method public getSignaturesNumber()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_getSignaturesNumber(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSimplicityLevel()Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$SimplicityLevel;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$SimplicityLevel;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$SimplicityLevel;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_getSimplicityLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getValidateNextSignature()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_getValidateNextSignature(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)Z

    move-result v0

    return v0
.end method

.method public isSimplicityChecking()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_isSimplicityChecking(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)Z

    move-result v0

    return v0
.end method

.method public setSimplicityChecking(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_setSimplicityChecking(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;Z)V

    return-void
.end method

.method public setSimplicityLevel(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$SimplicityLevel;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer$SimplicityLevel;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_setSimplicityLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;I)V

    return-void
.end method

.method public setValidateNextSignature(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_setValidateNextSignature(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;Z)V

    return-void
.end method

.method public trainModel()Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Trainer_trainModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Trainer;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;-><init>(JZ)V

    return-object v0
.end method
