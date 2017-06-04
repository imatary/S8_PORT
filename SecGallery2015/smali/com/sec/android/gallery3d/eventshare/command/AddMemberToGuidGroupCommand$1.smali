.class Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand$1;
.super Ljava/lang/Object;
.source "AddMemberToGuidGroupCommand.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/group/apis/listener/AddGroupMembersListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;->onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/GetGroupsByGuidResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand$1;->this$0:Lcom/sec/android/gallery3d/eventshare/command/AddMemberToGuidGroupCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;)V
    .locals 3

    const-string/jumbo v0, "AddMemberToGuidGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AddGroupMembersListener onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/ErrorResponse;->getResultCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;)V
    .locals 3

    const-string/jumbo v0, "AddMemberToGuidGroup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "AddGroupMembersListener onSuccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/enhancedfeatures/group/apis/response/AddGroupMembersResponse;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
