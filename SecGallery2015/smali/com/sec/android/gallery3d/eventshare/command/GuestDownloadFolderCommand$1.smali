.class Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;
.super Ljava/lang/Object;
.source "GuestDownloadFolderCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->onDownloadCompleted(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/DownloadContentsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mIsGifDownload:Z

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-boolean v1, v1, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mIsGifDownload:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setIsGifDownload(Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setShareID(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/state/SharedState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v1, v2}, Lcom/sec/android/gallery3d/eventshare/state/SharedState;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->COMPLETE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
