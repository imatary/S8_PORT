.class Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference$3;
.super Ljava/lang/Object;
.source "PNLWLANOnlyCheckBoxPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;->showChargesNotificationDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;->-wrap1(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference$3;->this$0:Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;

    invoke-static {v0}, Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;->-wrap0(Lcom/android/phone/operator/chn/phonenumberlocator/PNLWLANOnlyCheckBoxPreference;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
