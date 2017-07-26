.class Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;
.super Ljava/lang/Object;
.source "GsmUmtsAdditionalCallOptions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/GsmUmtsAdditionalCallOptions;->createDialogDropDownTty(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

.field final synthetic val$check:Landroid/widget/CheckBox;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$newTtyValue:I


# direct methods
.method constructor <init>(Lcom/android/phone/GsmUmtsAdditionalCallOptions;Landroid/widget/CheckBox;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iput-object p2, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$check:Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$newTtyValue:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$check:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->neverShowTtyTipsAgain(Landroid/content/Context;)V

    :cond_0
    const-string/jumbo v0, "preferred_tty_mode"

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$newTtyValue:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/android/phone/utils/SALogging;->sendSASettingLog(Ljava/lang/String;F)V

    const-string/jumbo v0, "preferred_tty_mode"

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$newTtyValue:I

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSecureSettingDB(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$newTtyValue:I

    invoke-static {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->-wrap11(Lcom/android/phone/GsmUmtsAdditionalCallOptions;I)V

    iget-object v0, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->this$0:Lcom/android/phone/GsmUmtsAdditionalCallOptions;

    iget v1, p0, Lcom/android/phone/GsmUmtsAdditionalCallOptions$24;->val$newTtyValue:I

    invoke-virtual {v0, v1}, Lcom/android/phone/GsmUmtsAdditionalCallOptions;->sendIntent(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
