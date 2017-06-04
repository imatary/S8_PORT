.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$2;
.super Ljava/lang/Object;
.source "SettingGametoolsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->bindListener()V
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment$2;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;->access$400(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingGametoolsFragment;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    return-void
.end method
