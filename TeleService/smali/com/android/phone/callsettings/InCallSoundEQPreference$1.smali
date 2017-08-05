.class Lcom/android/phone/callsettings/InCallSoundEQPreference$1;
.super Ljava/lang/Object;
.source "InCallSoundEQPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/InCallSoundEQPreference;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/InCallSoundEQPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09003b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->-get0(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    const v4, 0x7f0d065b

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(I)V

    :goto_1
    return v7

    :pswitch_0
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hearing_revision"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hearing_diagnosis"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->-get0(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    const/16 v4, 0x1f7

    invoke-virtual {v3, v4}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->showDialog(I)V

    return v6

    :cond_0
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hearing_revision"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "hearing_direction"

    add-int/lit8 v5, v2, -0x3

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-virtual {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "voicecall_eq_list_value"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/phone/callsettings/InCallSoundEQPreference$1;->this$0:Lcom/android/phone/callsettings/InCallSoundEQPreference;

    invoke-static {v3}, Lcom/android/phone/callsettings/InCallSoundEQPreference;->-get0(Lcom/android/phone/callsettings/InCallSoundEQPreference;)Landroid/preference/ListPreference;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
