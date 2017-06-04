.class Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$2;
.super Ljava/lang/Object;
.source "GetUrlExpireTimeCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0x13

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    return-void
.end method
