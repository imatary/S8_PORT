.class public final Lcom/samsung/android/sdk/pen/document/SpenPageDoc;
.super Ljava/lang/Object;
.source "SpenPageDoc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectEventListener;,
        Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;
    }
.end annotation


# static fields
.field public static final BACKGROUND_IMAGE_MODE_CENTER:I = 0x0

.field public static final BACKGROUND_IMAGE_MODE_FIT:I = 0x2

.field public static final BACKGROUND_IMAGE_MODE_STRETCH:I = 0x1

.field public static final BACKGROUND_IMAGE_MODE_TILE:I = 0x3

.field public static final FIND_TYPE_ALL:I = 0xff

.field public static final FIND_TYPE_CONTAINER:I = 0x8

.field public static final FIND_TYPE_IMAGE:I = 0x4

.field public static final FIND_TYPE_LINE:I = 0x80

.field public static final FIND_TYPE_SHAPE:I = 0x40

.field public static final FIND_TYPE_STROKE:I = 0x1

.field public static final FIND_TYPE_TEXT_BOX:I = 0x2

.field public static final GEO_TAG_STATE_DEFAULT:I = 0x0

.field public static final GEO_TAG_STATE_REMOVED:I = 0x2

.field public static final GEO_TAG_STATE_SET:I = 0x1

.field public static final HISTORY_MANAGER_MODE_MULTIPLE_VIEW:I = 0x1

.field public static final HISTORY_MANAGER_MODE_SINGLE_VIEW:I = 0x0

.field private static final NATIVE_COMMAND_APPEND_OBJECTLIST:I = 0x2

.field private static final NATIVE_COMMAND_DUMMY:I = 0x0

.field private static final NATIVE_COMMAND_SET_MULTI_VIEW_USERID:I = 0x1

