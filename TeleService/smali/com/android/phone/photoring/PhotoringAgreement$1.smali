.class Lcom/android/phone/photoring/PhotoringAgreement$1;
.super Landroid/os/Handler;
.source "PhotoringAgreement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringAgreement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringAgreement;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringAgreement;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringAgreement;->-get2(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringAgreement;->-get2(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringAgreement;->-get2(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringAgreement;->-set0(Lcom/android/phone/photoring/PhotoringAgreement;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringAgreement;->-get7(Lcom/android/phone/photoring/PhotoringAgreement;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringAgreement$1;->this$0:Lcom/android/phone/photoring/PhotoringAgreement;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringAgreement;->-get6(Lcom/android/phone/photoring/PhotoringAgreement;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
