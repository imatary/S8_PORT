.class Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;
.super Ljava/lang/Object;
.source "LauncherDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->access$002(Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;Landroid/app/AlertDialog$Builder;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->setResult(I)V

    const-string/jumbo v0, "LauncherDialogActivity"

    const-string/jumbo v1, "Cancel: setResult(RESULT_CANCELED)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity$3;->this$0:Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/activity/LauncherDialogActivity;->finish()V

    return-void
.end method
