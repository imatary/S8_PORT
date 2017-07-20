.class Lcom/android/phone/callsettings/WifiSettingFragment$6;
.super Ljava/lang/Object;
.source "WifiSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/WifiSettingFragment;->showWfcInfoDialogForLatin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

.field final synthetic val$checkBox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment$6;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    iput-object p2, p0, Lcom/android/phone/callsettings/WifiSettingFragment$6;->val$checkBox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$6;->val$checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "wfc_dialog_show_never_again"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
