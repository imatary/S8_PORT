.class Lcom/android/phone/callsettings/WifiSettingFragment$13;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiSettingFragment;->showWfcRogersWifiDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiSettingFragment;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiSettingFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment$13;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$13;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get4(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/preference/SemSwitchPreferenceScreen;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SemSwitchPreferenceScreen;->setChecked(Z)V

    return-void
.end method
