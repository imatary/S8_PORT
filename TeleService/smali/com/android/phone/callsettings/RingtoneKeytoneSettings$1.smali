.class Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;
.super Landroid/os/Handler;
.source "RingtoneKeytoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/RingtoneKeytoneSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get1(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get1(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get1(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get2(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get2(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$1;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get2(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->semSetSummaryColorToColorPrimaryDark(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
