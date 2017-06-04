.class Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$2;
.super Ljava/lang/Object;
.source "GetFolderInfoCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/rshare/apis/response/CloudResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand$2;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;

    iget-object v0, v0, Lcom/sec/android/gallery3d/eventshare/command/GetFolderInfoCommand;->mEventState:Lcom/sec/android/gallery3d/eventshare/EventState;

    invoke-virtual {v0}, Lcom/sec/android/gallery3d/eventshare/EventState;->onFail()V

    return-void
.end method
