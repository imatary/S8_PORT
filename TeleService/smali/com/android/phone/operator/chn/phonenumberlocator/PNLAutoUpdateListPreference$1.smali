.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;
.super Ljava/lang/Object;
.source "PNLAutoUpdateListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const-string/jumbo v0, "support_charges_notification_in_pnl"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-set1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->onClick(Landroid/content/DialogInterface;I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0, p1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-set0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;Landroid/content/DialogInterface;)Landroid/content/DialogInterface;

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0, p2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-set2(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$1;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    goto :goto_0
.end method
