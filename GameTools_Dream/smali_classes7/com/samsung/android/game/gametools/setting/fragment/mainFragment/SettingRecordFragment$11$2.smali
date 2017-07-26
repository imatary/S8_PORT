.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;
.super Ljava/lang/Object;
.source "SettingRecordFragment.java"

# interfaces
.implements Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment$DialogResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemClicked(Landroid/app/DialogFragment;I)V
    .locals 9

    const/4 v3, 0x0

    const v6, 0x7f020042

    const/16 v2, 0x258

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    if-eqz v8, :cond_0

    const-string/jumbo v0, "904"

    const-string/jumbo v1, "9041"

    invoke-static {v0, v1, v8}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setImage(Landroid/widget/ImageView;IIIIIZ)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getImageFromGallery()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->dismiss()V

    const-string/jumbo v8, "1"

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v1

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setImage(Landroid/widget/ImageView;IIIIIZ)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getImageFromCamera()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->dismiss()V

    const-string/jumbo v8, "2"

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1802(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0, v7}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1602(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1600(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setUserProfileImageEnable(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v1, v1, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/game/gamecast/common/utility/CommonRoundIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1902(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1500(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;->dismiss()V

    const-string/jumbo v8, "3"

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public negativePressed(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method

.method public neutralPressed(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method

.method public onCancel(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/app/DialogFragment;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11$2;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$11;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1502(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;)Lcom/sec/game/gamecast/common/ui/DialogFragment/CommonDialogFragment;

    return-void
.end method

.method public positivePressed(Landroid/app/DialogFragment;)V
    .locals 0

    return-void
.end method
