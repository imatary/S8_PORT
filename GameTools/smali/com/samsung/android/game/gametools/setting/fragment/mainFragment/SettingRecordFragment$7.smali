.class Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$7;
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

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$7;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment$7;->this$0:Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->mBitrateSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;->access$600(Lcom/samsung/android/game/gametools/setting/fragment/mainFragment/SettingRecordFragment;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    return-void
.end method
