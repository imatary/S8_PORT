.class Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$1;
.super Ljava/lang/Object;
.source "CreateGroupCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "CreateGroupCommand"

    const-string/jumbo v1, "HostUploadCancelCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/CreateGroupCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    return-void
.end method
