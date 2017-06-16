.class public Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.super Ljava/lang/Object;
.source "SpenObjectBase.java"


# static fields
.field private static final NATIVE_COMMAND_DUMMY:I = 0x0

.field public static final OBJECT_MINIMUM_SIZE:F = 10.0f

.field public static final RESIZE_OPTION_DISABLE:I = 0x2

.field public static final RESIZE_OPTION_FREE:I = 0x0

.field public static final RESIZE_OPTION_KEEP_RATIO:I = 0x1

.field public static final SPEN_INFINITY_FLOAT:F = 3.4028235E38f

.field public static final SPEN_INFINITY_INT:I = 0x7fffffff

.field public static final TYPE_CONTAINER:I = 0x4

.field public static final TYPE_IMAGE:I = 0x3

.field public static final TYPE_LINE:I = 0x8

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_SHAPE:I = 0x7

.field public static final TYPE_STROKE:I = 0x1

.field public static final TYPE_TEXT_BOX:I = 0x2


# instance fields
.field private mHandle:I

.field private final mType:I


# direct methods
.method protected constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mType:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return-void
.end method

.method private native Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectBase_attachFile(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_clearChangedFlag()V
.end method

.method private native ObjectBase_copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectBase_copyExtraData(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectBase_detachFile()Z
.end method

.method private native ObjectBase_enableClip(Z)Z
.end method

.method private native ObjectBase_enableMovement(Z)Z
.end method

.method private native ObjectBase_enableRotation(Z)Z
.end method

.method private native ObjectBase_enableSelection(Z)Z
.end method

.method private native ObjectBase_finalize()V
.end method

.method private native ObjectBase_getAttachedFile()Ljava/lang/String;
.end method

.method private native ObjectBase_getCreateTimeStamp()I
.end method

.method private native ObjectBase_getDrawnRect()Landroid/graphics/RectF;
.end method

.method private native ObjectBase_getExtraDataByteArray(Ljava/lang/String;)[B
.end method

.method private native ObjectBase_getExtraDataInt(Ljava/lang/String;)I
.end method

.method private native ObjectBase_getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native ObjectBase_getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private native ObjectBase_getHistoryManagerId()I
.end method

.method private native ObjectBase_getMaxHeight()F
.end method

.method private native ObjectBase_getMaxWidth()F
.end method

.method private native ObjectBase_getMinHeight()F
.end method

.method private native ObjectBase_getMinWidth()F
.end method

.method private native ObjectBase_getRect()Landroid/graphics/RectF;
.end method

.method private native ObjectBase_getResizeOption()I
.end method

.method private native ObjectBase_getRotation()F
.end method

.method private native ObjectBase_getRuntimeHandle()I
.end method

.method private native ObjectBase_getSorDataByteArray(Ljava/lang/String;)[B
.end method

.method private native ObjectBase_getSorDataInt(Ljava/lang/String;)I
.end method

.method private native ObjectBase_getSorDataString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native ObjectBase_getSorDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private native ObjectBase_getSorInfo()Ljava/lang/String;
.end method

.method private native ObjectBase_getSorPackageLink()Ljava/lang/String;
.end method

.method private native ObjectBase_getTemplateProperty()Z
.end method

.method private native ObjectBase_getType()I
.end method

.method private native ObjectBase_getUserId()I
.end method

.method private native ObjectBase_hasExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasExtraDataString(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataByteArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataInt(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataString(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_hasSorDataStringArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_isChanged()Z
.end method

.method private native ObjectBase_isClippable()Z
.end method

.method private native ObjectBase_isFlipEnabled()Z
.end method

.method private native ObjectBase_isMovable()Z
.end method

.method private native ObjectBase_isRecorded()Z
.end method

.method private native ObjectBase_isRotatable()Z
.end method

.method private native ObjectBase_isSelectable()Z
.end method

.method private native ObjectBase_isVisible()Z
.end method

.method private native ObjectBase_move(FF)Z
.end method

.method private native ObjectBase_removeExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeExtraDataString(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataByteArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataInt(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataString(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_removeSorDataStringArray(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_resize(FF)Z
.end method

.method private native ObjectBase_setCreateTimeStamp(I)Z
.end method

.method private native ObjectBase_setExtraDataByteArray(Ljava/lang/String;[BI)Z
.end method

.method private native ObjectBase_setExtraDataInt(Ljava/lang/String;I)Z
.end method

.method private native ObjectBase_setExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native ObjectBase_setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native ObjectBase_setFlipEnabled(Z)Z
.end method

.method private native ObjectBase_setMaxSize(FF)Z
.end method

.method private native ObjectBase_setMinSize(FF)Z
.end method

.method private native ObjectBase_setRecorded(Z)Z
.end method

.method private native ObjectBase_setRect(Landroid/graphics/RectF;Z)Z
.end method

.method private native ObjectBase_setResizeOption(I)Z
.end method

.method private native ObjectBase_setRotation(F)Z
.end method

.method private native ObjectBase_setSorDataByteArray(Ljava/lang/String;[BI)Z
.end method

.method private native ObjectBase_setSorDataInt(Ljava/lang/String;I)Z
.end method

.method private native ObjectBase_setSorDataString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native ObjectBase_setSorDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native ObjectBase_setSorInfo(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_setSorPackageLink(Ljava/lang/String;)Z
.end method

.method private native ObjectBase_setUserId(I)Z
.end method

.method private native ObjectBase_setVisibility(Z)Z
.end method

.method private throwUncheckedException(I)V
    .locals 3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenObjectBase("

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
.method public attachFile(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_attachFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_clearChangedFlag()V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public detachFile()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_detachFile()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    iget v1, p1, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAttachedFile()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getAttachedFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawnRect()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getDrawnRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxHeight()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMaxHeight()F

    move-result v0

    return v0
.end method

.method public getMaxWidth()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMaxWidth()F

    move-result v0

    return v0
.end method

.method public getMinHeight()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMinHeight()F

    move-result v0

    return v0
.end method

.method public getMinWidth()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getMinWidth()F

    move-result v0

    return v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getResizeOption()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getResizeOption()I

    move-result v0

    return v0
.end method

.method public getRotation()F
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getRotation()F

    move-result v0

    return v0
.end method

.method public getRuntimeHandle()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getRuntimeHandle()I

    move-result v0

    return v0
.end method

.method public getSorDataInt(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorDataInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSorDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSorInfo()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSorPackageLink()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getSorPackageLink()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateProperty()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getTemplateProperty()Z

    move-result v0

    return v0
.end method

.method public getType()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getType()I

    move-result v0

    return v0
.end method

.method public getUserId()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_getUserId()I

    move-result v0

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataByteArray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasExtraDataStringArray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSorDataInt(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasSorDataInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSorDataString(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_hasSorDataString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->mHandle:I

    return v0
.end method

.method public isChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isChanged()Z

    move-result v0

    return v0
.end method

.method public isFlipEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isFlipEnabled()Z

    move-result v0

    return v0
.end method

.method public isMovable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isMovable()Z

    move-result v0

    return v0
.end method

.method public isOutOfViewEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isClippable()Z

    move-result v0

    return v0
.end method

.method public isRecorded()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isRecorded()Z

    move-result v0

    return v0
.end method

.method public isRotatable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isRotatable()Z

    move-result v0

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isSelectable()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_isVisible()Z

    move-result v0

    return v0
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataByteArray(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeExtraDataStringArray(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSorDataInt(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeSorDataInt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSorDataString(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_removeSorDataString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    array-length v1, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    array-length v1, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setFlipEnabled(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setFlipEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setMaxSize(FF)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setMaxSize(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setMinSize(FF)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setMinSize(FF)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setMovable(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableMovement(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setOutOfViewEnabled(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableClip(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRecorded(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setRecorded(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setRect(Landroid/graphics/RectF;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setResizeOption(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setResizeOption(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRotatable(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableRotation(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setRotation(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSelectable(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_enableSelection(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorDataInt(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorDataInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorDataString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorInfo(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorInfo(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setSorPackageLink(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setSorPackageLink(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUserId(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setUserId(I)Z

    move-result v0

    return v0
.end method

.method public setVisibility(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->ObjectBase_setVisibility(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
