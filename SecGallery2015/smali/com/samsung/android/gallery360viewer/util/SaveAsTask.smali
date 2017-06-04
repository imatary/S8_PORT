.class public Lcom/samsung/android/gallery360viewer/util/SaveAsTask;
.super Landroid/os/AsyncTask;
.source "SaveAsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[I",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFileName:Ljava/lang/String;

.field private mHeight:I

.field private final mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;Lcom/samsung/android/gallery360viewer/view/StatusHandler;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput v0, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    iput v0, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mHeight:I

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    iput p3, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mHeight:I

    iput-object p4, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    return-void
.end method

.method private convertTexturePixels([I)[I
    .locals 14

    iget v12, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    iget v13, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mHeight:I

    mul-int/2addr v12, v13

    new-array v0, v12, [I

    const/16 v4, 0xff

    const/high16 v6, 0xff0000

    const v5, -0xff0100

    const/4 v2, 0x0

    :goto_0
    iget v12, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mHeight:I

    if-ge v2, v12, :cond_1

    iget v12, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    mul-int v7, v2, v12

    iget v12, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mHeight:I

    sub-int/2addr v12, v2

    add-int/lit8 v12, v12, -0x1

    iget v13, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    mul-int v8, v12, v13

    const/4 v3, 0x0

    :goto_1
    iget v12, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    if-ge v3, v12, :cond_0

    add-int v12, v7, v3

    aget v11, p1, v12

    shr-int/lit8 v12, v11, 0x10

    and-int v1, v12, v4

    shl-int/lit8 v12, v11, 0x10

    and-int v10, v12, v6

    and-int v12, v11, v5

    or-int/2addr v12, v10

    or-int v9, v12, v1

    add-int v12, v8, v3

    aput v9, v0, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([[I)Ljava/lang/Boolean;
    .locals 7

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    aget-object v4, p1, v5

    if-nez v4, :cond_1

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_1
    aget-object v1, p1, v5

    invoke-direct {p0, v1}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->convertTexturePixels([I)[I

    move-result-object v2

    iget v4, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mWidth:I

    iget v5, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/samsung/android/gallery360viewer/util/BitmapUtils;->saveFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [[I

    invoke-virtual {p0, p1}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->doInBackground([[I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_SUCCESS:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onSaveCompleted(Ljava/lang/String;Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SaveAsTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "File could not be saved. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mStatusHandler:Lcom/samsung/android/gallery360viewer/view/StatusHandler;

    iget-object v1, p0, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->mFileName:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;->SCREEN_CAPTURE_FAIL:Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gallery360viewer/view/StatusHandler;->onSaveCompleted(Ljava/lang/String;Lcom/samsung/android/gallery360viewer/IGallery360Viewer$SaveStatus;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/samsung/android/gallery360viewer/util/SaveAsTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
