.class Lcom/android/keyguard/sec/SecPopupManager$5;
.super Ljava/lang/Object;
.source "Unknown"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

.field final synthetic val$checkBoxId:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$prefKey:Ljava/lang/String;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;Landroid/view/View;ILandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    iput-object p2, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$v:Landroid/view/View;

    iput p3, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$checkBoxId:I

    iput-object p4, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$context:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$prefKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    if-nez v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$v:Landroid/view/View;

    iget v1, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$checkBoxId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    invoke-static {v4}, Lcom/android/keyguard/sec/SecPopupManager;->access$302(Landroid/app/Dialog;)Landroid/app/Dialog;

    const-string/jumbo v0, "SecPopupManager"

    const-string/jumbo v1, "help overlay dialog set to null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$callback:Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;->onDismiss()V

    goto :goto_0

    :cond_2
    instance-of v1, v0, Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    const-string/jumbo v1, "SecPopupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doNowShowAgain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/sec/SecPopupManager$5;->val$prefKey:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2
.end method
