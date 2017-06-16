.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;
.super Ljava/lang/Object;
.source "ConnectorInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;,
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorInfo__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
    .locals 13

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;->ordinal()I

    move-result v1

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v2

    invoke-static/range {p3 .. p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v5

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ordinal()I

    move-result v8

    invoke-virtual/range {p5 .. p5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ordinal()I

    move-result v9

    invoke-static/range {p6 .. p6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v10

    move-object v4, p2

    move-object/from16 v7, p3

    move-object/from16 v12, p6

    invoke-static/range {v1 .. v12}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorInfo__SWIG_3(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;IIJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorInfo__SWIG_4(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
    .locals 6

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorInfo__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;)V
    .locals 8

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    invoke-virtual {p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ordinal()I

    move-result v6

    invoke-virtual {p4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ordinal()I

    move-result v7

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ConnectorInfo__SWIG_2(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_ConnectorInfo(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->delete()V

    return-void
.end method

.method public getBeginPoint()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_getBeginPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getBeginPointType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_getBeginPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBendPoints()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_getBendPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;-><init>(JZ)V

    return-object v0
.end method

.method public getConnectorType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ConnectorType;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_getConnectorType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getEndPoint()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_getEndPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;-><init>(JZ)V

    return-object v0
.end method

.method public getEndPointType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_getEndPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public removeBendPoint(J)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_removeBendPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;J)V

    return-void
.end method

.method public setBeginPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_setBeginPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V

    return-void
.end method

.method public setBeginPointType(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_setBeginPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;I)V

    return-void
.end method

.method public setBendPoints(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_setBendPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V

    return-void
.end method

.method public setEndPoint(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_setEndPoint(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V

    return-void
.end method

.method public setEndPointType(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo$ArrowType;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ConnectorInfo_setEndPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ConnectorInfo;I)V

    return-void
.end method
