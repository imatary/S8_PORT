.class Lcom/android/phone/callsettings/SecAutoRejectList$4;
.super Ljava/lang/Object;
.source "SecAutoRejectList.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/SecAutoRejectList;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$4;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$4;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get1(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$4;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get1(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$4;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectList$4;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    invoke-static {v0}, Lcom/android/phone/callsettings/SecAutoRejectList;->-get1(Lcom/android/phone/callsettings/SecAutoRejectList;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/SecAutoRejectList$4;->this$0:Lcom/android/phone/callsettings/SecAutoRejectList;

    iget-object v1, v1, Lcom/android/phone/callsettings/SecAutoRejectList;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
