.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;
.super Ljava/lang/Object;
.source "SettingRecordFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->initBitrate()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetBitrate:Z
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$900(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "904"

    const-string/jumbo v1, "9046"

    add-int/lit8 v2, p3, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # invokes: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRecordingBitrate(I)V
    invoke-static {v0, p3}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mAfterSetBitrate:Z
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$902(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$9;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/game/gamecast/common/model/SettingData;->getBitrateUI(Landroid/content/Context;)I

    move-result v1

    # invokes: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->setRecordingBitrate(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$1000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;I)V

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
