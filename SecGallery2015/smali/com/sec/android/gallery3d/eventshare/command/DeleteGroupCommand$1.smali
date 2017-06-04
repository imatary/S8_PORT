.class Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand$1;
.super Ljava/lang/Object;
.source "DeleteGroupCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;->excute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v1}, Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/DeleteGroupCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
