.class Lcom/android/phone/callsettings/VideoCallBarring$14;
.super Ljava/lang/Object;
.source "VideoCallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoCallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    const v1, 0x7f0d0210

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    const v2, 0x7f0d021d

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/VideoCallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/VideoCallBarring;->-set0(Lcom/android/phone/callsettings/VideoCallBarring;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get3(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Lcom/android/phone/callsettings/VideoCallBarring;->-get18()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get2(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/VideoCallBarring;->-get2(Lcom/android/phone/callsettings/VideoCallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/VideoCallBarring$14;->this$0:Lcom/android/phone/callsettings/VideoCallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/VideoCallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
