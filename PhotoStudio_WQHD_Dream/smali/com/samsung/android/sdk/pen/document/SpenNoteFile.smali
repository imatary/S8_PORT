.class public Lcom/samsung/android/sdk/pen/document/SpenNoteFile;
.super Ljava/lang/Object;
.source "SpenNoteFile.java"


# static fields
.field public static final ORIENTATION_LANDSCAPE:I = 0x1

.field public static final ORIENTATION_PORTRAIT:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native NoteFile_copy(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_getAppName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native NoteFile_getAppVersion(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/StringBuffer;)Z
.end method

.method private static native NoteFile_getCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native NoteFile_getCoverImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native NoteFile_getFormatVersion(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getLastModifiedTime(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)Z
.end method

.method private static native NoteFile_getLastViewedPageIndex(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getOrientation(Ljava/lang/String;)I
.end method

.method private static native NoteFile_getSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z
.end method

.method private static native NoteFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z
.end method

.method private static native NoteFile_isFavorite(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_isLocked(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_isValid(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_lock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_removeCache(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_removeCacheDir(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_removeNote(Ljava/lang/String;)Z
.end method

.method private static native NoteFile_setCoverImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private static native NoteFile_setFavorite(Ljava/lang/String;Z)Z
.end method

.method private static native NoteFile_setLastViewedPageIndex(Ljava/lang/String;I)Z
.end method

.method private static native NoteFile_unlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_copy(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not correspond to the SPD file format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static deleteFile(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v3, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v0, v1, v2

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/StringBuffer;)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getAppVersion(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/StringBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static getCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getCacheDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-object v0
.end method

.method public static getCoverImagePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getCoverImage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFormatVersion(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getFormatVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getLastModifiedTime(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getLastModifiedTime(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Long;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static getLastViewedPageIndex(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getLastViewedPageIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getOrientation(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getOrientation(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_getSize(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static hasUnsavedData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_hasUnsavedData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method private static isBuildTypeEngMode()Z
    .locals 2

    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isFavorite(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isFavorite(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isLocked(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_isValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static lock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_lock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not correspond to the SPD file format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static releaseCoverImagePath(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->deleteFile(Ljava/io/File;)V

    :cond_1
    return-void
.end method

.method public static removeCache(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_removeCache(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
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

.method public static removeCacheDir(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_removeCacheDir(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return v0
.end method

.method public static removeNote(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-static {p0}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_removeNote(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not correspond to the SPD file format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static setCoverImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2, p3}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_setCoverImage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not correspond to the SPD file format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static setFavorite(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_setFavorite(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :pswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not correspond to the SPD file format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static setLastViewedPageIndex(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_setLastViewedPageIndex(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void
.end method

.method public static unlock(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;,
            Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/samsung/android/sdk/pen/document/SpenNoteFile;->NoteFile_unlock(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-static {}, Lcom/samsung/android/sdk/pen/util/SpenError;->getError()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/sdk/pen/util/SpenError;->ThrowUncheckedException(I)V

    :cond_0
    return-void

    :sswitch_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :sswitch_1
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;

    const-string v2, "E_INVALID_PASSWORD : the password is wrong"

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenInvalidPasswordException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_2
    new-instance v1, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "E_UNSUPPORTED_TYPE : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] does not correspond to the SPD file format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/pen/document/SpenUnsupportedTypeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xd -> :sswitch_2
        0x11 -> :sswitch_1
    .end sparse-switch
.end method
