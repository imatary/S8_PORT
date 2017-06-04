.class Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$5;
.super Ljava/lang/Object;
.source "PrepareFolderTokenCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/BaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$5;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$5;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->mNotifier:Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$5;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    invoke-virtual {v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->getEventId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/utils/EventShareNotifier;->notifyState(II)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$5;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->mSharedEvent:Lcom/sec/android/gallery3d/eventshare/SharedEvent;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$5;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    sget-object v2, Lcom/sec/android/gallery3d/eventshare/EventState$State;->IDLE_STATE:Lcom/sec/android/gallery3d/eventshare/EventState$State;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/SharedEvent;->onStateChange(Lcom/sec/android/gallery3d/eventshare/EventState;Lcom/sec/android/gallery3d/eventshare/EventState$State;)V

    return-void
.end method
