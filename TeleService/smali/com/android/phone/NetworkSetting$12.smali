.class Lcom/android/phone/NetworkSetting$12;
.super Ljava/lang/Object;
.source "NetworkSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/NetworkSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreferenceChange(). preferenece: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", value: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-get22(Lcom/android/phone/NetworkSetting;)Landroid/preference/SwitchPreference;

    move-result-object v1

    if-ne p1, v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/mobilenetworks/MobileNetworkUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v2, "auto off / start search  "

    invoke-static {v1, v2, v4}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->SEARCH:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->-wrap0(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "VALUE_OF_CURRENT_SELECTION_MODE"

    const-string/jumbo v3, "1"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-get22(Lcom/android/phone/NetworkSetting;)Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return v4

    :cond_2
    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    const-string/jumbo v2, "auto on  "

    invoke-static {v1, v2, v4}, Lcom/android/phone/NetworkSetting;->-wrap9(Lcom/android/phone/NetworkSetting;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    invoke-static {v1}, Lcom/android/phone/NetworkSetting;->-wrap1(Lcom/android/phone/NetworkSetting;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    sget-object v2, Lcom/android/phone/NetworkSetting$userSelectionType;->AUTOSELECT:Lcom/android/phone/NetworkSetting$userSelectionType;

    invoke-static {v1, v2}, Lcom/android/phone/NetworkSetting;->-wrap0(Lcom/android/phone/NetworkSetting;Lcom/android/phone/NetworkSetting$userSelectionType;)V

    iget-object v1, p0, Lcom/android/phone/NetworkSetting$12;->this$0:Lcom/android/phone/NetworkSetting;

    iget-object v1, v1, Lcom/android/phone/NetworkSetting;->mContResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "VALUE_OF_CURRENT_SELECTION_MODE"

    const-string/jumbo v3, "0"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
