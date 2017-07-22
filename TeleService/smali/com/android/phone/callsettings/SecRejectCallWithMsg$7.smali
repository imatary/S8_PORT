.class Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;
.super Ljava/lang/Object;
.source "SecRejectCallWithMsg.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getRejectMessage()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v3, v8, :cond_3

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->clearFocus()V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-get0(Lcom/android/phone/callsettings/SecRejectCallWithMsg;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v4, v4, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0d04e7

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "feature_sbm"

    invoke-static {v3}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const v5, 0x7f0d04e8

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    invoke-static {v3, v1}, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->-wrap2(Lcom/android/phone/callsettings/SecRejectCallWithMsg;Ljava/lang/String;)V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusable(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3, v7}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    iget-object v3, p0, Lcom/android/phone/callsettings/SecRejectCallWithMsg$7;->this$0:Lcom/android/phone/callsettings/SecRejectCallWithMsg;

    iget-object v3, v3, Lcom/android/phone/callsettings/SecRejectCallWithMsg;->mCreateEdit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    move-result v2

    goto :goto_0
.end method
