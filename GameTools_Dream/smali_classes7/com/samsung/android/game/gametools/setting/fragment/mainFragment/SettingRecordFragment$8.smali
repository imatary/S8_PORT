.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;
.super Ljava/lang/Object;
.source "SettingRecordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->initResolution()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/game/gamecast/common/model/SettingUtil;->getDeviceBasedResolutionList(Z)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p3

    :goto_0
    invoke-static {v0, v2}, Lcom/sec/game/gamecast/common/model/SettingData;->setResolution(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-static {v3, v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$800(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$702(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z

    const/4 v1, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_1
    if-eqz v1, :cond_0

    const-string/jumbo v3, "904"

    const-string/jumbo v4, "9045"

    invoke-static {v3, v4, v1}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_0
    const-string/jumbo v1, "1"

    goto :goto_1

    :pswitch_1
    const-string/jumbo v1, "2"

    goto :goto_1

    :pswitch_2
    const-string/jumbo v1, "3"

    goto :goto_1

    :pswitch_3
    const-string/jumbo v1, "4"

    goto :goto_1

    :pswitch_4
    const-string/jumbo v1, "5"

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
