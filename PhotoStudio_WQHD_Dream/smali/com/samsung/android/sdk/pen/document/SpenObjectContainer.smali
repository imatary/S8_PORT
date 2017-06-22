.class final Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
.super Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.source "SpenObjectContainer.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_init2(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)V"
        }
    .end annotation

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_init3(Ljava/util/ArrayList;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_init3(Ljava/util/ArrayList;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method private native ObjectContainer_IsInvisibleChildResizingEnabled()Z
.end method

.method private native ObjectContainer_appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectContainer_appendObjectList(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectContainer_clearChangedFlag()V
.end method

.method private native ObjectContainer_copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectContainer_enableUngrouping(Z)Z
.end method

.method private native ObjectContainer_getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native ObjectContainer_getObjectList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native ObjectContainer_getRect()Landroid/graphics/RectF;
.end method

.method private native ObjectContainer_init1()Z
.end method

.method private native ObjectContainer_init2(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectContainer_init3(Ljava/util/ArrayList;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method private native ObjectContainer_isChanged()Z
.end method

.method private native ObjectContainer_isUngroupable()Z
.end method

.method private native ObjectContainer_move(FF)Z
.end method

.method private native ObjectContainer_removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native ObjectContainer_removeObjectList(Ljava/util/ArrayList;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)Z"
        }
    .end annotation
.end method

.method private native ObjectContainer_resize(FF)Z
.end method

.method private native ObjectContainer_setInvisibleChildResizingEnabled(Z)Z
.end method

.method private native ObjectContainer_setRotation(F)Z
.end method

.method private throwUncheckedException(I)V
    .locals 3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenObjectContainer("

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
.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendObject(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_appendObjectList(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearChangedFlag()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_clearChangedFlag()V

    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_copy(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getObjectList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_getObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_getRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public isChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_isChanged()Z

    move-result v0

    return v0
.end method

.method public isInvisibleChildResizeEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_IsInvisibleChildResizingEnabled()Z

    move-result v0

    return v0
.end method

.method public isUngroupEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_isUngroupable()Z

    move-result v0

    return v0
.end method

.method public removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeObject(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_removeObjectList(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setInvisibleChildResizeEnabled(Z)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_setInvisibleChildResizingEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setRect(Landroid/graphics/RectF;Z)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectBase;->setRect(Landroid/graphics/RectF;Z)V

    return-void
.end method

.method public setRotation(F)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_setRotation(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUngroupEnabled(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->ObjectContainer_enableUngrouping(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
