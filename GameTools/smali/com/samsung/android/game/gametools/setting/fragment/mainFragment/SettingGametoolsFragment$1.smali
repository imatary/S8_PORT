.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;
.super Ljava/lang/Object;
.source "SettingGametoolsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    invoke-virtual {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->getmActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$100(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->imageSeq:Z
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f02003c

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->imageSeq:Z
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$000(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    # setter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->imageSeq:Z
    invoke-static {v1, v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$002(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$300(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$1;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mImageChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$200(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f02003d

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
