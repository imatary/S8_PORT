.class Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;
.super Ljava/lang/Object;
.source "SDKRegister.java"

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/listener/EnhancedAccountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->serviceOn(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

.field final synthetic val$isShowDialog:Z


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;Z)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    iput-boolean p2, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->val$isShowDialog:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountErrorResponse;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a0095

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # invokes: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$100(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->val$isShowDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$400(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;->serviceOn(Z)V

    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/samsung/android/sdk/enhancedfeatures/easysignup/apis/response/EnhancedAccountResponseInfo;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # invokes: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$100(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)V

    iget-boolean v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->val$isShowDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_setting_on"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$400(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mServiceOnListener:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$400(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$serviceOnListener;->serviceOn(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sharing_service_on"

    invoke-static {v0, v1, v2}, Lcom/sec/samsung/gallery/util/SharedPreferenceManager;->saveState(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister$4;->this$0:Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;

    # getter for: Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;->access$300(Lcom/sec/android/gallery3d/eventshare/agent/SDKRegister;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/gallery3d/eventshare/receiver/GetPolicyReceiver;->registerEventShareAlarm(Landroid/content/Context;)V

    return-void
.end method
