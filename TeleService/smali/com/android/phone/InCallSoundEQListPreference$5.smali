.class Lcom/android/phone/InCallSoundEQListPreference$5;
.super Ljava/lang/Object;
.source "InCallSoundEQListPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallSoundEQListPreference;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallSoundEQListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallSoundEQListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isPossibleEnableMySound()Z

    move-result v1

    if-nez v1, :cond_0

    return v6

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1}, Lcom/android/phone/InCallSoundEQListPreference;->-get0(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/phone/utils/AppLogging$AppLoggingAction;->STATUS_SINGLE:Lcom/android/phone/utils/AppLogging$AppLoggingAction;

    const-string/jumbo v3, "PERS"

    iget-object v4, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v4}, Lcom/android/phone/InCallSoundEQListPreference;->-get0(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090035

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    invoke-static {v1, v2, v3, v4}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Lcom/android/phone/utils/AppLogging$AppLoggingAction;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    return v6

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1}, Lcom/android/phone/InCallSoundEQListPreference;->-wrap0(Lcom/android/phone/InCallSoundEQListPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1}, Lcom/android/phone/InCallSoundEQListPreference;->-get0(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hearing_diagnosis"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1, v0}, Lcom/android/phone/InCallSoundEQListPreference;->-wrap3(Lcom/android/phone/InCallSoundEQListPreference;I)V

    :goto_0
    return v7

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1, v0}, Lcom/android/phone/InCallSoundEQListPreference;->-wrap1(Lcom/android/phone/InCallSoundEQListPreference;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1}, Lcom/android/phone/InCallSoundEQListPreference;->-get0(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hearing_revision"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1}, Lcom/android/phone/InCallSoundEQListPreference;->-get0(Lcom/android/phone/InCallSoundEQListPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "voicecall_eq_list_value"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/phone/InCallSoundEQListPreference$5;->this$0:Lcom/android/phone/InCallSoundEQListPreference;

    invoke-static {v1}, Lcom/android/phone/InCallSoundEQListPreference;->-wrap0(Lcom/android/phone/InCallSoundEQListPreference;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v7, v7}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    :cond_2
    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
