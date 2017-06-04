.class Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;
.super Ljava/lang/Object;
.source "SDKRegister.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOffForUPSM()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0095

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->cancelAlarm(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_service_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$7;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_service_off_for_upsm"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
