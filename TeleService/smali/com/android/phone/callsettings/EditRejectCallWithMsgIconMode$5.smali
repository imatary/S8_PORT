.class Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;
.super Ljava/lang/Object;
.source "EditRejectCallWithMsgIconMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get3(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get3(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get17(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get3(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get0(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v2, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    iget-object v3, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-set0(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get2(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    const v1, 0x7f0d09e6

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setTitle(I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get2(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->show()V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get2(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;->this$0:Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;->-get2(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode;)Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;

    move-result-object v0

    new-instance v1, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;

    invoke-direct {v1, p0}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5$1;-><init>(Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$5;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/callsettings/EditRejectCallWithMsgIconMode$ImageDlg;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
