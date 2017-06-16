.class public Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;
.super Ljava/lang/Object;
.source "SignatureEngine.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->new_SignatureEngine()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public clearModel()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->SignatureEngine_clearModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->delete_SignatureEngine(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->delete()V

    return-void
.end method

.method public getModel()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->SignatureEngine_getModel(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRegisteredCount()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->SignatureEngine_getRegisteredCount(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)I

    move-result v0

    return v0
.end method

.method public initRegister()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->SignatureEngine_initRegister(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;)V

    return-void
.end method

.method public signatureRegister(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->SignatureEngine_signatureRegister(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z

    move-result v0

    return v0
.end method

.method public verify(Ljava/lang/String;Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;->swigCPtr:J

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionsignature/RecognitionEngineJNI;->SignatureEngine_verify(JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/SignatureEngine;Ljava/lang/String;JLcom/samsung/android/sdk/recognition/spenrecognitionsignature/Signature;)Z

    move-result v0

    return v0
.end method
