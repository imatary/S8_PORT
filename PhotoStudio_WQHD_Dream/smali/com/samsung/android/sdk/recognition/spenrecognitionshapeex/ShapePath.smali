.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;
.super Ljava/lang/Object;
.source "ShapePath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;,
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapePath__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;F)V
    .locals 4

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;->ordinal()I

    move-result v0

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p2, p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapePath__SWIG_1(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;)V
    .locals 7

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;->ordinal()I

    move-result v1

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;)J

    move-result-wide v2

    invoke-virtual {p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ordinal()I

    move-result v5

    invoke-virtual {p4}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;->ordinal()I

    move-result v6

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapePath__SWIG_2(IJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;II)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_ShapePath__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_ShapePath(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->delete()V

    return-void
.end method

.method public getAngleOfShape()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getAngleOfShape(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)F

    move-result v0

    return v0
.end method

.method public getBeginPointType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getBeginPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getBounds()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getBounds(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RectF;-><init>(JZ)V

    return-object v0
.end method

.method public getEndPointType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$ArrowType;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getEndPointType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPathSegments()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getPathSegments(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegmentVector;-><init>(JZ)V

    return-object v0
.end method

.method public getType()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getType(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTypeString()Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_getTypeString(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public swap(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)V
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->ShapePath_swap(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath;)V

    return-void
.end method
