.class Lcom/android/phone/callsettings/WifiCallActivity$9;
.super Ljava/lang/Object;
.source "WifiCallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiCallActivity;->showWfcOPLDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiCallActivity$9;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    const-string/jumbo v0, "wfc_do_not_show_again_opl_dialog"

    invoke-static {v0, v2}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiCallActivity$9;->this$0:Lcom/android/phone/callsettings/WifiCallActivity;

    invoke-virtual {v0}, Lcom/android/phone/callsettings/WifiCallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi_call_enable"

    invoke-static {v0, v1, v2}, Lcom/android/phone/VoWifiSettingsDataBaseManager;->setInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
