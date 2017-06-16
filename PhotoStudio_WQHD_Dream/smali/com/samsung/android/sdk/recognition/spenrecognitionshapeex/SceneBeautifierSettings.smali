.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;
.super Ljava/lang/Object;
.source "SceneBeautifierSettings.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_SceneBeautifierSettings()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_SceneBeautifierSettings(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->delete()V

    return-void
.end method

.method public getAlignSettings()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_alignSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;-><init>(JZ)V

    goto :goto_0
.end method

.method public getCircumscriberSettings()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_circumscriberSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;-><init>(JZ)V

    goto :goto_0
.end method

.method public getConnectorSettings()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_connectorSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;-><init>(JZ)V

    goto :goto_0
.end method

.method public getLinkerSettings()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;
    .locals 4

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_linkerSettings_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;)J

    move-result-wide v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;-><init>(JZ)V

    goto :goto_0
.end method

.method public setAlignSettings(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_alignSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneAlignSettings;)V

    return-void
.end method

.method public setCircumscriberSettings(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_circumscriberSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneCircumscriberSettings;)V

    return-void
.end method

.method public setConnectorSettings(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_connectorSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneConnectorSettings;)V

    return-void
.end method

.method public setLinkerSettings(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->SceneBeautifierSettings_linkerSettings_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneBeautifierSettings;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/SceneLinkerSettings;)V

    return-void
.end method
