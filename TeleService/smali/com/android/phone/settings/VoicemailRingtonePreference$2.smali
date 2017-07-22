.class Lcom/android/phone/settings/VoicemailRingtonePreference$2;
.super Ljava/lang/Object;
.source "VoicemailRingtonePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/VoicemailRingtonePreference;->init(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

.field final synthetic val$preference:Landroid/preference/Preference;

.field final synthetic val$preferenceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailRingtonePreference;Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

    iput-object p2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preference:Landroid/preference/Preference;

    iput-object p3, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preferenceKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->this$0:Lcom/android/phone/settings/VoicemailRingtonePreference;

    invoke-static {v1}, Lcom/android/phone/settings/VoicemailRingtonePreference;->-get0(Lcom/android/phone/settings/VoicemailRingtonePreference;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/settings/VoicemailRingtonePreference$2;->val$preferenceKey:Ljava/lang/String;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v0, v1, v3, v2, v4}, Lcom/android/phone/common/util/SettingsUtil;->updateRingtoneName(Landroid/content/Context;Landroid/os/Handler;ILjava/lang/String;I)V

    return-void
.end method
