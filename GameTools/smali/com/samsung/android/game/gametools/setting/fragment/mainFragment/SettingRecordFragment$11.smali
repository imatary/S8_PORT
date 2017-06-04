.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;
.super Ljava/lang/Object;
.source "SettingRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setProfileImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const v4, 0x7f060280

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v2, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->PERMISSIONS_PROFILE_CHANGE:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->getDeniedPermissions(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v2, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$1;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;)V

    invoke-static {v1, v0, v2, v3}, Lcom/sec/game/gamecast/common/utility/PermissionUtil;->showRequestPermissions(Landroid/app/Activity;[Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    new-instance v2, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1502(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->setTitle(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mIsProfileImageEnable:Z
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1600(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v1

    const v2, 0x7f09000d

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->setItems(I)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;-><init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;)V

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->setResponse(Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->selectProfieDialog:Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v1

    const v2, 0x7f09000e

    invoke-virtual {v1, v2}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->setItems(I)V

    goto :goto_1
.end method
