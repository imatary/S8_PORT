.class Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$1;
.super Ljava/lang/Object;
.source "RenewalExpireTimeCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$100(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;

    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/RenewalExpireTimeCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
