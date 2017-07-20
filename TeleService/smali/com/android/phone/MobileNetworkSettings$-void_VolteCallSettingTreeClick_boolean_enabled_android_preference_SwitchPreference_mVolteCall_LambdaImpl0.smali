.class final synthetic Lcom/android/phone/MobileNetworkSettings$-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0;
.super Ljava/lang/Object;
.source "MobileNetworkSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1010
    name = "-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0"
.end annotation


# instance fields
.field private synthetic val$mVolteCall:Landroid/preference/SwitchPreference;


# direct methods
.method public synthetic constructor <init>(Landroid/preference/SwitchPreference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0;->val$mVolteCall:Landroid/preference/SwitchPreference;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/MobileNetworkSettings$-void_VolteCallSettingTreeClick_boolean_enabled_android_preference_SwitchPreference_mVolteCall_LambdaImpl0;->val$mVolteCall:Landroid/preference/SwitchPreference;

    invoke-static {v0, p1, p2}, Lcom/android/phone/MobileNetworkSettings;->-com_android_phone_MobileNetworkSettings_lambda$1(Landroid/preference/SwitchPreference;Landroid/content/DialogInterface;I)V

    return-void
.end method
