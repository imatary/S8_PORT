.class Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;
.super Ljava/lang/Object;
.source "RingtoneKeytoneSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get1(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get1(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-wrap0(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V

    :cond_0
    const-string/jumbo v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v0}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get2(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    iget-object v1, p0, Lcom/android/phone/callsettings/RingtoneKeytoneSettings$2;->this$0:Lcom/android/phone/callsettings/RingtoneKeytoneSettings;

    invoke-static {v1}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-get2(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;)Landroid/preference/Preference;

    move-result-object v1

    const/16 v2, 0x80

    const/4 v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lcom/android/phone/callsettings/RingtoneKeytoneSettings;->-wrap0(Lcom/android/phone/callsettings/RingtoneKeytoneSettings;ILandroid/preference/Preference;I)V

    :cond_1
    return-void
.end method
