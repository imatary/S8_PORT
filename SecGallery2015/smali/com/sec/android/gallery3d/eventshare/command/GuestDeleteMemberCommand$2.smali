.class Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$2;
.super Ljava/lang/Object;
.source "GuestDeleteMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    # invokes: Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->deleteEvent()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;)V

    return-void
.end method
