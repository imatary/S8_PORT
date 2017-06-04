.class Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$2;
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;

    iget-object v1, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v1, v1, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    iget-object v2, p0, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;

    iget-object v2, v2, Lcom/sec/android/gallery3d/eventshare/command/PrepareFolderTokenCommand;->mIntent:Landroid/content/Intent;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;-><init>(Lcom/sec/android/gallery3d/eventshare/EventState;Landroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/command/DeleteItemCommand;->excute()V

    return-void
.end method
