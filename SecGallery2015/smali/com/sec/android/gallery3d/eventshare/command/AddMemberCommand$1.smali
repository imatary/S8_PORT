.class Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand$1;
.super Ljava/lang/Object;
.source "AddMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/AddMemberCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