.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# instance fields
.field private mHandle:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_Construct2(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
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

.method private native PageDoc_AddTag(Ljava/lang/String;)Z
.end method

.method private native PageDoc_AppendLayer(I)Z
.end method

.method private native PageDoc_AppendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PageDoc_ClearChangedFlagOfLayer()V
.end method

.method private native PageDoc_ClearRecordedObject()Z
.end method

.method private native PageDoc_Construct2(Ljava/lang/String;Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z
.end method

.method private native PageDoc_Copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z
.end method

.method private native PageDoc_EnableLayerEventForward(IZ)Z
.end method

.method private native PageDoc_FindObjectAtPosition(IFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectAtPositionWithThreshold(IFFF)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectInClosedCurve(I[Landroid/graphics/PointF;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/graphics/PointF;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/RectF;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_FindTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_FindTopObjectAtPositionWithThreshold(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_GetBackgroundColor()I
.end method

.method private native PageDoc_GetBackgroundImage()Landroid/graphics/Bitmap;
.end method

.method private native PageDoc_GetBackgroundImageMode()I
.end method

.method private native PageDoc_GetBackgroundImagePath()Ljava/lang/String;
.end method

.method private native PageDoc_GetCurrentLayerId()I
.end method

.method private native PageDoc_GetExtraDataByteArray(Ljava/lang/String;)[B
.end method

.method private native PageDoc_GetExtraDataInt(Ljava/lang/String;)I
.end method

.method private native PageDoc_GetExtraDataString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native PageDoc_GetExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method private native PageDoc_GetGeoTagLatitude()D
.end method

.method private native PageDoc_GetGeoTagLongitude()D
.end method

.method private native PageDoc_GetGeoTagState()I
.end method

.method private native PageDoc_GetHeight()I
.end method

.method private native PageDoc_GetHistoryUpdateRect()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetId()Ljava/lang/String;
.end method

.method private native PageDoc_GetLastEditedTime()J
.end method

.method private native PageDoc_GetLayerCount()I
.end method

.method private native PageDoc_GetLayerHistoryId(I)I
.end method

.method private native PageDoc_GetLayerIdByIndex(I)I
.end method

.method private native PageDoc_GetLayerIndex(I)I
.end method

.method private native PageDoc_GetLayerName(I)Ljava/lang/String;
.end method

.method private native PageDoc_GetObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_GetObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
.end method

.method private native PageDoc_GetObjectCount(Z)I
.end method

.method private native PageDoc_GetObjectCount2(ZI)I
.end method

.method private native PageDoc_GetObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
.end method

.method private native PageDoc_GetObjectList()Ljava/util/ArrayList;
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

.method private native PageDoc_GetObjectList2(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectList3(ILjava/lang/String;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectList4(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetObjectRectList(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetOrientation()I
.end method

.method private native PageDoc_GetRectOfAllObject()Landroid/graphics/RectF;
.end method

.method private native PageDoc_GetSelectedObject()Ljava/util/ArrayList;
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

.method private native PageDoc_GetSelectedObjectCount()I
.end method

.method private native PageDoc_GetTag()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method private native PageDoc_GetTemplateObjectList()Ljava/util/ArrayList;
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

.method private native PageDoc_GetTemplateUri()Ljava/lang/String;
.end method

.method private native PageDoc_GetThumbnail()Landroid/graphics/Bitmap;
.end method

.method private native PageDoc_GetVoiceData()Ljava/lang/String;
.end method

.method private native PageDoc_GetWidth()I
.end method

.method private native PageDoc_GroupObject(Ljava/util/ArrayList;Z)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;Z)",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;"
        }
    .end annotation
.end method

.method private native PageDoc_GroupSelectedObject(Z)Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;
.end method

.method private native PageDoc_HasBackgroundImage()Z
.end method

.method private native PageDoc_HasExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native PageDoc_HasExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native PageDoc_HasExtraDataString(Ljava/lang/String;)Z
.end method

.method private native PageDoc_HasExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native PageDoc_HasRecordedObject()Z
.end method

.method private native PageDoc_InsertLayer(II)Z
.end method

.method private native PageDoc_InsertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z
.end method

.method private native PageDoc_IsChanged()Z
.end method

.method private native PageDoc_IsHistoryManagerUsed()Z
.end method

.method private native PageDoc_IsLayerChanged()Z
.end method

.method private native PageDoc_IsLayerEventForwardable(I)Z
.end method

.method private native PageDoc_IsObjectLoaded()Z
.end method

.method private native PageDoc_IsRecording()Z
.end method

.method private native PageDoc_IsTextOnly()Z
.end method

.method private native PageDoc_IsValid()Z
.end method

.method private native PageDoc_LoadHeader(Ljava/lang/String;)Z
.end method

.method private native PageDoc_LoadObject()Z
.end method

.method private native PageDoc_MoveLayerIndex(II)Z
.end method

.method private native PageDoc_MoveObject(Ljava/util/ArrayList;FF)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;FF)Z"
        }
    .end annotation
.end method

.method private native PageDoc_MoveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Z
.end method

.method private native PageDoc_RemoveAllObject()Z
.end method

.method private native PageDoc_RemoveExtraDataByteArray(Ljava/lang/String;)Z
.end method

.method private native PageDoc_RemoveExtraDataInt(Ljava/lang/String;)Z
.end method

.method private native PageDoc_RemoveExtraDataString(Ljava/lang/String;)Z
.end method

.method private native PageDoc_RemoveExtraDataStringArray(Ljava/lang/String;)Z
.end method

.method private native PageDoc_RemoveGeoTag()Z
.end method

.method private native PageDoc_RemoveLayer(I)Z
.end method

.method private native PageDoc_RemoveObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PageDoc_RemoveSelectedObject()Z
.end method

.method private native PageDoc_RemoveTag(Ljava/lang/String;)Z
.end method

.method private native PageDoc_Save()Z
.end method

.method private native PageDoc_SelectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
.end method

.method private native PageDoc_SelectObject(Ljava/util/ArrayList;)Z
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

.method private native PageDoc_SetBackgroundColor(I)Z
.end method

.method private native PageDoc_SetBackgroundImage(Ljava/lang/String;)Z
.end method

.method private native PageDoc_SetBackgroundImageMode(I)Z
.end method

.method private native PageDoc_SetCurrentLayer(I)Z
.end method

.method private static native PageDoc_SetDefaultSaveOption(Z)V
.end method

.method private native PageDoc_SetExtraDataByteArray(Ljava/lang/String;[BI)Z
.end method

.method private native PageDoc_SetExtraDataInt(Ljava/lang/String;I)Z
.end method

.method private native PageDoc_SetExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native PageDoc_SetExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z
.end method

.method private native PageDoc_SetGeoTag(DD)Z
.end method

.method private native PageDoc_SetLayerName(ILjava/lang/String;)Z
.end method

.method private native PageDoc_SetObjectEventListener(ILcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectEventListener;)Z
.end method

.method private native PageDoc_SetObjectIndexMovedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)Z
.end method

.method private native PageDoc_SetObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)Z
.end method

.method private native PageDoc_SetObjectSelectedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)Z
.end method

.method private native PageDoc_SetTemplateUri(Ljava/lang/String;)Z
.end method

.method private native PageDoc_SetThumbnail(Landroid/graphics/Bitmap;)Z
.end method

.method private native PageDoc_SetVoiceData(Ljava/lang/String;)V
.end method

.method private native PageDoc_SetVolatileBackgroundImage(Landroid/graphics/Bitmap;)Z
.end method

.method private native PageDoc_StartRecord()Z
.end method

.method private native PageDoc_StopRecord()Z
.end method

.method private native PageDoc_UngroupObject(Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;Z)Z
.end method

.method private native PageDoc_UngroupSelectedObject(Z)Z
.end method

.method private native PageDoc_UnloadObject()Z
.end method

.method private native PageDoc_UseHistoryManager(Z)V
.end method

.method private native PageDoc_clearHistory()V
.end method

.method private native PageDoc_clearHistory2(I)V
.end method

.method private native PageDoc_clearHistoryTag()Z
.end method

.method private native PageDoc_clearRedoHistory()V
.end method

.method private native PageDoc_commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)Z
.end method

.method private native PageDoc_finalize()V
.end method

.method private native PageDoc_getHistoryManagerMode()I
.end method

.method private native PageDoc_getLastHistoryId()I
.end method

.method private native PageDoc_getUndoLimit()I
.end method

.method private native PageDoc_isRedoable()Z
.end method

.method private native PageDoc_isRedoable2(I)Z
.end method

.method private native PageDoc_isUndoable()Z
.end method

.method private native PageDoc_isUndoable2(I)Z
.end method

.method private native PageDoc_redo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_redo2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_redoAll2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_setHistoryId(I)Z
.end method

.method private native PageDoc_setHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)Z
.end method

.method private native PageDoc_setHistoryManagerMode(I)Z
.end method

.method private native PageDoc_setHistoryTag()Z
.end method

.method private native PageDoc_setUndoLimit(I)V
.end method

.method private native PageDoc_startHistoryGroup()Z
.end method

.method private native PageDoc_stopHistoryGroup()Z
.end method

.method private native PageDoc_undo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_undo2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_undoAll2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private native PageDoc_undoToTag()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setDefaultSaveOption(Z)V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetDefaultSaveOption(Z)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenNoteFile"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private throwUncheckedException(I)V
    .locals 3

    const/16 v0, 0x13

    if-ne p1, v0, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenAlreadyClosedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SpenPageDoc("

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

.method private ungroupSelectedObject(Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_UngroupSelectedObject(Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTag(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_AddTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_AppendObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public appendObjectList(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "E_INVALID_ARG"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/4 v4, 0x2

    invoke-direct {p0, v4, v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    goto :goto_0
.end method

.method public clearChangedFlagOfLayer()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_ClearChangedFlagOfLayer()V

    return-void
.end method

.method public clearHistory()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_clearHistory()V

    return-void
.end method

.method public clearHistoryTag()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_clearHistoryTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public clearRedoHistory()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_clearRedoHistory()V

    return-void
.end method

.method public commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_commitHistory(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_Copy(Lcom/samsung/android/sdk/pen/document/SpenPageDoc;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    invoke-static {p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public createObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;->createObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    check-cast p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;

    iget v1, p1, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

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

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findObjectAtPosition(IFF)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectAtPosition(IFF)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public findObjectAtPosition(IFFF)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IFFF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectAtPositionWithThreshold(IFFF)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public findObjectInClosedCurve(I[Landroid/graphics/PointF;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Landroid/graphics/PointF;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    array-length v1, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectInClosedCurve(I[Landroid/graphics/PointF;I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public findObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/RectF;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindObjectInRect(ILandroid/graphics/RectF;Z)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public findTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindTopObjectAtPosition(IFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public findTopObjectAtPosition(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, 0xff

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_FindTopObjectAtPositionWithThreshold(IFFF)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundColor()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getBackgroundImage()Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundImage()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundImageMode()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundImageMode()I

    move-result v0

    return v0
.end method

.method public getBackgroundImagePath()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetBackgroundImagePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDrawnRectOfAllObject()Landroid/graphics/RectF;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetRectOfAllObject()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataByteArray(Ljava/lang/String;)[B
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataInt(Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExtraDataString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetExtraDataStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGeoTagLatitude()D
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetGeoTagLatitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoTagLongitude()D
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetGeoTagLongitude()D

    move-result-wide v0

    return-wide v0
.end method

.method public getGeoTagState()I
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetGeoTagState()I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v1, "SpenPageDoc"

    const-string v2, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetHeight()I

    move-result v0

    return v0
.end method

.method public getHistoryManagerMode()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_getHistoryManagerMode()I

    move-result v0

    return v0
.end method

.method public getHistoryUpdateRect()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetHistoryUpdateRect()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastEditedTime()J
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetLastEditedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectByRuntimeHandle(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getObjectCount(Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectCount(Z)I

    move-result v0

    return v0
.end method

.method public getObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
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

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getObjectList(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList2(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public getObjectList(ILjava/lang/String;I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList3(ILjava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public getObjectList(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectList4(ILjava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public getObjectRectList(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/16 v1, 0xff

    if-eq p1, v1, :cond_0

    const/4 v1, 0x7

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectRectList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-object v0
.end method

.method public getOrientation()I
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public getSelectedObject()Ljava/util/ArrayList;
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

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetSelectedObject()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getSelectedObjectCount()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetSelectedObjectCount()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetTag()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getTemplateObjectList()Ljava/util/ArrayList;
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

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetTemplateObjectList()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public getTemplateUri()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetTemplateUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUndoLimit()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_getUndoLimit()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetWidth()I

    move-result v0

    return v0
.end method

.method public hasBackgroundImage()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasBackgroundImage()Z

    move-result v0

    return v0
.end method

.method public hasExtraDataByteArray(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataByteArray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataInt(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataString(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasExtraDataStringArray(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_HasExtraDataStringArray(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->mHandle:I

    return v0
.end method

.method public insertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_InsertObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public isChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsChanged()Z

    move-result v0

    return v0
.end method

.method public isLayerChanged()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsLayerChanged()Z

    move-result v0

    return v0
.end method

.method public isObjectContained(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_GetObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isObjectLoaded()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsObjectLoaded()Z

    move-result v0

    return v0
.end method

.method public isRedoable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isRedoable()Z

    move-result v0

    return v0
.end method

.method public isRedoable(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isRedoable2(I)Z

    move-result v0

    return v0
.end method

.method public isUndoable()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isUndoable()Z

    move-result v0

    return v0
.end method

.method public isUndoable(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_isUndoable2(I)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_IsValid()Z

    move-result v0

    return v0
.end method

.method public loadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_LoadObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public moveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_MoveObjectIndex(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;IZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public redo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_redo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public redo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_redo2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_redoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public redoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_redoAll2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public removeAllObject()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveAllObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataByteArray(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataByteArray(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataInt(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataInt(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataString(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeExtraDataStringArray(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveExtraDataStringArray(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeGeoTag()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveGeoTag()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    const-string v2, "SpenPageDoc"

    const-string v3, "Native method is not found. Please update S Pen SDK libraries."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public removeObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeSelectedObject()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveSelectedObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_RemoveTag(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public save()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_Save()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public selectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SelectObject(Lcom/samsung/android/sdk/pen/document/SpenObjectBase;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public selectObject(Ljava/util/ArrayList;)V
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

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SelectObject(Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundColor(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundImage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setBackgroundImageMode(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetBackgroundImageMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataByteArray(Ljava/lang/String;[B)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    array-length v1, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataByteArray(Ljava/lang/String;[BI)Z

    move-result v0

    goto :goto_0
.end method

.method public setExtraDataInt(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataInt(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void

    :cond_1
    array-length v1, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetExtraDataStringArray(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public setGeoTag(DD)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetGeoTag(DD)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setHistoryListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHistoryManagerMode(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setHistoryManagerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setHistoryTag()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setHistoryTag()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setObjectIndexMovedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetObjectIndexMovedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectIndexMovedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetObjectListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setObjectSelectedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetObjectSelectedListener(Lcom/samsung/android/sdk/pen/document/SpenPageDoc$ObjectSelectedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setTemplateUri(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetTemplateUri(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public setUndoLimit(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_setUndoLimit(I)V

    return-void
.end method

.method public setUserIdForHistoryListener(I)V
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->Native_command(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    return-void
.end method

.method public setVolatileBackgroundImage(Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bitmap is recyled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_SetVolatileBackgroundImage(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_1
    return-void
.end method

.method public startHistoryGroup()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_startHistoryGroup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public stopHistoryGroup()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_stopHistoryGroup()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public undo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undo()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undo(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undo2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undoAll()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoAll(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undoAll2(I)[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public undoToTag()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;
    .locals 2

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_undoToTag()[Lcom/samsung/android/sdk/pen/document/SpenPageDoc$HistoryUpdateInfo;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public unloadObject()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->PageDoc_UnloadObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenPageDoc;->throwUncheckedException(I)V

    :cond_0
    return-void
.end method
