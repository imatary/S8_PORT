.class Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;
.super Landroid/os/AsyncTask;
.source "WifiSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/WifiSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcEnableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mwifiCallingForWfcEnableTask:Landroid/preference/PreferenceScreen;

.field final synthetic this$0:Lcom/android/phone/callsettings/WifiSettingFragment;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/WifiSettingFragment;Landroid/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->mwifiCallingForWfcEnableTask:Landroid/preference/PreferenceScreen;

    iput-object p2, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->mwifiCallingForWfcEnableTask:Landroid/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-wrap0(Lcom/android/phone/callsettings/WifiSettingFragment;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->mwifiCallingForWfcEnableTask:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->mwifiCallingForWfcEnableTask:Landroid/preference/PreferenceScreen;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get0(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0c3a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->mwifiCallingForWfcEnableTask:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->this$0:Lcom/android/phone/callsettings/WifiSettingFragment;

    invoke-static {v0}, Lcom/android/phone/callsettings/WifiSettingFragment;->-get0(Lcom/android/phone/callsettings/WifiSettingFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0c3b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/phone/callsettings/WifiSettingFragment$WfcEnableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
