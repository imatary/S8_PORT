.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;
.super Ljava/lang/Object;
.source "TypeVector.java"


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_TypeVector__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_TypeVector__SWIG_1(J)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public add(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_add(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;I)V

    return-void
.end method

.method public capacity()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_capacity(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public clear()V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_clear(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)V

    return-void
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_TypeVector(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->delete()V

    return-void
.end method

.method public get(I)Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v2, v3, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isEmpty()Z
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_isEmpty(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)Z

    move-result v0

    return v0
.end method

.method public reserve(J)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_reserve(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;J)V

    return-void
.end method

.method public set(ILcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;)V
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-virtual {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapePath$Type;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, p1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;II)V

    return-void
.end method

.method public size()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->TypeVector_size(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/TypeVector;)J

    move-result-wide v0

    return-wide v0
.end method
