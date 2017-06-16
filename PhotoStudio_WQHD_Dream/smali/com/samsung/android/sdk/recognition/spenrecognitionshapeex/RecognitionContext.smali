.class public Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;
.super Ljava/lang/Object;
.source "RecognitionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;
    }
.end annotation


# instance fields
.field protected swigCMemOwn:Z

.field private swigCPtr:J


# direct methods
.method public constructor <init>(F)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RecognitionContext__SWIG_0(F)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RecognitionContext__SWIG_2(FJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;-><init>(JZ)V

    return-void
.end method

.method public constructor <init>(FLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;)V
    .locals 3

    invoke-static {p2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;)J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;->ordinal()I

    move-result v2

    invoke-static {p1, v0, v1, p2, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RecognitionContext__SWIG_1(FJLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeTypeVector;I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p3, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCMemOwn:Z

    iput-wide p1, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)V
    .locals 3

    invoke-static {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->new_RecognitionContext__SWIG_3(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;-><init>(JZ)V

    return-void
.end method

.method protected static getCPtr(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 4

    const-wide/16 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCMemOwn:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCMemOwn:Z

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->delete_RecognitionContext(J)V

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J
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

    invoke-virtual {p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->delete()V

    return-void
.end method

.method public getPPI()F
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionContext_getPPI(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)F

    move-result v0

    return v0
.end method

.method public getRecognitionMode()Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;
    .locals 4

    const-class v0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext$RecognitionMode;

    iget-wide v2, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    invoke-static {v2, v3, p0}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionContext_getRecognitionMode(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isShapeAvailable(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;)Z
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionContext_isShapeAvailable(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;I)Z

    move-result v0

    return v0
.end method

.method public shouldRecognize(Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;)Z
    .locals 3

    iget-wide v0, p0, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;->swigCPtr:J

    invoke-virtual {p1}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/ShapeType;->ordinal()I

    move-result v2

    invoke-static {v0, v1, p0, v2}, Lcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionEngineJNI;->RecognitionContext_shouldRecognize(JLcom/samsung/android/sdk/recognition/spenrecognitionshapeex/RecognitionContext;I)Z

    move-result v0

    return v0
.end method
