.class final Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;
.super Ljava/lang/Object;
.source "MobileNetworksDialogManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager;->showRoamingDataSelectionPopupKTT()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$autoUpdateView:Landroid/view/View;

.field final synthetic val$dataUsageView:Landroid/view/View;

.field final synthetic val$positiveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/widget/Button;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$dataUsageView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$autoUpdateView:Landroid/view/View;

    iput-object p3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$positiveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string/jumbo v3, "MobileNetworksDialogManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$dataUsageView:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$autoUpdateView:Landroid/view/View;

    check-cast v3, Landroid/widget/Checkable;

    invoke-interface {v3}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$positiveButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/phone/mobilenetworks/MobileNetworksDialogManager$5;->val$positiveButton:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100179
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
