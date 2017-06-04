.class public Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;
.source "UploadFolderCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UploadFolderCommand"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/UploadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->showUploadedFilesCount()V

    return-void
.end method

.method private showUploadedFilesCount()V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUploadedFileCount()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUploadedFileCount()I

    move-result v0

    :goto_0
    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a001d

    invoke-static {v1, v2}, Lcom/sec/android/gallery3d/common/Utils;->showToast(Landroid/content/Context;I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a02a7

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 4

    const-string/jumbo v0, "UploadFolderCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorDetail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    const-string/jumbo v0, "Canceled"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "Paused"

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;

    invoke-direct {v1, p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;)V
    .locals 4

    const-string/jumbo v0, "UploadFolderCommand"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess : ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/UploadCompletedResponse;->getRequestToken()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;

    invoke-direct {v1, p0}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand$2;-><init>(Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateData()V
    .locals 0

    return-void
.end method
