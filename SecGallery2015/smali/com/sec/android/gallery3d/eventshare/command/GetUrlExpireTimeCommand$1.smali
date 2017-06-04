.class Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;
.super Ljava/lang/Object;
.source "GetUrlExpireTimeCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

.field final synthetic val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    iput-object p2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->val$error:Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode;->getErrorFrom(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)Lcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;

    move-result-object v3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    move-result-object v0

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v2}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(IILcom/sec/android/gallery3d/eventshare/utils/EventErrorCode$ErrorFrom;II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;->access$200(Lcom/sec/android/gallery3d/eventshare/command/GetUrlExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
