.class Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict$1;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict$1;->this$1:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string/jumbo v3, "UDS2"

    invoke-static {v2, v3}, Lcom/android/settings/datausage/DataUsageSummary;->-wrap0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "com.samsung.android.sm.SHOW_UDS_ACTIVITY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict$1;->this$1:Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;

    invoke-virtual {v2}, Lcom/android/settings/datausage/DataUsageSummary$ConfirmUDSRestrict;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.samsung.android.sm"

    const-string/jumbo v3, "com.samsung.android.sm.ui.datausage.DatausageActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0
.end method
