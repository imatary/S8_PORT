.class Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;
.super Ljava/lang/Object;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;
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

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 22

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_9

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/16 v19, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v19, :pswitch_data_1

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6, v12}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_2
    const/16 v19, 0x1

    :goto_2
    return v19

    :pswitch_0
    const-string v20, "quick_shot"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v19, 0x0

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->getQuickLaunchType()I

    move-result v15

    if-eqz v9, :cond_6

    if-eqz v15, :cond_3

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_4

    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    const v20, 0x7f090028

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    :goto_3
    const-string v19, "PrefSettingFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set Quick launch mode. update setting db for double tab launch : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "double_tab_launch"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    const-string v20, "quick_shot"

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setChecked(Z)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setSummary(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setSummaryDescription(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_5

    check-cast p1, Lcom/sec/android/app/camera/setting/SwitchListPreference;

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SwitchListPreference;->setChecked(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # invokes: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->darkScreenTurnOffPopup()V
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    const v20, 0x7f090029

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    :cond_6
    if-eqz v15, :cond_7

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_8

    :cond_7
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    const v20, 0x7f0901f1

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_3

    :cond_8
    const/4 v13, 0x2

    goto :goto_4

    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/preference/SwitchPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_17

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/Boolean;

    const/16 v19, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_0

    :cond_a
    :goto_5
    packed-switch v19, :pswitch_data_2

    :cond_b
    :goto_6
    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_16

    const-wide/16 v20, 0x1

    :goto_7
    invoke-static/range {v19 .. v21}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    goto/16 :goto_1

    :sswitch_0
    const-string v20, "pref_global_setup_gps_key"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v19, 0x0

    goto :goto_5

    :sswitch_1
    const-string v20, "pref_global_setup_object_trackingaf_key"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v19, 0x1

    goto :goto_5

    :sswitch_2
    const-string v20, "pref_global_camera_quick_shot_using_power_key"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v19, 0x2

    goto :goto_5

    :sswitch_3
    const-string v20, "pref_global_camera_quick_shot"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v19, 0x3

    goto :goto_5

    :sswitch_4
    const-string v20, "pref_global_motion_photo_key"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    const/16 v19, 0x4

    goto :goto_5

    :pswitch_2
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v19

    if-eqz v19, :cond_e

    sget-boolean v19, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_CHINA:Z

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_CHINA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    const/16 v21, 0x7ea

    invoke-static/range {v19 .. v21}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    :cond_c
    :goto_8
    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_11

    const-wide/16 v20, 0x1

    :goto_9
    invoke-static/range {v19 .. v21}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    sget-object v20, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    const/16 v21, 0x7ea

    invoke-static/range {v19 .. v21}, Lcom/sec/android/app/camera/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;I)Z

    move-result v19

    if-nez v19, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->GPS_EULA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_8

    :cond_e
    sget-boolean v19, Lcom/sec/android/app/camera/feature/Feature;->COUNTRY_CHINA:Z

    if-eqz v19, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_CHINA_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    :goto_a
    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    if-eqz v20, :cond_10

    const-wide/16 v20, 0x1

    :goto_b
    invoke-static/range {v19 .. v21}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;J)V

    const/16 v19, 0x0

    goto/16 :goto_2

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    sget-object v20, Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;->LOCATION_TAG_GUIDE_FROM_SETTING:Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;

    invoke-virtual/range {v19 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->showCameraDialog(Lcom/sec/android/app/camera/interfaces/CameraContext$DialogID;)V

    goto :goto_a

    :cond_10
    const-wide/16 v20, 0x0

    goto :goto_b

    :cond_11
    const-wide/16 v20, 0x0

    goto :goto_9

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->checkCurrentPreferenceDependency(Landroid/preference/Preference;)Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mMenuDimController:Lcom/sec/android/app/camera/DimController;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$300(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/DimController;

    move-result-object v20

    const/16 v21, 0x17

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_12

    const/16 v19, 0x1

    :goto_c
    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/DimController;->setButtonDim(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    goto/16 :goto_6

    :cond_12
    const/16 v19, 0x0

    goto :goto_c

    :pswitch_4
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_13

    const/16 v16, 0x3

    :goto_d
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v19

    if-eqz v19, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # invokes: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->darkScreenTurnOffPopup()V
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$100(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)V

    goto/16 :goto_6

    :cond_13
    const/16 v16, 0x2

    goto :goto_d

    :cond_14
    const-string v19, "PrefSettingFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set Quicklaunch mode. update setting db for double tab launch : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "double_tab_launch"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_15

    const/4 v7, 0x1

    :goto_e
    const-string v19, "PrefSettingFragment"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "set Quicklaunch mode. update setting db for double tab launch : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "double_tab_launch"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_6

    :cond_15
    const/4 v7, 0x0

    goto :goto_e

    :pswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/util/MotionPhotoManager;->setMotionPhotoComposerEnable(Landroid/content/Context;Z)V

    goto/16 :goto_6

    :cond_16
    const-wide/16 v20, 0x0

    goto/16 :goto_7

    :cond_17
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/preference/ListPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_19

    move-object/from16 v11, p1

    check-cast v11, Landroid/preference/ListPreference;

    invoke-virtual {v11, v12}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_18

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v19

    aget-object v19, v19, v8

    :goto_f
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_18
    const/16 v19, 0x0

    goto :goto_f

    :cond_19
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v19, -0x1

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v20

    sparse-switch v20, :sswitch_data_1

    :cond_1a
    :goto_10
    packed-switch v19, :pswitch_data_3

    goto/16 :goto_1

    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->setCamcorderResolution(I)Z

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_5
    const-string v20, "camcorder_rear_resolution_spinner"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x0

    goto :goto_10

    :sswitch_6
    const-string v20, "camcorder_front_resolution_spinner"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x1

    goto :goto_10

    :sswitch_7
    const-string v20, "camera_resolution_rear_spinner"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x2

    goto :goto_10

    :sswitch_8
    const-string v20, "camera_resolution_front_spinner"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x3

    goto :goto_10

    :sswitch_9
    const-string v20, "camera_volume_key_spinner"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x4

    goto :goto_10

    :sswitch_a
    const-string v20, "pref_global_setup_storage_key"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x5

    goto/16 :goto_10

    :sswitch_b
    const-string v20, "pref_camera_guideline_key"

    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    const/16 v19, 0x6

    goto/16 :goto_10

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "pref_camera_rear_resolution_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->saveDualCameraRearResolution(Landroid/content/Context;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isBackCamera()Z

    move-result v19

    if-eqz v19, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideStickerCamcorderResolution()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_1c

    invoke-static {v6, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_1c
    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isDualFrontCamera()Z

    move-result v19

    if-eqz v19, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "pref_camera_dual_front_resolution_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/CameraResolution;->getPictureSizeString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    check-cast p1, Lcom/sec/android/app/camera/setting/SpinnerPreference;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/Util;->getPictureSizeStringForTTS(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->setSummaryDescription(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->isStickerMode()Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->isFrontCamera()Z

    move-result v19

    if-eqz v19, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/sec/android/app/camera/setting/CameraSettingsImpl;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$000(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingsImpl;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/CameraSettingsImpl;->overrideStickerCamcorderResolution()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->refreshMenu()V

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mActivity:Lcom/sec/android/app/camera/setting/CameraSettingActivity;
    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$400(Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;)Lcom/sec/android/app/camera/setting/CameraSettingActivity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/sec/android/app/camera/setting/CameraSettingActivity;->getFeatureValueByPreferenceKeyForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/16 v19, 0x4

    move/from16 v0, v19

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/command/CommandIdMap;->getCommandId(II)I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/sec/android/app/camera/command/CmdIdStringMapper;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v6, :cond_1e

    invoke-static {v6, v5}, Lcom/sec/android/app/camera/util/ContextProviderUtils;->getSettingsSet(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-static {v0, v4}, Lcom/sec/android/app/camera/util/Util;->broadcastGeneralEventForLogging(Landroid/content/Context;Landroid/content/ContentValues;)V

    :cond_1e
    const-string v19, "6043"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-static {v0, v14}, Lcom/sec/android/app/camera/util/CameraResolution;->getResolutionSubString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v19, 0x1

    goto/16 :goto_2

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "pref_camera_front_resolution_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "pref_camera_dual_front_resolution_key"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_11

    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment$3;->this$0:Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "pref_global_camera_volume_key_as"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v14}, Lcom/sec/android/app/camera/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    const-string v19, "6094"

    invoke-static {v14}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByVolumeKeyMode(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_b
    # getter for: Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->mEventIdByPreferenceKeyMap:Ljava/util/HashMap;
    invoke-static {}, Lcom/sec/android/app/camera/setting/PreferenceSettingFragment;->access$200()Ljava/util/HashMap;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    invoke-static {v14}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByStorageMode(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_c
    const-string v19, "6093"

    invoke-static {v14}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogIdMap;->getDetailByGridLineMode(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x641d1a0c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x5e3f7978 -> :sswitch_0
        -0x39e57baf -> :sswitch_2
        -0x2783539a -> :sswitch_3
        0x45689889 -> :sswitch_4
        0x634ec67a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x585a6be4 -> :sswitch_5
        -0x526dca12 -> :sswitch_9
        -0x509f306e -> :sswitch_b
        -0x4471dfe9 -> :sswitch_7
        -0xa292076 -> :sswitch_8
        0x4b8b18d9 -> :sswitch_a
        0x53145aa1 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
