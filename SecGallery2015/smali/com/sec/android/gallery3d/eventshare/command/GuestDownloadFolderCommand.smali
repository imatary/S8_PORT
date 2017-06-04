.class public Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;
.source "GuestDownloadFolderCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "GuestDownloadFolderCommand"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/android/gallery3d/eventshare/EventState;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadFolderCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Ljava/util/ArrayList;ZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V
    .locals 6

    const-string/jumbo v3, "GuestDownloadFolderCommand"

    const-string/jumbo v4, "Download completed and saved"

    invoke-static {v3, v4}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand$DownloadFileInfo;->getMimeType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string/jumbo v3, "gif"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mIsGifDownload:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mIsGifDownload:Z

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-boolean v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mIsGifDownload:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setIsGifDownload(Z)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setDownloadCandidates(Ljava/util/ArrayList;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v4}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getUgci()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v3, v4, v1, v5, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->download(Ljava/lang/String;Ljava/util/ArrayList;ZLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;

    invoke-direct {v4, p0}, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;-><init>(Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
