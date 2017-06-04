.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1$1;
.super Ljava/lang/Object;
.source "SettingHelpFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->mMyQuestionLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->clearFocus()V

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1$1;->this$1:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;

    iget-object v0, v0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingHelpFragment;->goMyQuestion()V

    return-void
.end method
