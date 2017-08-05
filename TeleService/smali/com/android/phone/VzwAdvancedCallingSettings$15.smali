.class Lcom/android/phone/VzwAdvancedCallingSettings$15;
.super Ljava/lang/Object;
.source "VzwAdvancedCallingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/VzwAdvancedCallingSettings;->displayDontRemindMeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

.field final synthetic val$checkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/VzwAdvancedCallingSettings;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/VzwAdvancedCallingSettings$15;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    iput-object p2, p0, Lcom/android/phone/VzwAdvancedCallingSettings$15;->val$checkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$15;->val$checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$15;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get4(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_lvc_dialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/VzwAdvancedCallingSettings$15;->this$0:Lcom/android/phone/VzwAdvancedCallingSettings;

    invoke-static {v0}, Lcom/android/phone/VzwAdvancedCallingSettings;->-get4(Lcom/android/phone/VzwAdvancedCallingSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "vzw_adv_call_sp_lvc_dialog"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method
