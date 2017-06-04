.class public Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;
.super Lcom/msc/sa/aidl/ISACallback$Stub;
.source "SamsungAccountBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SACallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;


# direct methods
.method public constructor <init>(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    invoke-direct {p0}, Lcom/msc/sa/aidl/ISACallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveAccessToken(IZLandroid/os/Bundle;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    const-string/jumbo v4, "SamsungAccountBinder"

    const-string/jumbo v5, "Success receive AccessToken"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "user_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;

    invoke-direct {v1}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;-><init>()V

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$400(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Lcom/sec/android/gallery3d/eventshare/event/EventShareRequestSender;->addMemberToGuidGroup(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceiveAccessToken requestID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "isSuccessAccessToken : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "AccessToken : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "access_token"

    invoke-virtual {p3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "User id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "SamsungAccountBinder"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->onDestroy()V
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$600(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V

    :goto_1
    return-void

    :cond_1
    const-string/jumbo v4, "SamsungAccountBinder"

    const-string/jumbo v5, "Failed receive AccessToken"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "error_code"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReceiveAccessToken requestID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "isSuccessAccessToken : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "error_code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "SamsungAccountBinder"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # operator++ for: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestCount:I
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$508(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # getter for: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestCount:I
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$500(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)I

    move-result v4

    const/4 v5, 0x3

    if-ge v4, v5, :cond_0

    const-string/jumbo v4, "SamsungAccountBinder"

    const-string/jumbo v5, "Try again request AccessToken"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder$SACallback;->this$0:Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;

    # invokes: Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->requestAccessToken()V
    invoke-static {v4}, Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;->access$300(Lcom/sec/android/gallery3d/eventshare/utils/SamsungAccountBinder;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "SamsungAccountBinder"

    const-string/jumbo v5, "ResultData is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
