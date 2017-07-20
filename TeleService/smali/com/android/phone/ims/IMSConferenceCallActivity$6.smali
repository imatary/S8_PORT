.class Lcom/android/phone/ims/IMSConferenceCallActivity$6;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;->updateKeypad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string/jumbo v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    iget-object v0, v0, Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isActiveGroupCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const-string/jumbo v1, "updateKeypad :: Do not showSoftInput when it is active group call..."

    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-wrap4(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get10(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get19(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get18(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get1(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->-get18(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
