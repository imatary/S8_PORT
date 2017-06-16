.class public final Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.source "SpenObjectStroke.java"


# static fields
.field public static final TOOL_TYPE_ERASER:I = 0x4

.field public static final TOOL_TYPE_FINGER:I = 0x1

.field public static final TOOL_TYPE_MOUSE:I = 0x3

.field public static final TOOL_TYPE_SPEN:I = 0x2

.field public static final TOOL_TYPE_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init1(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 7

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    if-eqz p2, :cond_1

    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_0

    array-length v1, p2

    array-length v2, p4

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init3(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    if-eqz p2, :cond_1

    array-length v1, p2

    array-length v2, p3

    if-ne v1, v2, :cond_0

    array-length v1, p2

    array-length v2, p4

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[F)V
    .locals 5

    const/4 v4, 0x7

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    array-length v2, p2

    array-length v3, p3

    if-ne v2, v3, :cond_0

    array-length v2, p2

    array-length v3, p4

    if-ne v2, v3, :cond_0

    array-length v2, p2

    array-length v3, p5

    if-ne v2, v3, :cond_0

    array-length v2, p2

    array-length v3, p6

    if-eq v2, v3, :cond_1

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_1
    if-nez p5, :cond_2

    if-eqz p6, :cond_2

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    if-eqz p5, :cond_3

    if-nez p6, :cond_3

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_3
    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init5(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[F)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SpenObjectStroke"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init3(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[FZ)V
    .locals 8

    const/4 v2, 0x7

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    array-length v0, p2

    array-length v1, p3

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p4

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p5

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p6

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_1
    if-nez p5, :cond_2

    if-eqz p6, :cond_2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_2
    if-eqz p5, :cond_3

    if-nez p6, :cond_3

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_3
    :try_start_0
    invoke-direct/range {p0 .. p7}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init6(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[FZ)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    return-void

    :catch_0
    move-exception v6

    const-string v0, "SpenObjectStroke"

    const-string v1, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_init4(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private native ObjectStroke_addPoint4(Landroid/graphics/PointF;FI)Z
.end method

.method private native ObjectStroke_addPoint5(Landroid/graphics/PointF;FIFF)Z
.end method

.method private native ObjectStroke_copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectStroke_enableCurve(Z)Z
.end method

.method private native ObjectStroke_getAdvancedPenSetting()Ljava/lang/String;
.end method

.method private native ObjectStroke_getColor()I
.end method

.method private native ObjectStroke_getDefaultPenName()Ljava/lang/String;
.end method

.method private native ObjectStroke_getInputType()I
.end method

.method private native ObjectStroke_getOrientations()[F
.end method

.method private native ObjectStroke_getPenName()Ljava/lang/String;
.end method

.method private native ObjectStroke_getPenSize()F
.end method

.method private native ObjectStroke_getPoints()[Landroid/graphics/PointF;
.end method

.method private native ObjectStroke_getPressures()[F
.end method

.method private native ObjectStroke_getTilts()[F
.end method

.method private native ObjectStroke_getTimeStamps()[I
.end method

.method private native ObjectStroke_getToolType()I
.end method

.method private native ObjectStroke_getXPoints()[F
.end method

.method private native ObjectStroke_getYPoints()[F
.end method

.method private native ObjectStroke_init1(Ljava/lang/String;)Z
.end method

.method private native ObjectStroke_init3(Ljava/lang/String;[Landroid/graphics/PointF;[F[I)Z
.end method

.method private native ObjectStroke_init4(Ljava/lang/String;[Landroid/graphics/PointF;[F[IZ)Z
.end method

.method private native ObjectStroke_init5(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[F)Z
.end method

.method private native ObjectStroke_init6(Ljava/lang/String;[Landroid/graphics/PointF;[F[I[F[FZ)Z
.end method

.method private native ObjectStroke_isCurvable()Z
.end method

.method private native ObjectStroke_move(FF)Z
.end method

.method private native ObjectStroke_resize(FF)Z
.end method

.method private native ObjectStroke_setAdvancedPenSetting(Ljava/lang/String;)Z
.end method

.method private native ObjectStroke_setColor(I)Z
.end method

.method private native ObjectStroke_setDefaultPenName(Ljava/lang/String;)Z
.end method

.method private native ObjectStroke_setInputType(I)Z
.end method

.method private native ObjectStroke_setPenName(Ljava/lang/String;)Z
.end method

.method private native ObjectStroke_setPenSize(F)Z
.end method

.method private native ObjectStroke_setPoints([Landroid/graphics/PointF;[F[I)Z
.end method

.method private native ObjectStroke_setPoints2([Landroid/graphics/PointF;[F[I[F[F)Z
.end method

.method private native ObjectStroke_setRotation(F)Z
.end method

.method private native ObjectStroke_setToolType(I)Z
.end method

.method private throwUncheckedException(I)V
    .locals 3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenObjectStroke("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;FI)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_addPoint4(Landroid/graphics/PointF;FI)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public addPoint(Landroid/graphics/PointF;FIFF)V
    .locals 4

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_addPoint5(Landroid/graphics/PointF;FIFF)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "SpenObjectStroke"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_addPoint4(Landroid/graphics/PointF;FI)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    goto :goto_0
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public getAdvancedPenSetting()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getAdvancedPenSetting()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColor()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getColor()I

    move-result v0

    return v0
.end method

.method public getDefaultPenName()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getDefaultPenName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenObjectStroke"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getOrientations()[F
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getOrientations()[F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenObjectStroke"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPenName()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPenName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPenSize()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPenSize()F

    move-result v0

    return v0
.end method

.method public getPoints()[Landroid/graphics/PointF;
    .locals 9

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getXPoints()[F

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getYPoints()[F

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    array-length v6, v4

    if-eqz v6, :cond_0

    array-length v6, v5

    if-nez v6, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    array-length v2, v4

    new-array v3, v2, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    new-instance v6, Landroid/graphics/PointF;

    aget v7, v4, v1

    aget v8, v5, v1

    invoke-direct {v6, v7, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v6, v3, v1
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v6, "SpenObjectStroke"

    const-string v7, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPoints()[Landroid/graphics/PointF;

    move-result-object v3

    goto :goto_0
.end method

.method public getPressures()[F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getPressures()[F

    move-result-object v0

    return-object v0
.end method

.method public getTilts()[F
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getTilts()[F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenObjectStroke"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTimeStamps()[I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getTimeStamps()[I

    move-result-object v0

    return-object v0
.end method

.method public getToolType()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getToolType()I

    move-result v0

    return v0
.end method

.method public getXPoints()[F
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getXPoints()[F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenObjectStroke"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getYPoints()[F
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_getYPoints()[F
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenObjectStroke"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCurveEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_isCurvable()Z

    move-result v0

    return v0
.end method

.method public setAdvancedPenSetting(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setAdvancedPenSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setCurveEnabled(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_enableCurve(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setDefaultPenName(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setDefaultPenName(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenObjectStroke"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPenName(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPenName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPenSize(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPenSize(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;[F[I)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->setPoints([Landroid/graphics/PointF;[F[I[F[F)V

    return-void
.end method

.method public setPoints([Landroid/graphics/PointF;[F[I[F[F)V
    .locals 5

    const/4 v4, 0x7

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :try_start_0
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPoints2([Landroid/graphics/PointF;[F[I[F[F)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_2

    array-length v2, p1

    array-length v3, p3

    if-eq v2, v3, :cond_3

    :cond_2
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_3
    if-nez p4, :cond_4

    if-nez p5, :cond_6

    :cond_4
    if-eqz p4, :cond_5

    if-eqz p5, :cond_6

    :cond_5
    if-eqz p4, :cond_7

    if-eqz p5, :cond_7

    array-length v2, p1

    array-length v3, p4

    if-ne v2, v3, :cond_6

    array-length v2, p1

    array-length v3, p5

    if-eq v2, v3, :cond_7

    :cond_6
    const/4 v2, 0x7

    invoke-static {v2}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_7
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPoints2([Landroid/graphics/PointF;[F[I[F[F)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "SpenObjectStroke"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-nez p1, :cond_8

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPoints([Landroid/graphics/PointF;[F[I)Z

    move-result v1

    :goto_2
    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    goto :goto_1

    :cond_8
    array-length v2, p1

    array-length v3, p2

    if-ne v2, v3, :cond_9

    array-length v2, p1

    array-length v3, p3

    if-eq v2, v3, :cond_a

    :cond_9
    invoke-static {v4}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setPoints([Landroid/graphics/PointF;[F[I)Z

    move-result v1

    goto :goto_2
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setRotation(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setToolType(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->ObjectStroke_setToolType(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
