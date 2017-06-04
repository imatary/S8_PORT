.class Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$1;
.super Ljava/lang/Object;
.source "GetExpireTimeCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
