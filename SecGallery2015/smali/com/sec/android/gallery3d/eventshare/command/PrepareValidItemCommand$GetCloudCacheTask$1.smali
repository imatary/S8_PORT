.class Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;
.super Ljava/lang/Object;
.source "PrepareValidItemCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->setUpdatedTime(J)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getRequest()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/UploadFolderCommand;->excute()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->getRequest()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$1;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$300(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/AddContentCommand;->excute()V

    goto :goto_0
.end method
