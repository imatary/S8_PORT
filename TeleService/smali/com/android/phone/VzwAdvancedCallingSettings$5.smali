.class Lcom/android/phone/VzwAdvancedCallingSettings$5;
.super Ljava/lang/Object;
.source "VzwAdvancedCallingSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwAdvancedCallingSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCallingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const v4, 0x1020014

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_5

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: HD Voice and Video clicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: HD Voice and Video enabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-virtual {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "preferred_tty_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap13(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get1(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isAvailablePSVT()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get3(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_hd_voice_video"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap7(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap11(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap3(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get0(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get0(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap12(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    goto :goto_0

    :cond_5
    if-ne p3, v3, :cond_0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: HD Voice only clicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: HD Voice only enabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceVideoView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iget-object v0, v0, Lcom/android/phone/VzwAdvancedCallingSettings;->mHDVoiceOnlyView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get3(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_hd_voice_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap1(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$5;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap2(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    goto/16 :goto_0
.end method
