.class Lcom/android/phone/emergencydialer/EmergencyContactItem$1;
.super Ljava/lang/Object;
.source "EmergencyContactItem.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$1;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$1;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0a0083

    :goto_0
    iget-object v1, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$1;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-static {v1}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->-get2(Lcom/android/phone/emergencydialer/EmergencyContactItem;)Landroid/widget/CheckBox;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/emergencydialer/EmergencyContactItem$1;->this$0:Lcom/android/phone/emergencydialer/EmergencyContactItem;

    invoke-virtual {v2}, Lcom/android/phone/emergencydialer/EmergencyContactItem;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const v0, 0x7f0a0084

    goto :goto_0
.end method
