.class Lcom/android/phone/callsettings/VideoSettingFragment$16;
.super Ljava/lang/Object;
.source "VideoSettingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/VideoSettingFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

.field final synthetic val$dialogCheckbox:Landroid/widget/Checkable;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/VideoSettingFragment;Landroid/widget/Checkable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/VideoSettingFragment$16;->this$0:Lcom/android/phone/callsettings/VideoSettingFragment;

    iput-object p2, p0, Lcom/android/phone/callsettings/VideoSettingFragment$16;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$16;->val$dialogCheckbox:Landroid/widget/Checkable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/callsettings/VideoSettingFragment$16;->val$dialogCheckbox:Landroid/widget/Checkable;

    invoke-interface {v0}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "volteVTSettingShowNeverAgain"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TeleServiceSystemDB;->setSettingDB(Ljava/lang/String;I)V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
