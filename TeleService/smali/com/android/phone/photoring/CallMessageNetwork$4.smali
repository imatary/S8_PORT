.class Lcom/android/phone/photoring/CallMessageNetwork$4;
.super Ljava/lang/Thread;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/CallMessageNetwork;->setRealtimeServiceInfoCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/CallMessageNetwork;

.field final synthetic val$content_msg:Ljava/lang/String;

.field final synthetic val$content_url:Ljava/lang/String;

.field final synthetic val$isDualNumber:Z

.field final synthetic val$receive_user_ctn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/CallMessageNetwork;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    iput-boolean p2, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$isDualNumber:Z

    iput-object p3, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$receive_user_ctn:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$content_msg:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$content_url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string/jumbo v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v2, "mcms.mcnap.uplus.co.kr/CallMessage/setRealtimeServiceInfo.call"

    :goto_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v3, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    iget-boolean v4, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$isDualNumber:Z

    invoke-static {v3, v1, v4}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap6(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v3, "receive_user_ctn"

    iget-object v4, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    iget-object v5, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$receive_user_ctn:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap2(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "content_msg"

    iget-object v4, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$content_msg:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "content_url"

    iget-object v4, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    iget-object v5, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->val$content_url:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap2(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/phone/photoring/http/HTTPRequestHelper;

    iget-object v3, p0, Lcom/android/phone/photoring/CallMessageNetwork$4;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-static {v3}, Lcom/android/phone/photoring/CallMessageNetwork;->-get0(Lcom/android/phone/photoring/CallMessageNetwork;)Landroid/os/Handler;

    move-result-object v3

    sget-object v4, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->SET_REALTIME_SERVICEINFO_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-direct {v0, v3, v4}, Lcom/android/phone/photoring/http/HTTPRequestHelper;-><init>(Landroid/os/Handler;Lcom/android/phone/photoring/CallMessageConstants$RequestType;)V

    invoke-virtual {v0, v2, v1}, Lcom/android/phone/photoring/http/HTTPRequestHelper;->post(Ljava/lang/String;Ljava/util/Map;)Z

    return-void

    :cond_0
    const-string/jumbo v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v2, "showme.mobile.olleh.com/CallMessage/setRealtimeServiceInfo.call"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "mcms.mcnap.uplus.co.kr/CallMessage/setRealtimeServiceInfo.call"

    goto :goto_0
.end method
