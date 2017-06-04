.class Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$6;
.super Ljava/lang/Object;
.source "EventSharingSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->showWifiOnlySettingsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;


# direct methods
.method constructor <init>(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    # getter for: Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->access$200(Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/samsung/gallery/util/EventShareWifiOnlySwitch;->turnOff(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment$6;->this$0:Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;

    const-string/jumbo v2, "setting_wifi_only"

    invoke-virtual {v1, v2}, Lcom/sec/android/gallery3d/settings/EventSharingSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method
