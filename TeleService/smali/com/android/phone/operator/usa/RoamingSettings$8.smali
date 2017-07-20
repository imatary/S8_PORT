.class Lcom/android/phone/operator/usa/RoamingSettings$8;
.super Ljava/lang/Object;
.source "RoamingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/RoamingSettings;->internationalCdmaDataRoamingSettingTreeClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/RoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/RoamingSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/RoamingSettings$8;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$8;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/RoamingSettings;->-wrap3(Lcom/android/phone/operator/usa/RoamingSettings;II)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/RoamingSettings$8;->this$0:Lcom/android/phone/operator/usa/RoamingSettings;

    invoke-static {v0}, Lcom/android/phone/operator/usa/RoamingSettings;->-get1(Lcom/android/phone/operator/usa/RoamingSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    :cond_0
    return-void
.end method
