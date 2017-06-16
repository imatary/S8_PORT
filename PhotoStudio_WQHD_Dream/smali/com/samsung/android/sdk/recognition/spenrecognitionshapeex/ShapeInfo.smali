.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;
.super Ljava/lang/Object;
.source "ShapeInfo.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_6(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_2(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;F)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2, p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_1(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;FF)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v1

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v2

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_3(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;FF)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_5(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;F)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2, p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapeInfo__SWIG_4(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    goto :goto_0
.end method

.method public static getDefaultRelevance()F
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_DefaultRelevance_get()F

    move-result v0

    return v0
.end method

.method public static nameByType(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_nameByType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustToAxis()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_adjustToAxis__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z

    move-result v0

    return v0
.end method

.method public adjustToAxis(F)Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_adjustToAxis__SWIG_0(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;F)Z

    move-result v0

    return v0
.end method

.method public angle()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_angle(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)F

    move-result v0

    return v0
.end method

.method public clone()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_clone(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;-><init>(JZ)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->clone()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;

    move-result-object v0

    return-object v0
.end method

.method public compare(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_ShapeInfo(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->delete()V

    return-void
.end method

.method public generatePoints(J)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;
    .locals 5

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v2, v3, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_generatePoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;J)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/VectorPointFVectors;-><init>(JZ)V

    return-object v0
.end method

.method public getBounds()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_getBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v0
.end method

.method public getRecognizedPoints()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_getRecognizedPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;-><init>(JZ)V

    return-object v0
.end method

.method public getRecognizedPointsByRef()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_getRecognizedPointsByRef(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;-><init>(JZ)V

    return-object v0
.end method

.method public getRelevance()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_getRelevance(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)F

    move-result v0

    return v0
.end method

.method public getShapeType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_getShapeType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTrace()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_getTrace(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isClosedShape()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_isClosedShape(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z

    move-result v0

    return v0
.end method

.method public isComplexShape()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_isComplexShape(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_isValid(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Z

    move-result v0

    return v0
.end method

.method public setAngle(FLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V
    .locals 7

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)J

    move-result-wide v4

    move-object v2, p0

    move v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_setAngle(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;FJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointF;)V

    return-void
.end method

.method public setRecognizedPoints(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_setRecognizedPoints(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PointFVector;)V

    return-void
.end method

.method public setRelevance(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_setRelevance(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;F)V

    return-void
.end method

.method public setTrace(Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_setTrace(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;Ljava/lang/String;)V

    return-void
.end method

.method public shapeTypeToString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapeInfo_shapeTypeToString(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
