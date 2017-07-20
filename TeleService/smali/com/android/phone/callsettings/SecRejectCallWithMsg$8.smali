.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecRejectCallWithMsg;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$8;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v2, v2, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1
.end method
