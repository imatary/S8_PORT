.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$5;
.super Ljava/lang/Object;
.source "SettingRecordFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->bindListener()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->onClickGameAudio()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$5;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mGameAudioRadioButton:Landroid/widget/RadioButton;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$400(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/RadioButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->sendAccessibilityEvent(I)V

    const-string/jumbo v0, "904"

    const-string/jumbo v1, "9044"

    const-string/jumbo v2, "2"

    invoke-static {v0, v1, v2}, Lcom/sec/game/gamecast/common/utility/CommonUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
