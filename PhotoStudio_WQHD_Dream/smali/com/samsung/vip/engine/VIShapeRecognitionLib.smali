.class public Lcom/samsung/vip/engine/VIShapeRecognitionLib;
.super Ljava/lang/Object;
.source "VIShapeRecognitionLib.java"


# static fields
.field public static final LIBNAME:Ljava/lang/String; = "SPenRecognitionShape"

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String; = "0.8.3"

.field private static final VI_SH_ENGINE_RAM_SIZE:I = 0xa00000


# instance fields
.field private mXstrokeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mYstrokeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<[F>;"
        }
    .end annotation
.end field

.field private mbInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mbInitialized:Z

    iput-object v1, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    iput-object v1, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    return-void
.end method

.method private native VISH_ClearScene()V
.end method

.method private native VISH_ClearSelected()V
.end method

.method private native VISH_DeObject()V
.end method

.method private native VISH_DeleteChoosenPrimitive()S
.end method

.method private native VISH_GetGraphPrimitiveArray()[Lcom/samsung/vip/engine/shape/GraphPrimitive;
.end method

.method private native VISH_GetLastShapeType()I
.end method

.method private native VISH_GetLastStrokeBreakPoints()[I
.end method

.method private native VISH_InitSmartShapeEngine(I)V
.end method

.method private native VISH_InitSmartShapeEngineWithData(ILjava/lang/String;)V
.end method

.method private native VISH_JoinSelectedObject()V
.end method

.method private native VISH_PrimitiveRotate([I[I)I
.end method

.method private native VISH_PrimitiveTranslate([F)I
.end method

.method private native VISH_PrimitiveZoom([I[I)I
.end method

.method private native VISH_ReleaseSmartShapeEngine()V
.end method

.method private native VISH_SearchPrimitive(I[I)S
.end method

.method private native VISH_SetDeviceDPI(I)V
.end method

.method private native VISH_UpdateMovePrimitivesData([F)V
.end method

.method private native VISH_UpdateScene([I)V
.end method


# virtual methods
.method public declared-synchronized addStroke([F[F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearScene()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_ClearScene()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mbInitialized:Z

    invoke-direct {p0}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_ReleaseSmartShapeEngine()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPrimitiveName(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string v0, ""

    :goto_0
    return-object v0

    :pswitch_1
    const-string v0, "line"

    goto :goto_0

    :pswitch_2
    const-string v0, "arrow"

    goto :goto_0

    :pswitch_3
    const-string v0, "bezier"

    goto :goto_0

    :pswitch_4
    const-string v0, "circle"

    goto :goto_0

    :pswitch_5
    const-string v0, "circlearc"

    goto :goto_0

    :pswitch_6
    const-string v0, "ellipse"

    goto :goto_0

    :pswitch_7
    const-string v0, "polygon"

    goto :goto_0

    :pswitch_8
    const-string v0, "ellipsearc"

    goto :goto_0

    :pswitch_9
    const-string v0, "table"

    goto :goto_0

    :pswitch_a
    const-string v0, "group"

    goto :goto_0

    :pswitch_b
    const-string v0, "polyline"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_9
        :pswitch_b
    .end packed-switch
.end method

.method public init()V
    .locals 1

    const/high16 v0, 0xa00000

    invoke-direct {p0, v0}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_InitSmartShapeEngine(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mbInitialized:Z

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 1

    const/high16 v0, 0xa00000

    invoke-direct {p0, v0, p1}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_InitSmartShapeEngineWithData(ILjava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mbInitialized:Z

    return-void
.end method

.method public loadLibrary(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized recog()[Lcom/samsung/vip/engine/shape/GraphPrimitive;
    .locals 12

    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_1

    const/4 v3, 0x0

    mul-int/lit8 v9, v7, 0x2

    new-array v8, v9, [I

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v6, :cond_2

    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->clear()V

    invoke-direct {p0, v8}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_UpdateScene([I)V

    invoke-direct {p0}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_GetGraphPrimitiveArray()[Lcom/samsung/vip/engine/shape/GraphPrimitive;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :cond_0
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    array-length v9, v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    array-length v5, v9

    const/4 v2, 0x0

    move v4, v3

    :goto_3
    if-lt v2, v5, :cond_3

    add-int/lit8 v3, v4, 0x1

    const v9, 0xffff

    aput v9, v8, v4

    add-int/lit8 v4, v3, 0x1

    const/4 v9, 0x0

    aput v9, v8, v3

    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v4, 0x1

    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mXstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    aget v9, v9, v2

    float-to-int v9, v9

    aput v9, v8, v4

    add-int/lit8 v4, v3, 0x1

    iget-object v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mYstrokeList:Ljava/util/LinkedList;

    invoke-virtual {v9, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [F

    aget v9, v9, v2

    float-to-int v9, v9

    aput v9, v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    sget-object v9, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Result group # : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mbInitialized:Z

    if-nez v9, :cond_0

    sget-object v9, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Initialized : "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v11, p0, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->mbInitialized:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public setDeviceDPI(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/vip/engine/VIShapeRecognitionLib;->VISH_SetDeviceDPI(I)V

    return-void
.end method
