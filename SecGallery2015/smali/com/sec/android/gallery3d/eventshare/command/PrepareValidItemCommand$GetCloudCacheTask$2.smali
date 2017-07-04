.class Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$2;
.super Ljava/lang/Object;
.source "PrepareValidItemCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->onCancelled()V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$2;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$2;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$400(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask$2;->this$1:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand$GetCloudCacheTask;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;

    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/PrepareValidItemCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    return-void
.end method
