.class Lcom/android/phone/KTCallForwardingAll$3;
.super Ljava/util/TimerTask;
.source "KTCallForwardingAll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/KTCallForwardingAll;->destoryProgressDialogFromNoResponse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/KTCallForwardingAll;

.field final synthetic val$NoResponse:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/phone/KTCallForwardingAll;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    iput-object p2, p0, Lcom/android/phone/KTCallForwardingAll$3;->val$NoResponse:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    invoke-static {v1}, Lcom/android/phone/KTCallForwardingAll;->-get2(Lcom/android/phone/KTCallForwardingAll;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "KTCallForwardingAll"

    const-string/jumbo v2, "destory progress"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->val$NoResponse:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    invoke-static {v1, v3}, Lcom/android/phone/KTCallForwardingAll;->-set4(Lcom/android/phone/KTCallForwardingAll;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/phone/KTCallForwardingAll$3;->this$0:Lcom/android/phone/KTCallForwardingAll;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/phone/KTCallForwardingAll;->-set1(Lcom/android/phone/KTCallForwardingAll;Z)Z

    return-void
.end method
