.class Lcom/android/phone/callsettings/VideoCallBarring$17$1;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring$17;->onShow(Landroid/content/DialogInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/callsettings/VideoCallBarring$17;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring$17;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$17$1;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$17$1;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$17;

    iget-object v0, v0, Lcom/android/phone/callsettings/VideoCallBarring$17;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get7(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$17$1;->this$1:Lcom/android/phone/callsettings/VideoCallBarring$17;

    iget-object v0, v0, Lcom/android/phone/callsettings/VideoCallBarring$17;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->showErrorText(Z)V

    :cond_0
    return-void

    :cond_1
    move v0, v1

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
