.class Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand$2;
.super Ljava/lang/Object;
.source "GuestGetFolderInfoCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/GuestGetFolderInfoCommand;->mCandi:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/GuestDownloadFolderCommand;->excute()V

    :cond_0
    return-void
.end method
