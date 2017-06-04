.class Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$1;
.super Ljava/lang/Object;
.source "MakeShareFolderCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->onError(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/EnhancedShareErrorResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "MakeShareFolderCommand"

    const-string/jumbo v1, "MakeShareFolderCommand END"

    invoke-static {v0, v1}, Lcom/sec/android/gallery3d/eventshare/utils/ESLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;

    # getter for: Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/MakeShareFolderCommand;)Lcom/sec/android/gallery3d/eventshare/EventState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onCancel()V

    return-void
.end method
