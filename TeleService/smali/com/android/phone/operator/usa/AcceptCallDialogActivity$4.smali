.class Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;
.super Ljava/lang/Object;
.source "AcceptCallDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->showAcceptCallDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    iput-object p2, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-static {v0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->-get0(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-static {v1}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->-get0(Lcom/android/phone/operator/usa/AcceptCallDialogActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;->val$number:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/android/phone/operator/usa/AcceptCallDialogActivity$4;->this$0:Lcom/android/phone/operator/usa/AcceptCallDialogActivity;

    invoke-virtual {v0}, Lcom/android/phone/operator/usa/AcceptCallDialogActivity;->finish()V

    return-void
.end method
