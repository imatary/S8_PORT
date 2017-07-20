.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;
.super Ljava/lang/Object;
.source "PNLAutoUpdateListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->showChargesNotificationDialog()V
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

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-wrap2(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-get1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-set1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;I)I

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    iget-object v1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v1}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->onClick(Landroid/content/DialogInterface;I)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference$4;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;->-get0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLAutoUpdateListPreference;)Landroid/content/DialogInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
