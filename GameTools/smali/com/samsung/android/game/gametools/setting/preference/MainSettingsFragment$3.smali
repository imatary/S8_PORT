.class Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;
.super Ljava/lang/Object;
.source "MainSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    iget-object v3, v3, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomePreference:Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/setting/preference/SettingsSwitchPreference;->getSwitch()Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX2:I
    invoke-static {v3, v4}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$002(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;I)I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX2:I
    invoke-static {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$000(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX2:I
    invoke-static {v3, v5}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$002(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;I)I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX1:I
    invoke-static {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$100(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX2:I
    invoke-static {v4}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$000(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)I

    move-result v4

    sub-int v0, v3, v4

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    if-gez v0, :cond_1

    mul-int/lit8 v0, v0, -0x1

    :cond_1
    if-le v0, v2, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGuardDuplicateTouchEvent:Z
    invoke-static {v3, v6}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$202(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;Z)Z

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {v3, v6}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->onClickGameHomeSwitch(Z)V

    :cond_2
    :goto_1
    return v5

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX2:I
    invoke-static {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$000(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v4

    if-le v3, v4, :cond_0

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {v1}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v4

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX2:I
    invoke-static {v3, v4}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$002(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;I)I

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX1:I
    invoke-static {v3, v4}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$102(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;I)I

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX1:I
    invoke-static {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$100(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)I

    move-result v3

    if-gez v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX1:I
    invoke-static {v3, v5}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$102(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;I)I

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    # getter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX1:I
    invoke-static {v3}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$100(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;)I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment$3;->this$0:Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;

    invoke-virtual {v1}, Landroid/widget/Switch;->getMeasuredWidth()I

    move-result v4

    # setter for: Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->mGameHomeSwitchX1:I
    invoke-static {v3, v4}, Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;->access$102(Lcom/samsung/android/game/gametools/setting/preference/MainSettingsFragment;I)I

    goto :goto_1
.end method
