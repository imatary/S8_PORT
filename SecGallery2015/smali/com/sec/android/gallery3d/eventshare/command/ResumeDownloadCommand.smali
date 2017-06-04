.class public Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;
.super Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;
.source "ResumeDownloadCommand.java"


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/gallery3d/eventshare/command/DownloadCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    return-void
.end method


# virtual methods
.method public excute()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareID()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->getFiles()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mCandidates:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getIsGifDownload()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mIsGifDownload:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mShareAgent:Lcom/sec/android/gallery3d/eventshare/ShareAgent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getShareID()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, p0}, Lcom/sec/android/gallery3d/eventshare/ShareAgent;->resumeDownload(JLcom/sec/android/gallery3d/eventshare/command/DownloadCommand;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    :cond_0
    return-void
.end method

.method protected getFiles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/ResumeDownloadCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getDownloadCandidates()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
