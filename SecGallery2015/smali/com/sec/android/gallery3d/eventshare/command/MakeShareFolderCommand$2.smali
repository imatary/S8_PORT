.class Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;
.super Ljava/lang/Object;
.source "MakeShareFolderCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

.field final synthetic val$expire_time:J


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;J)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    iput-wide p2, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;->val$expire_time:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string/jumbo v0, "MakeShareFolderCommand"

    const-string/jumbo v1, "MakeShareFolderCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iget-wide v2, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;->val$expire_time:J

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setExpiredTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->excute()V

    return-void
.end method
