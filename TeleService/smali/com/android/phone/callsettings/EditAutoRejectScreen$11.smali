.class Lcom/android/phone/callsettings/EditAutoRejectScreen$11;
.super Ljava/lang/Object;
.source "EditAutoRejectScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/EditAutoRejectScreen;->alertdialogSearch()V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-get2(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    iget-object v0, v0, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    invoke-static {v0}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-get1(Lcom/android/phone/callsettings/EditAutoRejectScreen;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    iget-object v1, v1, Lcom/android/phone/callsettings/EditAutoRejectScreen;->editBox:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/phone/callsettings/EditAutoRejectScreen$11;->this$0:Lcom/android/phone/callsettings/EditAutoRejectScreen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/callsettings/EditAutoRejectScreen;->-set0(Lcom/android/phone/callsettings/EditAutoRejectScreen;Z)Z

    return-void
.end method
