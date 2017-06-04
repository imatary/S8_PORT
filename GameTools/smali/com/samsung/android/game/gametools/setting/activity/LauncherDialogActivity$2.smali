.class Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;
.super Ljava/lang/Object;
.source "LauncherDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->updateLauncherDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->mLauncherOffDialogBuilder:Landroid/app/AlertDialog$Builder;
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->access$002(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->setResult(I)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$2;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->finish()V

    return-void
.end method
