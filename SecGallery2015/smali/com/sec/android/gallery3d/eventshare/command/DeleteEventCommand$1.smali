.class Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$1;
.super Ljava/lang/Object;
.source "DeleteEventCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->excute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    const/4 v1, 0x0

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/DeleteEventCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-direct {v0, v1}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;-><init>(Lcom/sec/android/gallery3d/eventshare/SharedEvent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/message/UpdateMessage;->send()V

    return-void
.end method
