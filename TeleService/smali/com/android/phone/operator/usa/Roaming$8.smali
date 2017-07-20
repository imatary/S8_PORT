.class Lcom/android/phone/operator/usa/Roaming$8;
.super Ljava/lang/Object;
.source "Roaming.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/usa/Roaming;->internationalCdmaDataRoamingSettingTreeClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/usa/Roaming;

.field final synthetic val$internationalCdmaDataRoamingGuardValue:Z


# direct methods
.method constructor <init>(Lcom/android/phone/operator/usa/Roaming;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    iput-boolean p2, p0, Lcom/android/phone/operator/usa/Roaming$8;->val$internationalCdmaDataRoamingGuardValue:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const/4 v1, 0x4

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const/16 v1, 0x8

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const/4 v1, 0x3

    invoke-static {v0, v1, v2}, Lcom/android/phone/operator/usa/Roaming;->-wrap3(Lcom/android/phone/operator/usa/Roaming;II)V

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    invoke-static {v0}, Lcom/android/phone/operator/usa/Roaming;->-wrap2(Lcom/android/phone/operator/usa/Roaming;)V

    invoke-static {}, Lcom/android/phone/operator/usa/TelephonyExtension;->isInternationalRoamingInService()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->val$internationalCdmaDataRoamingGuardValue:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/usa/Roaming$8;->this$0:Lcom/android/phone/operator/usa/Roaming;

    const-string/jumbo v1, "international_cdma_data_roaming_setting_extra"

    invoke-static {v0, v1}, Lcom/android/phone/operator/usa/Roaming;->-wrap1(Lcom/android/phone/operator/usa/Roaming;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
