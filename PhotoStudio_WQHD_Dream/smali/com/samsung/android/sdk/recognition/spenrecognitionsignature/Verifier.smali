.class public Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;
.super Ljava/lang/Object;
.source "Verifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier$StrictnessLevel;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_Verifier(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->delete_Verifier(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->delete()V

    return-void
.end method

.method public getModel()Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_getModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/UserModel;-><init>(JZ)V

    return-object v0
.end method

.method public getStrictnessLevel()Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier$StrictnessLevel;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier$StrictnessLevel;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier$StrictnessLevel;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_getStrictnessLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isAddExtraSignatures()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_isAddExtraSignatures(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)Z

    move-result v0

    return v0
.end method

.method public isAddExtraSignaturesToFullModel()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_isAddExtraSignaturesToFullModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)Z

    move-result v0

    return v0
.end method

.method public isAuthentic(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_isAuthentic(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z

    move-result v0

    return v0
.end method

.method public isModelChanged()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_isModelChanged(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;)Z

    move-result v0

    return v0
.end method

.method public setAddExtraSignatures(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_setAddExtraSignatures(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;Z)V

    return-void
.end method

.method public setAddExtraSignaturesToFullModel(Z)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_setAddExtraSignaturesToFullModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;Z)V

    return-void
.end method

.method public setStrictnessLevel(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier$StrictnessLevel;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier$StrictnessLevel;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->Verifier_setStrictnessLevel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Verifier;I)V

    return-void
.end method
