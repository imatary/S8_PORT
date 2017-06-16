.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;
.super Ljava/lang/Object;
.source "PathSegment.java"


# static fields
.field public static final TYPE_ARCTO:I

.field public static final TYPE_CLOSE:I

.field public static final TYPE_CUBICTO:I

.field public static final TYPE_LINETO:I

.field public static final TYPE_MOVETO:I

.field public static final TYPE_QUADTO:I


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_TYPE_MOVETO_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->TYPE_MOVETO:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_TYPE_LINETO_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->TYPE_LINETO:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_TYPE_QUADTO_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->TYPE_QUADTO:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_TYPE_CUBICTO_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->TYPE_CUBICTO:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_TYPE_ARCTO_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->TYPE_ARCTO:I

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_TYPE_CLOSE_get()I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->TYPE_CLOSE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_PathSegment__SWIG_0()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_PathSegment__SWIG_1(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)Z
    .locals 6

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_compare(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_PathSegment(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->delete()V

    return-void
.end method

.method public getType()I
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_type_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)I

    move-result v0

    return v0
.end method

.method public getX()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_x_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F

    move-result v0

    return v0
.end method

.method public getX1()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_x1_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F

    move-result v0

    return v0
.end method

.method public getX2()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_x2_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F

    move-result v0

    return v0
.end method

.method public getY()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_y_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F

    move-result v0

    return v0
.end method

.method public getY1()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_y1_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F

    move-result v0

    return v0
.end method

.method public getY2()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_y2_get(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;)F

    move-result v0

    return v0
.end method

.method public setType(I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_type_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;I)V

    return-void
.end method

.method public setX(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_x_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V

    return-void
.end method

.method public setX1(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_x1_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V

    return-void
.end method

.method public setX2(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_x2_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V

    return-void
.end method

.method public setY(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_y_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V

    return-void
.end method

.method public setY1(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_y1_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V

    return-void
.end method

.method public setY2(F)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->PathSegment_y2_set(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/PathSegment;F)V

    return-void
.end method
