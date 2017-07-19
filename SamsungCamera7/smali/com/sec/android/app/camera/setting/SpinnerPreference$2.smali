.class Lcom/sec/android/app/camera/setting/SpinnerPreference$2;
.super Ljava/lang/Object;
.source "SpinnerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/setting/SpinnerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/setting/SpinnerPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$700(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$800(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/SpinnerPreference$2;->this$0:Lcom/sec/android/app/camera/setting/SpinnerPreference;

    invoke-static {v0}, Lcom/sec/android/app/camera/setting/SpinnerPreference;->access$800(Lcom/sec/android/app/camera/setting/SpinnerPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return v2

    :sswitch_0
    const-string v4, "camcorder_rear_resolution_spinner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "camcorder_front_resolution_spinner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "camera_resolution_rear_spinner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string v4, "camera_resolution_front_spinner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v4, "camera_volume_key_spinner"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v4, "pref_camera_guideline_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :pswitch_0
    const-string v0, "6002"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "6007"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v0, "6001"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_3
    const-string v0, "6006"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    const-string v0, "6020"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_5
    const-string v0, "6013"

    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x585a6be4 -> :sswitch_0
        -0x526dca12 -> :sswitch_4
        -0x509f306e -> :sswitch_5
        -0x4471dfe9 -> :sswitch_2
        -0xa292076 -> :sswitch_3
        0x53145aa1 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
