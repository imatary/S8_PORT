.class Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$1;
.super Ljava/lang/Object;
.source "DeleteItemCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/ShareResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/GetExpireTimeCommand;->excute()V

    return-void
.end method
