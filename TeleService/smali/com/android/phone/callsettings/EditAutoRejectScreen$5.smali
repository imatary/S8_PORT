.class Lcom/android/phone/callsettings/EditAutoRejectScreen$5;
.super Ljava/lang/Object;
.source "EditAutoRejectScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectScreen;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "EditAutoRejectScreen"

    const-string/jumbo v1, "onClick searchButton"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-get2(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-set0(Lcom/android/phone/callsettings/EditAutoRejectScreen;Z)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-get1(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$5;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-wrap0(Lcom/android/phone/callsettings/EditAutoRejectScreen;)V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "EditAutoRejectScreen"

    const-string/jumbo v1, "Search dialog is already created"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
