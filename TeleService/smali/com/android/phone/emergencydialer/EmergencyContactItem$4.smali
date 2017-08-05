.class Lcom/android/phone/emergencydialer/EmergencyContactItem$4;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/emergencydialer/EmergencyContactItem;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;


# direct methods
.method constructor <init>(Lcom/android/phone/emergencydialer/EmergencyContactItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get6(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    move-result-object v0

    sget-object v1, Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;->NORMAL:Lcom/android/phone/emergencydialer/EmergencyContactItemContainer$ScreenType;

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "emergency_contact_sync_contact"

    invoke-static {v0}, Lcom/android/phone/TeleServiceFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get0(Lcom/android/phone/emergencydialer/EmergencyContactItem;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get1(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Lcom/android/phone/emergencydialer/EmergencyContactItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->performLongClick()Z

    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get5(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    const-string/jumbo v0, "EmergencyContactItem"

    const-string/jumbo v1, "delegate long touch event from ripple view to EmergencyContactItem"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v0}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get5(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$4;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
