.class Lcom/android/phone/photoring/CallMessageNetwork$5;
.super Ljava/lang/Thread;
.source "CallMessageNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/photoring/CallMessageNetwork;->getCallMessageCall(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/CallMessageNetwork;

.field final synthetic val$receive_user_ctn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    iput-object p2, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->val$receive_user_ctn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string/jumbo v4, "mcms.mcnap.uplus.co.kr/CallMessage/getCallMessage.call"

    iget-object v3, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->val$receive_user_ctn:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->val$receive_user_ctn:Ljava/lang/String;

    const-string/jumbo v6, "#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v5, "#"

    const-string/jumbo v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v5, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-static {v5, v2, v1}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap6(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/util/LinkedHashMap;Z)V

    const-string/jumbo v5, "receive_user_ctn"

    iget-object v6, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-static {v6, v3}, Lcom/android/phone/photoring/CallMessageNetwork;->-wrap2(Lcom/android/phone/photoring/CallMessageNetwork;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/phone/photoring/http/HTTPRequestHelper;

    iget-object v5, p0, Lcom/android/phone/photoring/CallMessageNetwork$5;->this$0:Lcom/android/phone/photoring/CallMessageNetwork;

    invoke-static {v5}, Lcom/android/phone/photoring/CallMessageNetwork;->-get0(Lcom/android/phone/photoring/CallMessageNetwork;)Landroid/os/Handler;

    move-result-object v5

    sget-object v6, Lcom/android/phone/photoring/CallMessageConstants$RequestType;->GET_CALLMESSAGE_CALL:Lcom/android/phone/photoring/CallMessageConstants$RequestType;

    invoke-direct {v0, v5, v6}, Lcom/android/phone/photoring/http/HTTPRequestHelper;-><init>(Landroid/os/Handler;Lcom/android/phone/photoring/CallMessageConstants$RequestType;)V

    invoke-virtual {v0, v4, v2}, Lcom/android/phone/photoring/http/HTTPRequestHelper;->post(Ljava/lang/String;Ljava/util/Map;)Z

    return-void
.end method
