.class public Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;
.super Landroid/os/AsyncTask;
.source "ThumbnailInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/multilock/ThumbnailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mThumbnailInfo:Lcom/sec/android/multilock/ThumbnailInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/sec/android/multilock/ThumbnailInfo;

    iput-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;->mThumbnailInfo:Lcom/sec/android/multilock/ThumbnailInfo;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;->mThumbnailInfo:Lcom/sec/android/multilock/ThumbnailInfo;

    invoke-static {v4, v1, v0}, Lcom/sec/android/multilock/ThumbnailInfo;->-wrap0(Lcom/sec/android/multilock/ThumbnailInfo;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string/jumbo v1, "Cropper2_ThumbnailInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "decode preview time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;->doInBackground([Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;->mThumbnailInfo:Lcom/sec/android/multilock/ThumbnailInfo;

    invoke-static {v0, p1}, Lcom/sec/android/multilock/ThumbnailInfo;->-wrap1(Lcom/sec/android/multilock/ThumbnailInfo;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/multilock/ThumbnailInfo$PreviewLoaderTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
