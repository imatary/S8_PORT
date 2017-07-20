.class Lcom/android/phone/callsettings/VideoCallBarring$21$2;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring$21;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring$21;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring$21;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-set3(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    :goto_0
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring$21;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v1}, Lcom/android/phone/callsettings/VideoCallBarring;->-get19(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    iget-object v2, v2, Lcom/android/phone/callsettings/VideoCallBarring$21;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get13(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    iget-object v2, v2, Lcom/android/phone/callsettings/VideoCallBarring$21;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v2}, Lcom/android/phone/callsettings/VideoCallBarring;->-get11(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    iget-object v0, v0, Lcom/android/phone/callsettings/VideoCallBarring$21;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get5(Lcom/android/phone/callsettings/VideoCallBarring;)Z

    move-result v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$21$2;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$21;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring$21;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v1, v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-set3(Lcom/android/phone/callsettings/VideoCallBarring;Z)Z

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
