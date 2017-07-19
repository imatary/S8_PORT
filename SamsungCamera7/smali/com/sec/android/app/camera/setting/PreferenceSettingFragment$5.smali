.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->darkScreenTurnOffPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_HOME_KEY:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/sec/android/app/camera/feature/Feature;->CAMERA_QUICK_LAUNCH_USING_POWER_KEY:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    const-string v2, "pref_global_camera_quick_shot_using_power_key"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$5;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-static {v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
