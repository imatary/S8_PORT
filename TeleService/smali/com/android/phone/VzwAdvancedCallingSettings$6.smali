.class Lcom/android/phone/VzwAdvancedCallingSettings$6;
.super Ljava/lang/Object;
.source "VzwAdvancedCallingSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: mAdvCallSwitch clicked"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get0(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get4(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0bcf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: mAdvCallSwitch enabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/VzwAdvancedCallingSettings;->-set0(Lcom/android/phone/VzwAdvancedCallingSettings;I)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap5(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    invoke-static {}, Lcom/android/phone/PhoneUtilsIMS;->isLTEVideoCallMenuShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get3(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_hd_voice_video"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap11(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get4(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0bd0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const-string/jumbo v0, "VzwAdvancedCallingSettings"

    const-string/jumbo v1, "onCreate: mAdvCallSwitch disabled"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0, v2}, Lcom/android/phone/VzwAdvancedCallingSettings;->-set0(Lcom/android/phone/VzwAdvancedCallingSettings;I)I

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap0(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$6;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-wrap10(Lcom/android/phone/VzwAdvancedCallingSettings;)V

    goto :goto_0
.end method
