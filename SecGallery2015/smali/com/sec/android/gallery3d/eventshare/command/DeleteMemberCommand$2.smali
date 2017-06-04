.class Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;
.super Ljava/lang/Object;
.source "DeleteMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    return-void
.end method
