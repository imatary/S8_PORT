.class Lcom/android/phone/callsettings/CallBarring$14;
.super Ljava/lang/Object;
.source "CallBarring.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/CallBarring;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/CallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/CallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v1, 0x7f0d026e

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    const v2, 0x7f0d027b

    invoke-virtual {v1, v2}, Lcom/android/phone/callsettings/CallBarring;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/CallBarring;->-set0(Lcom/android/phone/callsettings/CallBarring;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get2(Lcom/android/phone/callsettings/CallBarring;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/CallBarring;->editText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    invoke-static {}, Lcom/android/phone/callsettings/CallBarring;->-get4()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get1(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/CallBarring;->doActivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    invoke-static {v0}, Lcom/android/phone/callsettings/CallBarring;->-get1(Lcom/android/phone/callsettings/CallBarring;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/CallBarring$14;->this$0:Lcom/android/phone/callsettings/CallBarring;

    iget-object v1, v1, Lcom/android/phone/callsettings/CallBarring;->doDeactivate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
