.class Lcom/android/phone/photoring/PhotoringGuide$1;
.super Landroid/os/Handler;
.source "PhotoringGuide.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/photoring/PhotoringGuide;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/photoring/PhotoringGuide;


# direct methods
.method constructor <init>(Lcom/android/phone/photoring/PhotoringGuide;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringGuide;->-get0(Lcom/android/phone/photoring/PhotoringGuide;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringGuide;->-get0(Lcom/android/phone/photoring/PhotoringGuide;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringGuide;->-get0(Lcom/android/phone/photoring/PhotoringGuide;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-static {v0, v1}, Lcom/android/phone/photoring/PhotoringGuide;->-set0(Lcom/android/phone/photoring/PhotoringGuide;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-static {v0}, Lcom/android/phone/photoring/PhotoringGuide;->-get2(Lcom/android/phone/photoring/PhotoringGuide;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/photoring/PhotoringGuide$1;->this$0:Lcom/android/phone/photoring/PhotoringGuide;

    invoke-static {v1}, Lcom/android/phone/photoring/PhotoringGuide;->-get1(Lcom/android/phone/photoring/PhotoringGuide;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
