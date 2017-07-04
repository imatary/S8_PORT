.class Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$1;
.super Ljava/lang/Object;
.source "GuestDeleteMemberCommand.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/DeleteGroupMemberResponse;)V
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

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;->access$000(Lcom/sec/android/gallery3d/eventshare/command/GuestDeleteMemberCommand;)V

    return-void
.end method
