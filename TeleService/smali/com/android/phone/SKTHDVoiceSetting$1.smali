.class Lcom/android/phone/SKTHDVoiceSetting$1;
.super Ljava/lang/Object;
.source "SKTHDVoiceSetting.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SKTHDVoiceSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SKTHDVoiceSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/SKTHDVoiceSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/SKTHDVoiceSetting$1;->this$0:Lcom/android/phone/SKTHDVoiceSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/phone/SKTHDVoiceSetting$1;->this$0:Lcom/android/phone/SKTHDVoiceSetting;

    iget-object v1, p0, Lcom/android/phone/SKTHDVoiceSetting$1;->this$0:Lcom/android/phone/SKTHDVoiceSetting;

    invoke-virtual {v1}, Lcom/android/phone/SKTHDVoiceSetting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/phone/SKTHDVoiceSetting;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0
.end method
