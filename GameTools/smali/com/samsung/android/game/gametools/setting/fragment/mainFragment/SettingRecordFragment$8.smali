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

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetResolution:Z
    invoke-static {v2}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$700(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/game/gamecast/common/model/SettingUtil;->getDeviceBasedResolutionList(Z)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p3

    :goto_0
    invoke-static {v0, v1}, Lcom/sec/game/gamecast/common/model/SettingData;->setResolution(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # invokes: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRecordingResolution(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$800(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$8;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    const/4 v3, 0x1

    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetResolution:Z
    invoke-static {v2, v3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$702(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z

    const-string/jumbo v2, "904"

    const-string/jumbo v3, "9045"

    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingUtil;->get(Landroid/content/Context;)Lcom/sec/game/gamecast/common/model/SettingUtil;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/sec/game/gamecast/common/model/SettingUtil;->getResolutionPosBasedOnPresetList(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {v0}, Lcom/sec/game/gamecast/common/model/SettingData;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
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
