.class Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;
.super Landroid/os/Handler;
.source "AcceptCallDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/usa/AcceptCallDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-static {v3, p1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->-wrap0(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-static {v3, v2}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->-wrap1(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;Ljava/lang/String;)J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-static {v3, v0, v1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->-wrap2(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;J)V

    iget-object v3, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$1;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-virtual {v3, v2}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->deleteNativeBlockNumber(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
